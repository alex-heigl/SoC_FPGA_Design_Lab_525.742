#include <stdio.h>
#include <sys/mman.h> 
#include <fcntl.h> 
#include <unistd.h>
#define _BSD_SOURCE

#define RADIO_TUNER_FAKE_ADC_PINC_OFFSET 0
#define RADIO_TUNER_TUNER_PINC_OFFSET 1
#define RADIO_TUNER_CONTROL_REG_OFFSET 2
#define RADIO_TUNER_TIMER_REG_OFFSET 3
#define RADIO_PERIPH_ADDRESS 0x43c00000

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

void printMenu(){
    //printf("\r\npress 'u' and then select enter to increase frequency by 100Hz\n\r");
    //printf("press 'U' and then select enter to increase frequency by 1000Hz\n\r");
    //printf("press 'd' and then select enter to decrease frequency by 100Hz\n\r");
    //printf("press 'D' and then select enter to decrease frequency by 1000Hz\n\r");
    printf("press 'f' and then select enter to enter frequency (Resolution of 1Hz)\n\r");
    printf("press 'T' and then select enter to set the tuning frequency of the radio (Resolution of 1Hz)\n\r");
	printf("press 'm' and then select enter to play fight song\n\r");
	printf("press 'b' and then select enter to see the estimated transfer throughput\n\r");	
    printf("press 'r' and then select enter to toggle DDS reset\n\n\r");
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
	
	char userSelection; 
	char extraRandom; 
	int frequency;
	int resetState = 1; 

    printf("\r\n\r\n\r\nLab 6 Alex Heigl - Custom Peripheral Demonstration\n\n\r");
	printMenu();
	for (;;) {
		scanf("%c", &userSelection);
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
			scanf("%d", &frequency);
			radioTuner_setAdcFreq(my_periph, frequency);
			printf("\n\n\rNew Output Frequency: %dHz \r\nNew Phase Increment (Decimal): %d\n\n\r", frequency, freq_to_phaseWidth(frequency));
			printf("press 'f' and then select enter to enter frequency (Resolution of 1Hz)\n\r");
			printf("press 'T' and then select enter to set the tuning frequency of the radio (Resolution of 1Hz)\n\r");
			printf("press 'm' and then select enter to play fight song\n\r");
			printf("press 'b' and then select enter to see the estimated transfer throughput\n\r");
			printf("press 'r' and then select enter to toggle DDS reset\n\n\r");
			scanf("%c", &extraRandom);
			/*printMenu();*/
		}
		else if (userSelection == 'T') {
			printf("\nPlease enter desired tuning frequency now, press enter when finished\n\n\r");
			scanf("%d", &frequency);
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
			printf("press 'f' and then select enter to enter frequency (Resolution of 1Hz)\n\r");
			printf("press 'T' and then select enter to set the tuning frequency of the radio (Resolution of 1Hz)\n\r");
			printf("press 'm' and then select enter to play fight song\n\r");
			printf("press 'b' and then select enter to see the estimated transfer throughput\n\r");
			printf("press 'r' and then select enter to toggle DDS reset\n\n\r");
			scanf("%c", &extraRandom);
			/*printMenu();*/
		}
		else if (userSelection == 'b') {
			print_benchmark(my_periph); 
			printf("press 'f' and then select enter to enter frequency (Resolution of 1Hz)\n\r");
			printf("press 'T' and then select enter to set the tuning frequency of the radio (Resolution of 1Hz)\n\r");
			printf("press 'm' and then select enter to play fight song\n\r");
			printf("press 'b' and then select enter to see the estimated transfer throughput\n\r");
			printf("press 'r' and then select enter to toggle DDS reset\n\n\r");
			scanf("%c", &extraRandom);
			/*printMenu();*/
		}
		else if (userSelection == 'm') {
			radioTuner_tuneRadio(my_periph, 30e6);
			play_tune(my_periph,30e6);
			printf("press 'f' and then select enter to enter frequency (Resolution of 1Hz)\n\r");
			printf("press 'T' and then select enter to set the tuning frequency of the radio (Resolution of 1Hz)\n\r");
			printf("press 'm' and then select enter to play fight song\n\r");
			printf("press 'b' and then select enter to see the estimated transfer throughput\n\r");
			printf("press 'r' and then select enter to toggle DDS reset\n\n\r");		
			scanf("%c", &extraRandom);
			/*printMenu();*/
		}
		else if (userSelection == 'r') {
			//frequency = 0;
			//printf("Resetting ADC and tunning frequency to 0Hz");
			//radioTuner_setAdcFreq(my_periph, frequency);
			//radioTuner_tuneRadio(my_periph,frequency);
			radioTuner_toggleDDSReset(my_periph, resetState);
			resetState = !resetState; 
			printf("press 'f' and then select enter to enter frequency (Resolution of 1Hz)\n\r");
			printf("press 'T' and then select enter to set the tuning frequency of the radio (Resolution of 1Hz)\n\r");
			printf("press 'm' and then select enter to play fight song\n\r");
			printf("press 'b' and then select enter to see the estimated transfer throughput\n\r");
			printf("press 'r' and then select enter to toggle DDS reset\n\n\r");
			scanf("%c", &extraRandom);
			/*printMenu();*/
		}
		else {
			printf("\n\nBad selection please try again\n\r");
			printf("press 'f' and then select enter to enter frequency (Resolution of 1Hz)\n\r");
			printf("press 'T' and then select enter to set the tuning frequency of the radio (Resolution of 1Hz)\n\r");
			printf("press 'm' and then select enter to play fight song\n\r");
			printf("press 'b' and then select enter to see the estimated transfer throughput\n\r");
			printf("press 'r' and then select enter to toggle DDS reset\n\n\r");
			/*printMenu();*/
		}
		
	}
    return 0;
}
