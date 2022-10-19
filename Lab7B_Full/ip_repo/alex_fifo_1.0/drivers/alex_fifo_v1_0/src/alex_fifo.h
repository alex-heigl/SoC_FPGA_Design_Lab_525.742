
#ifndef ALEX_FIFO_H
#define ALEX_FIFO_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

#define ALEX_FIFO_S00_AXI_SLV_REG0_OFFSET 0
#define ALEX_FIFO_S00_AXI_SLV_REG1_OFFSET 4
#define ALEX_FIFO_S00_AXI_SLV_REG2_OFFSET 8
#define ALEX_FIFO_S00_AXI_SLV_REG3_OFFSET 12


/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a ALEX_FIFO register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the ALEX_FIFOdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void ALEX_FIFO_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define ALEX_FIFO_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a ALEX_FIFO register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the ALEX_FIFO device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 ALEX_FIFO_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define ALEX_FIFO_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the ALEX_FIFO instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus ALEX_FIFO_Reg_SelfTest(void * baseaddr_p);

#endif // ALEX_FIFO_H
