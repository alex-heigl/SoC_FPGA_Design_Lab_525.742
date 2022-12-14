-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Oct 19 15:32:00 2022
-- Host        : Nikolaus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/SoC_FPGA_Design_Lab_525.742/Lab7B_Full/vivado/radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_simple_fifo_0_0/design_1_simple_fifo_0_0_stub.vhdl
-- Design      : design_1_simple_fifo_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_simple_fifo_0_0 is
  Port ( 
    s00_axis_lite_aclk : in STD_LOGIC;
    s00_axis_lite_aresetn : in STD_LOGIC;
    s00_axis_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axis_lite_awvalid : in STD_LOGIC;
    s00_axis_lite_awready : out STD_LOGIC;
    s00_axis_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_lite_wvalid : in STD_LOGIC;
    s00_axis_lite_wready : out STD_LOGIC;
    s00_axis_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axis_lite_bvalid : out STD_LOGIC;
    s00_axis_lite_bready : in STD_LOGIC;
    s00_axis_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axis_lite_arvalid : in STD_LOGIC;
    s00_axis_lite_arready : out STD_LOGIC;
    s00_axis_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axis_lite_rvalid : out STD_LOGIC;
    s00_axis_lite_rready : in STD_LOGIC;
    s00_axis_stream_aclk : in STD_LOGIC;
    s00_axis_stream_aresetn : in STD_LOGIC;
    s00_axis_stream_tready : out STD_LOGIC;
    s00_axis_stream_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_stream_tvalid : in STD_LOGIC
  );

end design_1_simple_fifo_0_0;

architecture stub of design_1_simple_fifo_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s00_axis_lite_aclk,s00_axis_lite_aresetn,s00_axis_lite_awaddr[3:0],s00_axis_lite_awprot[2:0],s00_axis_lite_awvalid,s00_axis_lite_awready,s00_axis_lite_wdata[31:0],s00_axis_lite_wstrb[3:0],s00_axis_lite_wvalid,s00_axis_lite_wready,s00_axis_lite_bresp[1:0],s00_axis_lite_bvalid,s00_axis_lite_bready,s00_axis_lite_araddr[3:0],s00_axis_lite_arprot[2:0],s00_axis_lite_arvalid,s00_axis_lite_arready,s00_axis_lite_rdata[31:0],s00_axis_lite_rresp[1:0],s00_axis_lite_rvalid,s00_axis_lite_rready,s00_axis_stream_aclk,s00_axis_stream_aresetn,s00_axis_stream_tready,s00_axis_stream_tdata[31:0],s00_axis_stream_tvalid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "simple_fifo_v1_0,Vivado 2022.1";
begin
end;
