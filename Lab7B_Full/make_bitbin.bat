: this file assumes you have a bitfile in the impl_1 directory, and turns it into a bit.bin file
: for fpgautil
call c:\Xilinx\Vivado\2022.156\settings64.bat
call bootgen -image alex.bif -arch zynq -process_bitstream bin -w on