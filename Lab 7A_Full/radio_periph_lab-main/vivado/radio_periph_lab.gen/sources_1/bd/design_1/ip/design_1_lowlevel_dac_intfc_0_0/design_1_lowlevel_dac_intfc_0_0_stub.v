// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Aug 11 00:18:47 2022
// Host        : GBL6BRV2E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/212581463/work/labs_2021_2/lab6/radio_periph_lab-main/vivado/radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_lowlevel_dac_intfc_0_0/design_1_lowlevel_dac_intfc_0_0_stub.v
// Design      : design_1_lowlevel_dac_intfc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "lowlevel_dac_intfc,Vivado 2021.2" *)
module design_1_lowlevel_dac_intfc_0_0(rst, clk125, data_word, sdata, lrck, bclk, mclk, 
  latched_data, valid)
/* synthesis syn_black_box black_box_pad_pin="rst,clk125,data_word[15:0],sdata,lrck,bclk,mclk,latched_data,valid" */;
  input rst;
  input clk125;
  input [15:0]data_word;
  output sdata;
  output lrck;
  output bclk;
  output mclk;
  output latched_data;
  input valid;
endmodule
