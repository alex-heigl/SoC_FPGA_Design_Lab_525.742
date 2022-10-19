-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Aug 11 00:18:47 2022
-- Host        : GBL6BRV2E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/212581463/work/labs_2021_2/lab6/radio_periph_lab-main/vivado/radio_periph_lab.gen/sources_1/bd/design_1/ip/design_1_lowlevel_dac_intfc_0_0/design_1_lowlevel_dac_intfc_0_0_stub.vhdl
-- Design      : design_1_lowlevel_dac_intfc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_lowlevel_dac_intfc_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    clk125 : in STD_LOGIC;
    data_word : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sdata : out STD_LOGIC;
    lrck : out STD_LOGIC;
    bclk : out STD_LOGIC;
    mclk : out STD_LOGIC;
    latched_data : out STD_LOGIC;
    valid : in STD_LOGIC
  );

end design_1_lowlevel_dac_intfc_0_0;

architecture stub of design_1_lowlevel_dac_intfc_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,clk125,data_word[15:0],sdata,lrck,bclk,mclk,latched_data,valid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "lowlevel_dac_intfc,Vivado 2021.2";
begin
end;
