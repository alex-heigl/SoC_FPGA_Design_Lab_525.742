// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Aug 11 00:18:46 2022
// Host        : GBL6BRV2E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_lowlevel_dac_intfc_0_0_sim_netlist.v
// Design      : design_1_lowlevel_dac_intfc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clkdivider
   (\cnt_reg[1]_0 ,
    mclk,
    clk125,
    rst);
  output \cnt_reg[1]_0 ;
  input mclk;
  input clk125;
  input rst;

  wire clk125;
  wire [2:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt_reg[1]_0 ;
  wire mclk;
  wire [2:1]p_0_in;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB04)) 
    clk12p5_i_1
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .I3(mclk),
        .O(\cnt_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \cnt[0]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \cnt[2]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .O(p_0_in[2]));
  FDCE \cnt_reg[0] 
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]));
  FDCE \cnt_reg[1] 
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(cnt[2]));
endmodule

(* ORIG_REF_NAME = "clkdivider" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clkdivider__parameterized0
   (latched_data1_out,
    E,
    bclk_i_reg,
    bclk_i_reg_0,
    bclk_i_reg_1,
    latched_data_reg,
    Q,
    lrck_reg,
    p_2_in__2,
    lrck,
    clk125,
    rst);
  output latched_data1_out;
  output [0:0]E;
  output bclk_i_reg;
  output bclk_i_reg_0;
  input bclk_i_reg_1;
  input latched_data_reg;
  input [0:0]Q;
  input lrck_reg;
  input p_2_in__2;
  input lrck;
  input clk125;
  input rst;

  wire [0:0]E;
  wire [0:0]Q;
  wire bclk_i_reg;
  wire bclk_i_reg_0;
  wire bclk_i_reg_1;
  wire clk125;
  wire [5:1]cnt;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire latched_data1_out;
  wire latched_data_reg;
  wire lrck;
  wire lrck_reg;
  wire p_2_in__2;
  wire rst;
  wire toggle_bclk;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bclk_i_i_1
       (.I0(toggle_bclk),
        .I1(bclk_i_reg_1),
        .O(bclk_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  LUT6 #(
    .INIT(64'h7870F0F07878F0F0)) 
    \cnt[3]_i_1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F80FF00)) 
    \cnt[4]_i_1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[1] ),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'h7FF7FFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(cnt[5]));
  FDCE \cnt_reg[0] 
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE \cnt_reg[1] 
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE \cnt_reg[2] 
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE \cnt_reg[3] 
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE \cnt_reg[4] 
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE \cnt_reg[5] 
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    latched_data_i_1
       (.I0(bclk_i_reg_1),
        .I1(toggle_bclk),
        .I2(latched_data_reg),
        .I3(Q),
        .O(latched_data1_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    lrck_i_1
       (.I0(lrck_reg),
        .I1(bclk_i_reg_1),
        .I2(toggle_bclk),
        .I3(p_2_in__2),
        .I4(lrck),
        .O(bclk_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shiftreg[31]_i_1 
       (.I0(toggle_bclk),
        .I1(bclk_i_reg_1),
        .O(E));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \shiftreg[31]_i_3 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_reg_n_0_[1] ),
        .O(toggle_bclk));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_lowlevel_dac_intfc_0_0,lowlevel_dac_intfc,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "lowlevel_dac_intfc,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    clk125,
    data_word,
    sdata,
    lrck,
    bclk,
    mclk,
    latched_data,
    valid);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk125 CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk125, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF data_in, FREQ_TOLERANCE_HZ -1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk125;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 data_in TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME data_in, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [15:0]data_word;
  output sdata;
  output lrck;
  output bclk;
  output mclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 data_in TREADY" *) output latched_data;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 data_in TVALID" *) input valid;

  wire bclk;
  wire clk125;
  wire [15:0]data_word;
  wire latched_data;
  wire lrck;
  wire mclk;
  wire rst;
  wire sdata;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lowlevel_dac_intfc U0
       (.bclk_i_reg_0(bclk),
        .clk125(clk125),
        .data_word(data_word),
        .latched_data(latched_data),
        .lrck(lrck),
        .mclk(mclk),
        .rst(rst),
        .sdata(sdata));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lowlevel_dac_intfc
   (sdata,
    latched_data,
    bclk_i_reg_0,
    lrck,
    mclk,
    clk125,
    rst,
    data_word);
  output sdata;
  output latched_data;
  output bclk_i_reg_0;
  output lrck;
  output mclk;
  input clk125;
  input rst;
  input [15:0]data_word;

  wire [31:1]SHIFT_LEFT;
  wire bclk_i_reg_0;
  wire bclk_tim_n_2;
  wire bclk_tim_n_3;
  wire [4:0]bitcount_reg;
  wire clk125;
  wire [15:0]data_word;
  wire latched_data;
  wire latched_data1_out;
  wire lrck;
  wire lrck_i_2_n_0;
  wire make12p5MHz_n_0;
  wire mclk;
  wire p_2_in__2;
  wire [4:0]plusOp;
  wire rst;
  wire sdata;
  wire sel;
  wire \shiftreg[0]_i_1_n_0 ;
  wire \shiftreg[10]_i_1_n_0 ;
  wire \shiftreg[11]_i_1_n_0 ;
  wire \shiftreg[12]_i_1_n_0 ;
  wire \shiftreg[13]_i_1_n_0 ;
  wire \shiftreg[14]_i_1_n_0 ;
  wire \shiftreg[15]_i_1_n_0 ;
  wire \shiftreg[16]_i_1_n_0 ;
  wire \shiftreg[17]_i_1_n_0 ;
  wire \shiftreg[18]_i_1_n_0 ;
  wire \shiftreg[19]_i_1_n_0 ;
  wire \shiftreg[1]_i_1_n_0 ;
  wire \shiftreg[20]_i_1_n_0 ;
  wire \shiftreg[21]_i_1_n_0 ;
  wire \shiftreg[22]_i_1_n_0 ;
  wire \shiftreg[23]_i_1_n_0 ;
  wire \shiftreg[24]_i_1_n_0 ;
  wire \shiftreg[25]_i_1_n_0 ;
  wire \shiftreg[26]_i_1_n_0 ;
  wire \shiftreg[27]_i_1_n_0 ;
  wire \shiftreg[28]_i_1_n_0 ;
  wire \shiftreg[29]_i_1_n_0 ;
  wire \shiftreg[2]_i_1_n_0 ;
  wire \shiftreg[30]_i_1_n_0 ;
  wire \shiftreg[31]_i_2_n_0 ;
  wire \shiftreg[31]_i_4_n_0 ;
  wire \shiftreg[3]_i_1_n_0 ;
  wire \shiftreg[4]_i_1_n_0 ;
  wire \shiftreg[5]_i_1_n_0 ;
  wire \shiftreg[6]_i_1_n_0 ;
  wire \shiftreg[7]_i_1_n_0 ;
  wire \shiftreg[8]_i_1_n_0 ;
  wire \shiftreg[9]_i_1_n_0 ;

  FDCE bclk_i_reg
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(bclk_tim_n_3),
        .Q(bclk_i_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clkdivider__parameterized0 bclk_tim
       (.E(sel),
        .Q(bitcount_reg[0]),
        .bclk_i_reg(bclk_tim_n_2),
        .bclk_i_reg_0(bclk_tim_n_3),
        .bclk_i_reg_1(bclk_i_reg_0),
        .clk125(clk125),
        .latched_data1_out(latched_data1_out),
        .latched_data_reg(\shiftreg[31]_i_4_n_0 ),
        .lrck(lrck),
        .lrck_reg(lrck_i_2_n_0),
        .p_2_in__2(p_2_in__2),
        .rst(rst));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bitcount[0]_i_1 
       (.I0(bitcount_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bitcount[1]_i_1 
       (.I0(bitcount_reg[0]),
        .I1(bitcount_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bitcount[2]_i_1 
       (.I0(bitcount_reg[0]),
        .I1(bitcount_reg[1]),
        .I2(bitcount_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bitcount[3]_i_1 
       (.I0(bitcount_reg[1]),
        .I1(bitcount_reg[0]),
        .I2(bitcount_reg[2]),
        .I3(bitcount_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bitcount[4]_i_1 
       (.I0(bitcount_reg[2]),
        .I1(bitcount_reg[0]),
        .I2(bitcount_reg[1]),
        .I3(bitcount_reg[3]),
        .I4(bitcount_reg[4]),
        .O(plusOp[4]));
  FDCE \bitcount_reg[0] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(plusOp[0]),
        .Q(bitcount_reg[0]));
  FDCE \bitcount_reg[1] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(plusOp[1]),
        .Q(bitcount_reg[1]));
  FDCE \bitcount_reg[2] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(plusOp[2]),
        .Q(bitcount_reg[2]));
  FDCE \bitcount_reg[3] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(plusOp[3]),
        .Q(bitcount_reg[3]));
  FDCE \bitcount_reg[4] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(plusOp[4]),
        .Q(bitcount_reg[4]));
  FDRE #(
    .INIT(1'b0)) 
    clk12p5_reg
       (.C(clk125),
        .CE(1'b1),
        .D(make12p5MHz_n_0),
        .Q(mclk),
        .R(1'b0));
  FDCE latched_data_reg
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(latched_data1_out),
        .Q(latched_data));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    lrck_i_2
       (.I0(bitcount_reg[3]),
        .I1(bitcount_reg[4]),
        .I2(bitcount_reg[0]),
        .I3(bitcount_reg[1]),
        .I4(bitcount_reg[2]),
        .O(lrck_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    lrck_i_3
       (.I0(bitcount_reg[2]),
        .I1(bitcount_reg[3]),
        .I2(bitcount_reg[1]),
        .I3(bitcount_reg[0]),
        .O(p_2_in__2));
  FDCE lrck_reg
       (.C(clk125),
        .CE(1'b1),
        .CLR(rst),
        .D(bclk_tim_n_2),
        .Q(lrck));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clkdivider make12p5MHz
       (.clk125(clk125),
        .\cnt_reg[1]_0 (make12p5MHz_n_0),
        .mclk(mclk),
        .rst(rst));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \shiftreg[0]_i_1 
       (.I0(data_word[0]),
        .I1(bitcount_reg[0]),
        .I2(bitcount_reg[2]),
        .I3(bitcount_reg[1]),
        .I4(bitcount_reg[4]),
        .I5(bitcount_reg[3]),
        .O(\shiftreg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[10]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[10]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[10]),
        .O(\shiftreg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[11]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[11]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[11]),
        .O(\shiftreg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[12]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[12]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[12]),
        .O(\shiftreg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[13]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[13]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[13]),
        .O(\shiftreg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[14]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[14]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[14]),
        .O(\shiftreg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[15]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[15]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[15]),
        .O(\shiftreg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[16]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[0]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[16]),
        .O(\shiftreg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[17]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[1]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[17]),
        .O(\shiftreg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[18]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[2]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[18]),
        .O(\shiftreg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[19]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[3]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[19]),
        .O(\shiftreg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[1]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[1]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[1]),
        .O(\shiftreg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[20]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[4]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[20]),
        .O(\shiftreg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[21]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[5]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[21]),
        .O(\shiftreg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[22]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[6]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[22]),
        .O(\shiftreg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[23]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[7]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[23]),
        .O(\shiftreg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[24]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[8]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[24]),
        .O(\shiftreg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[25]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[9]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[25]),
        .O(\shiftreg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[26]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[10]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[26]),
        .O(\shiftreg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[27]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[11]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[27]),
        .O(\shiftreg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[28]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[12]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[28]),
        .O(\shiftreg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[29]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[13]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[29]),
        .O(\shiftreg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[2]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[2]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[2]),
        .O(\shiftreg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[30]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[14]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[30]),
        .O(\shiftreg[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[31]_i_2 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[15]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[31]),
        .O(\shiftreg[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \shiftreg[31]_i_4 
       (.I0(bitcount_reg[3]),
        .I1(bitcount_reg[4]),
        .I2(bitcount_reg[1]),
        .I3(bitcount_reg[2]),
        .O(\shiftreg[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[3]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[3]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[3]),
        .O(\shiftreg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[4]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[4]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[4]),
        .O(\shiftreg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[5]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[5]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[5]),
        .O(\shiftreg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[6]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[6]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[6]),
        .O(\shiftreg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[7]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[7]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[7]),
        .O(\shiftreg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[8]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[8]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[8]),
        .O(\shiftreg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shiftreg[9]_i_1 
       (.I0(\shiftreg[31]_i_4_n_0 ),
        .I1(data_word[9]),
        .I2(bitcount_reg[0]),
        .I3(SHIFT_LEFT[9]),
        .O(\shiftreg[9]_i_1_n_0 ));
  FDCE \shiftreg_reg[0] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[0]_i_1_n_0 ),
        .Q(SHIFT_LEFT[1]));
  FDCE \shiftreg_reg[10] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[10]_i_1_n_0 ),
        .Q(SHIFT_LEFT[11]));
  FDCE \shiftreg_reg[11] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[11]_i_1_n_0 ),
        .Q(SHIFT_LEFT[12]));
  FDCE \shiftreg_reg[12] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[12]_i_1_n_0 ),
        .Q(SHIFT_LEFT[13]));
  FDCE \shiftreg_reg[13] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[13]_i_1_n_0 ),
        .Q(SHIFT_LEFT[14]));
  FDCE \shiftreg_reg[14] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[14]_i_1_n_0 ),
        .Q(SHIFT_LEFT[15]));
  FDCE \shiftreg_reg[15] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[15]_i_1_n_0 ),
        .Q(SHIFT_LEFT[16]));
  FDCE \shiftreg_reg[16] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[16]_i_1_n_0 ),
        .Q(SHIFT_LEFT[17]));
  FDCE \shiftreg_reg[17] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[17]_i_1_n_0 ),
        .Q(SHIFT_LEFT[18]));
  FDCE \shiftreg_reg[18] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[18]_i_1_n_0 ),
        .Q(SHIFT_LEFT[19]));
  FDCE \shiftreg_reg[19] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[19]_i_1_n_0 ),
        .Q(SHIFT_LEFT[20]));
  FDCE \shiftreg_reg[1] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[1]_i_1_n_0 ),
        .Q(SHIFT_LEFT[2]));
  FDCE \shiftreg_reg[20] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[20]_i_1_n_0 ),
        .Q(SHIFT_LEFT[21]));
  FDCE \shiftreg_reg[21] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[21]_i_1_n_0 ),
        .Q(SHIFT_LEFT[22]));
  FDCE \shiftreg_reg[22] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[22]_i_1_n_0 ),
        .Q(SHIFT_LEFT[23]));
  FDCE \shiftreg_reg[23] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[23]_i_1_n_0 ),
        .Q(SHIFT_LEFT[24]));
  FDCE \shiftreg_reg[24] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[24]_i_1_n_0 ),
        .Q(SHIFT_LEFT[25]));
  FDCE \shiftreg_reg[25] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[25]_i_1_n_0 ),
        .Q(SHIFT_LEFT[26]));
  FDCE \shiftreg_reg[26] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[26]_i_1_n_0 ),
        .Q(SHIFT_LEFT[27]));
  FDCE \shiftreg_reg[27] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[27]_i_1_n_0 ),
        .Q(SHIFT_LEFT[28]));
  FDCE \shiftreg_reg[28] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[28]_i_1_n_0 ),
        .Q(SHIFT_LEFT[29]));
  FDCE \shiftreg_reg[29] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[29]_i_1_n_0 ),
        .Q(SHIFT_LEFT[30]));
  FDCE \shiftreg_reg[2] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[2]_i_1_n_0 ),
        .Q(SHIFT_LEFT[3]));
  FDCE \shiftreg_reg[30] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[30]_i_1_n_0 ),
        .Q(SHIFT_LEFT[31]));
  FDCE \shiftreg_reg[31] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[31]_i_2_n_0 ),
        .Q(sdata));
  FDCE \shiftreg_reg[3] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[3]_i_1_n_0 ),
        .Q(SHIFT_LEFT[4]));
  FDCE \shiftreg_reg[4] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[4]_i_1_n_0 ),
        .Q(SHIFT_LEFT[5]));
  FDCE \shiftreg_reg[5] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[5]_i_1_n_0 ),
        .Q(SHIFT_LEFT[6]));
  FDCE \shiftreg_reg[6] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[6]_i_1_n_0 ),
        .Q(SHIFT_LEFT[7]));
  FDCE \shiftreg_reg[7] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[7]_i_1_n_0 ),
        .Q(SHIFT_LEFT[8]));
  FDCE \shiftreg_reg[8] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[8]_i_1_n_0 ),
        .Q(SHIFT_LEFT[9]));
  FDCE \shiftreg_reg[9] 
       (.C(clk125),
        .CE(sel),
        .CLR(rst),
        .D(\shiftreg[9]_i_1_n_0 ),
        .Q(SHIFT_LEFT[10]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
