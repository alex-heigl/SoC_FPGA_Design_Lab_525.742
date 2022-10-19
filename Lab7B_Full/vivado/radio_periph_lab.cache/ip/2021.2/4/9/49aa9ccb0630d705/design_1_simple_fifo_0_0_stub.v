// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Aug 20 17:23:09 2022
// Host        : GBL6BRV2E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_simple_fifo_0_0_stub.v
// Design      : design_1_simple_fifo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "simple_fifo_v1_0,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s00_axis_lite_aclk, s00_axis_lite_aresetn, 
  s00_axis_lite_awaddr, s00_axis_lite_awprot, s00_axis_lite_awvalid, 
  s00_axis_lite_awready, s00_axis_lite_wdata, s00_axis_lite_wstrb, s00_axis_lite_wvalid, 
  s00_axis_lite_wready, s00_axis_lite_bresp, s00_axis_lite_bvalid, s00_axis_lite_bready, 
  s00_axis_lite_araddr, s00_axis_lite_arprot, s00_axis_lite_arvalid, 
  s00_axis_lite_arready, s00_axis_lite_rdata, s00_axis_lite_rresp, s00_axis_lite_rvalid, 
  s00_axis_lite_rready, s00_axis_stream_aclk, s00_axis_stream_aresetn, 
  s00_axis_stream_tready, s00_axis_stream_tdata, s00_axis_stream_tvalid)
/* synthesis syn_black_box black_box_pad_pin="s00_axis_lite_aclk,s00_axis_lite_aresetn,s00_axis_lite_awaddr[3:0],s00_axis_lite_awprot[2:0],s00_axis_lite_awvalid,s00_axis_lite_awready,s00_axis_lite_wdata[31:0],s00_axis_lite_wstrb[3:0],s00_axis_lite_wvalid,s00_axis_lite_wready,s00_axis_lite_bresp[1:0],s00_axis_lite_bvalid,s00_axis_lite_bready,s00_axis_lite_araddr[3:0],s00_axis_lite_arprot[2:0],s00_axis_lite_arvalid,s00_axis_lite_arready,s00_axis_lite_rdata[31:0],s00_axis_lite_rresp[1:0],s00_axis_lite_rvalid,s00_axis_lite_rready,s00_axis_stream_aclk,s00_axis_stream_aresetn,s00_axis_stream_tready,s00_axis_stream_tdata[31:0],s00_axis_stream_tvalid" */;
  input s00_axis_lite_aclk;
  input s00_axis_lite_aresetn;
  input [3:0]s00_axis_lite_awaddr;
  input [2:0]s00_axis_lite_awprot;
  input s00_axis_lite_awvalid;
  output s00_axis_lite_awready;
  input [31:0]s00_axis_lite_wdata;
  input [3:0]s00_axis_lite_wstrb;
  input s00_axis_lite_wvalid;
  output s00_axis_lite_wready;
  output [1:0]s00_axis_lite_bresp;
  output s00_axis_lite_bvalid;
  input s00_axis_lite_bready;
  input [3:0]s00_axis_lite_araddr;
  input [2:0]s00_axis_lite_arprot;
  input s00_axis_lite_arvalid;
  output s00_axis_lite_arready;
  output [31:0]s00_axis_lite_rdata;
  output [1:0]s00_axis_lite_rresp;
  output s00_axis_lite_rvalid;
  input s00_axis_lite_rready;
  input s00_axis_stream_aclk;
  input s00_axis_stream_aresetn;
  output s00_axis_stream_tready;
  input [31:0]s00_axis_stream_tdata;
  input s00_axis_stream_tvalid;
endmodule
