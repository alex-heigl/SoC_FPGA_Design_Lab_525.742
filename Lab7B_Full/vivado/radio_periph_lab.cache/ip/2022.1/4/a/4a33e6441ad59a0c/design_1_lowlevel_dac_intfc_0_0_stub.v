// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Oct 19 15:25:59 2022
// Host        : Nikolaus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_lowlevel_dac_intfc_0_0_stub.v
// Design      : design_1_lowlevel_dac_intfc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "lowlevel_dac_intfc,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rst, clk125, data_word, sdata, lrck, bclk, mclk, 
  latched_data, valid)
/* synthesis syn_black_box black_box_pad_pin="rst,clk125,data_word[31:0],sdata,lrck,bclk,mclk,latched_data,valid" */;
  input rst;
  input clk125;
  input [31:0]data_word;
  output sdata;
  output lrck;
  output bclk;
  output mclk;
  output latched_data;
  input valid;
endmodule
