#include <fcntl.h> 
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/mman.h> 
#include <arpa/inet.h>
#include <sys/socket.h>

#define _BSD_SOURCE
#define RADIO_TUNER_FAKE_ADC_PINC_OFFSET 0
#define RADIO_TUNER_TUNER_PINC_OFFSET 1
#define RADIO_TUNER_CONTROL_REG_OFFSET 2
#define RADIO_TUNER_TIMER_REG_OFFSET 3
#define RADIO_PERIPH_ADDRESS 0x43c00000

#define FIFO_DATA_O_OFFSET 0
#define FIFO_DATA_COUNT_OFFSET 1
#define FIFO_PERIPH_ADDRESS 0x43c10000


void* internetStreamThread(void* vargp)
{
	while(1){

	}
}

// the below code uses a device called /dev/mem to get a pointer to a physical
// address.  We will use this pointer to read/write the custom peripheral
volatile unsigned int * get_a_pointer(unsigned int phys_addr)
{
	int mem_fd = open("/dev/mem", O_RDWR | O_SYNC); 
	void *map_base = mmap(0, 4096, PROT_READ | PROT_WRITE, MAP_SHARED, mem_fd, phys_addr); 
	volatile unsigned int *radio_base = (volatile unsigned int *)map_base; 
	return (radio_base);
}


void radioTuner_tuneRadio(volatile unsigned int *ptrToRadio, float tune_frequency)
{
	float pinc = (-1.0*tune_frequency)*(float)(1<<27)/125.0e6;
	*(ptrToRadio+RADIO_TUNER_TUNER_PINC_OFFSET)=(int)pinc;
}

void radioTuner_setAdcFreq(volatile unsigned int* ptrToRadio, float freq)
{
	float pinc = freq*(float)(1<<27)/125.0e6;
	*(ptrToRadio+RADIO_TUNER_FAKE_ADC_PINC_OFFSET) = (int)pinc;
}

void radioTuner_toggleDDSReset(volatile unsigned int* ptrToRadio, int resetState)
{
	*(ptrToRadio + RADIO_TUNER_CONTROL_REG_OFFSET) = !resetState;
	printf("control register new state: %d\n\r", resetState);
}

void play_tune(volatile unsigned int *ptrToRadio, float base_frequency)
{
	int i;
	float freqs[16] = {1760.0,1567.98,1396.91, 1318.51, 1174.66, 1318.51, 1396.91, 1567.98, 1760.0, 0, 1760.0, 0, 1760.0, 1975.53, 2093.0,0};
	float durations[16] = {1,1,1,1,1,1,1,1,.5,0.0001,.5,0.0001,1,1,2,0.0001};	
	for (i=0;i<16;i++)
	{
		radioTuner_setAdcFreq(ptrToRadio,freqs[i]+base_frequency);
		usleep((int)(durations[i]*500000));
	}
}


void print_benchmark(volatile unsigned int *periph_base)
{
    // the below code does a little benchmark, reading from the peripheral a bunch 
    // of times, and seeing how many clocks it takes.  You can use this information
    // to get an idea of how fast you can generally read from an axi-lite slave device
    unsigned int start_time;
    unsigned int stop_time;
    start_time = *(periph_base+RADIO_TUNER_TIMER_REG_OFFSET); //read from our timer register 
    for (int i=0;i<2048;i++)
        stop_time = *(periph_base+RADIO_TUNER_TIMER_REG_OFFSET);
    printf("Elapsed time in clocks = %u\n",stop_time-start_time); // read again from our free running counter 
	//2048 [Memory reads] * 4e-6 [MYbytes / memory read] / ((stop_time[clock cycles]-start_time[clock cycles] * 8e-9 [seconds / clock cycle])
	float dataTransferred = (2048 * 0.000004);
    float throughput = dataTransferred / ((stop_time - start_time) * 0.000000008);
    printf("Estimated Transfer throughput = %f Mbytes/sec\n\r",throughput);
}

void readFIFO(volatile unsigned int* periph_base)
{

}

void printMenu(){
    //printf("\r\npress 'u' and then select enter to increase frequency by 100Hz\n\r");
    //printf("press 'U' and then select enter to increase frequency by 1000Hz\n\r");
    //printf("press 'd' and then select enter to decrease frequency by 100Hz\n\r");
    //printf("press 'D' and then select enter to decrease frequency by 1000Hz\n\r");
    printf("\r\n\nEnter 'f' and then select enter key to enter frequency (Resolution of 1Hz)\n\r");
    printf("Enter 'T' and then select enter key to set the tuning frequency of the radio (Resolution of 1Hz)\n\r");
	printf("Enter 'm' and then select enter key to play fight song\n\r");
	printf("Enter 'b' and then select enter key to see the estimated transfer throughput\n\r");	
	printf("Enter 'i' and then select enter key to change the IP and/or start/stop data transmission from FIFO\n\r");	
	printf("Enter 'g' and then select enter key to test the FIFO peripheral\n\r");
    printf("Enter 'r' and then select enter key to toggle DDS reset\n\n\r");
}

int freq_to_phaseWidth(int freq){
	long long fclk = 125000000; // 125MHz
	long long phaseWidth = 134217728; // 2^27
	long long phaseIncrement;
	phaseIncrement = (freq * phaseWidth)/fclk;
	return phaseIncrement;
}

int main()
{

	// first, get a pointer to the peripheral base address using /dev/mem and the function mmap
    volatile unsigned int *my_periph = get_a_pointer(RADIO_PERIPH_ADDRESS);
	volatile unsigned int *my_periph_FIFO = get_a_pointer(FIFO_PERIPH_ADDRESS);
	// Set up / configure multithreading 
	pthread_t thread_id;
	pthread_create(&thread_id, NULL, internetStreamThread, NULL);
	
	char userSelection; 
	char extraRandom; 
	int frequency;
	int resetState = 1; 
	int dummyVar; 
	int dummyVar2; 
	
	unsigned int start_time;
	unsigned int stop_time;
	// Create a socket that returns a socket descriptor.This is used to refer to the socket later on in the code :
	int socket_desc = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);

	int dataSend; // integer to hold amount of datagrams to send 
	char userIP[20]; // character array to hold the user-input IP address 
	char *userIPpoint = userIP;
	
	unsigned int datagramPacket[255];
	unsigned short myCounter; 
	short int portNum = 25344; 
	unsigned char datagramBuffer[1026]; 
	int counterFIFO; // will hold value in FIFO counter register, this is how many values the FIFO is currently holding 
	int k = 0; 
	int sizeDgram = sizeof(datagramPacket);
	// Populate array with values 
	//for (int y = 0; y < 258; y++) {
	//	datagramPacket[y] = 123456789;
	//}
	myCounter = 0; 
    printf("\r\n\r\n\r\nLab 9 Alex Heigl - Custom Peripheral Demonstration\n\n\r");
	printMenu();
	for (;;) {
		scanf(" %c", &userSelection);
		if (userSelection == 'u') {
			frequency = frequency + 100;	
			radioTuner_setAdcFreq(my_periph, frequency);
			printf("\n\nFrequency Increased 100Hz\n");
			printf("\n\rNew Output Frequency: %dHz \r\nNew Phase Increment (Decimal): %d\n\n", frequency, freq_to_phaseWidth(frequency));
			printMenu();
		}
		else if (userSelection == 'U') {
			frequency = frequency + 1000;
			radioTuner_setAdcFreq(my_periph, frequency);
			printf("\n\nFrequency Increased 1000Hz\n");
			printf("\n\rNew Output Frequency: %dHz \r\nNew Phase Increment (Decimal): %d\n\n", frequency, freq_to_phaseWidth(frequency));
			printMenu();
		}
		else if (userSelection == 'd') {
			frequency = frequency - 100;
			if (frequency < 0) {
				frequency = 0;
			}
			radioTuner_setAdcFreq(my_periph, frequency);
			printf("\n\nFrequency Decreased 100Hz\n");
			printf("\n\rNew Output Frequency: %dHz \r\nNew Phase Increment (Decimal): %d\n\n", frequency, freq_to_phaseWidth(frequency));
			printMenu();
		}
		else if (userSelection == 'D') {
			frequency = frequency - 1000;
			if (frequency < 0) {
				frequency = 0;
			}
			radioTuner_setAdcFreq(my_periph, frequency);
			printf("\n\nFrequency Decreased 1000Hz\n");
			printf("\n\rNew Output Frequency: %dHz \r\nNew Phase Increment (Decimal): %d\n\n", frequency, freq_to_phaseWidth(frequency));
			printMenu();
		}
		else if (userSelection == 'f' || userSelection == 'F') {
			printf("\nPlease enter desired frequency now, press enter when finished\n\n\r");
			scanf(" %d", &frequency);
			radioTuner_setAdcFreq(my_periph, frequency);
			printf("\n\n\rNew Output Frequency: %dHz \r\nNew Phase Increment (Decimal): %d\n\n\r", frequency, freq_to_phaseWidth(frequency));
			printMenu(); 
		}
		else if (userSelection == 'T') {
			printf("\nPlease enter desired tuning frequency now, press enter when finished\n\n\r");
			scanf(" %d", &frequency);
			if (frequency > 60000000) {
				frequency = 60000000;
				printf("\n\nTuning frequency entered is out of range, setting to 60MHz\n\r");
			}
			else if (frequency < 1000000) {
				frequency = 1000000;
				printf("\n\nTuning frequency entered is out of range, setting to 1MHz\n\r");
			}
			radioTuner_tuneRadio(my_periph,frequency);
			printf("\n\n\rNew Tuning Frequency: %dHz \r\nNew Phase Increment (Decimal): %d\n\n\r", frequency, freq_to_phaseWidth(frequency));
			printMenu(); 
		}
		else if (userSelection == 'b') {
			print_benchmark(my_periph); 
			printMenu(); 
		}
		else if (userSelection == 'm') {
			radioTuner_tuneRadio(my_periph, 30e6);
			play_tune(my_periph,30e6);
			printMenu(); 
		}
		else if (userSelection == 'r') {
			radioTuner_toggleDDSReset(my_periph, resetState);
			resetState = !resetState; 
			printMenu(); 
		}
		else if(userSelection == 'i'){
			k = 0;
			printf("\r\nSize of datagram array: %d\n", sizeDgram);
			//printf("\r\nRepeated Datagram Payload Value: %d (decimal), %x (hex) \n", datagramPacket[150], datagramPacket[150]);
			
			printf("\r\nPlease enter the destination IP Address, press enter when complete: ");
			scanf(" %s", &userIP);			

			printf("\r\nPlease enter the amount of datagrams you would like to send, press enter when complete: ");
			scanf(" %d", &dataSend);

			// The server-side code keeps the address information of both the server and the client in the variable server_addr
			// server_addr (a struct of type sockaddr_in)
			// Initialize the server address by the port and IP
			struct sockaddr_in server_addr;
			server_addr.sin_family = AF_INET;
			server_addr.sin_port = htons(portNum);
			server_addr.sin_addr.s_addr = inet_addr(userIPpoint);

			char client_message[2000] = "Test Sequence Alex";
			int server_struct_length = sizeof(server_addr);

			//Bind socket descriptor to the server address:
			bind(socket_desc, (struct sockaddr*)&server_addr, sizeof(server_addr));

			while (k < dataSend) { // remain in this loop until we've sent the total amount of data that the user has requested 
				//counterFIFO = *(FIFO_PERIPH_ADDRESS + FIFO_DATA_COUNT_OFFSET); //read from our timer register
				if (my_periph_FIFO[1] > 255) { // only enter if there are 256 values in the FIFO
					//printf("\nAmount of data in FIFO: %d\n", my_periph_FIFO[1]);
					for (int a = 0; a <= 255; a++) { // read 256 values from FIFO into our datagram buffer 
						datagramPacket[a] = my_periph_FIFO[0]; // read a value in the FIFO into our datagram buffer array	
						//printf("\nWriting value %d from FIFO to buffer\n", my_periph_FIFO[0]);
					}
					memcpy(datagramBuffer, &myCounter, 2);
					memcpy(datagramBuffer+2, datagramPacket,1024);

					if (sendto(socket_desc, datagramBuffer, sizeof(datagramBuffer), 0, // send datagram packet to user specified IP address, verify that packet was succesfully sent and print message to console 
						(struct sockaddr*)&server_addr, server_struct_length) < 0) {
						printf("\r\nUnable to send datagram #%d\n", k);
					}
					else {
						printf("\r\nSent datagram #%d", k);
						k = k + 1;		
						myCounter = myCounter + 1;
					}
				}		
			}				
			printf("\r\n\nData has been transmitted!");
			printMenu();
		}
		else if (userSelection == 'g') {
			printf("\nFIFO Test Case\n");
			printf("\nReading FIFO Register 3: %x", my_periph_FIFO[3]);
			assert(my_periph_FIFO[3] = 0xBEEFDEAD);
			printf("\nReading FIFO Register 2: %x", my_periph_FIFO[2]);
			assert(my_periph_FIFO[2] = 0xDEADBEEF);
			printf("\nReading 480000 times from the FIFO\n");
			start_time = my_periph[3];
			dummyVar = 0;
			while (dummyVar < 480000) {
				dummyVar2 = my_periph_FIFO[1];
				if (dummyVar2 > 0) {
					for (int i = 0; i < dummyVar2; i++) {
						k = my_periph_FIFO[0];
						dummyVar = dummyVar + 1;
					}
				}				
			}
			stop_time = my_periph[3];
			float timeTook = (stop_time - start_time) * 0.000000008;
			printf("\n\nElasped time in seconds: %.3f", timeTook);

			k = 0;
			while (k <= 0) { // remain in this loop until we've sent the total amount of data that the user has requested 
				//counterFIFO = *(FIFO_PERIPH_ADDRESS + FIFO_DATA_COUNT_OFFSET); //read from our timer register
				if (my_periph_FIFO[1] > 255) { // only enter if there are 256 values in the FIFO
					//printf("\nAmount of data in FIFO: %d\n", my_periph_FIFO[1]);
					for (int a = 0; a <= 255; a++) { // read 256 values from FIFO into our datagram buffer 
						datagramPacket[a] = my_periph_FIFO[0]; // read a value in the FIFO into our datagram buffer array	
						//printf("\nWriting value %d from FIFO to buffer\n", my_periph_FIFO[0]);
					}
					memcpy(datagramBuffer, &myCounter, 2);
					memcpy(datagramBuffer + 2, datagramPacket, 1024);
					k = 1; 
				}
			}
			printf("\n\nTesting FIFO read/writes to datagram packet\n");
			printf("\nPacket 0 Origional / Copied: %x / %x%x%x%x", datagramPacket[0], datagramBuffer[5], datagramBuffer[4], datagramBuffer[3], datagramBuffer[2]);

			printf("\n\nPacket 1 Origional / Copied: %x / %x%x%x%x", datagramPacket[1], datagramBuffer[9], datagramBuffer[8], datagramBuffer[7], datagramBuffer[6]);

			//printf("\n\nPacket 2 Origional / Copied: %x / %x%x%x%x", datagramPacket[2], datagramBuffer[13], datagramBuffer[12], datagramBuffer[11], datagramBuffer[10]);

			//printf("\n\nPacket 4 Origional / Copied: %x / %x%x%x%x", datagramPacket[4], datagramBuffer[21], datagramBuffer[20], datagramBuffer[19], datagramBuffer[18]);

			//printf("\n\nPacket 16 Origional / Copied: %x / %x%x%x%x", datagramPacket[16], datagramBuffer[69], datagramBuffer[68], datagramBuffer[67], datagramBuffer[66]);

			printf("\n\nPacket 32 Origional / Copied: %x / %x%x%x%x", datagramPacket[32], datagramBuffer[133], datagramBuffer[132], datagramBuffer[131], datagramBuffer[130]);

			//printf("\n\nPacket 48 Origional / Copied: %x / %x%x%x%x", datagramPacket[48], datagramBuffer[197], datagramBuffer[196], datagramBuffer[195], datagramBuffer[194]);

			//printf("\n\nPacket 54 Origional / Copied: %x / %x%x%x%x", datagramPacket[54], datagramBuffer[221], datagramBuffer[220], datagramBuffer[219], datagramBuffer[218]);

			printf("\n\nPacket 64 Origional / Copied: %x / %x%x%x%x", datagramPacket[64], datagramBuffer[261], datagramBuffer[260], datagramBuffer[259], datagramBuffer[258]);

			printf("\n\nPacket 128 Origional / Copied: %x / %x%x%x%x", datagramPacket[128], datagramBuffer[517], datagramBuffer[516], datagramBuffer[515], datagramBuffer[514]);

			printf("\n\nPacket 255 Origional / Copied: %x / %x%x%x%x", datagramPacket[255], datagramBuffer[1025], datagramBuffer[1024], datagramBuffer[1023], datagramBuffer[1022]);

			printMenu();
		}
		else {
			printf("\n\nBad selection please try again\n\r");
			printMenu(); 
		}		
	}
    return 0;
}
