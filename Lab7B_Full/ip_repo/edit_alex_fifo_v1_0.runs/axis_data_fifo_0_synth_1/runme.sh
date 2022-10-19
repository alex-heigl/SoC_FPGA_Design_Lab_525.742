#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=C:/Xilinx/Vitis/2021.2/bin;C:/Xilinx/Vivado/2021.2/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2021.2/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2021.2/bin
else
  PATH=C:/Xilinx/Vitis/2021.2/bin;C:/Xilinx/Vivado/2021.2/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2021.2/ids_lite/ISE/lib/nt64:C:/Xilinx/Vivado/2021.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='c:/users/212581463/work/labs_2021_2/lab7b/ip_repo/edit_alex_fifo_v1_0.runs/axis_data_fifo_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log axis_data_fifo_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source axis_data_fifo_0.tcl
