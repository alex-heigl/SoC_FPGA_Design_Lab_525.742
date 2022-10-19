// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Aug 17 17:52:11 2022
// Host        : GBL6BRV2E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_simple_fifo_0_0_sim_netlist.v
// Design      : design_1_simple_fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_0
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    axis_rd_data_count);
  input s_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [31:0]axis_rd_data_count;


endmodule

(* CHECK_LICENSE_TYPE = "design_1_simple_fifo_0_0,simple_fifo_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "simple_fifo_v1_0,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axis_stream_tdata,
    s00_axis_stream_tstrb,
    s00_axis_stream_tlast,
    s00_axis_stream_tvalid,
    s00_axis_stream_tready,
    s00_axis_stream_aclk,
    s00_axis_stream_aresetn,
    s00_axis_lite_awaddr,
    s00_axis_lite_awprot,
    s00_axis_lite_awvalid,
    s00_axis_lite_awready,
    s00_axis_lite_wdata,
    s00_axis_lite_wstrb,
    s00_axis_lite_wvalid,
    s00_axis_lite_wready,
    s00_axis_lite_bresp,
    s00_axis_lite_bvalid,
    s00_axis_lite_bready,
    s00_axis_lite_araddr,
    s00_axis_lite_arprot,
    s00_axis_lite_arvalid,
    s00_axis_lite_arready,
    s00_axis_lite_rdata,
    s00_axis_lite_rresp,
    s00_axis_lite_rvalid,
    s00_axis_lite_rready,
    s00_axis_lite_aclk,
    s00_axis_lite_aresetn);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_STREAM, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s00_axis_stream_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TSTRB" *) input [3:0]s00_axis_stream_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TLAST" *) input s00_axis_stream_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TVALID" *) input s00_axis_stream_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TREADY" *) output s00_axis_stream_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXIS_STREAM_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_STREAM_CLK, ASSOCIATED_BUSIF S00_AXIS_STREAM, ASSOCIATED_RESET s00_axis_stream_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_stream_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXIS_STREAM_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_STREAM_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_stream_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axis_lite_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWPROT" *) input [2:0]s00_axis_lite_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWVALID" *) input s00_axis_lite_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWREADY" *) output s00_axis_lite_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WDATA" *) input [31:0]s00_axis_lite_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WSTRB" *) input [3:0]s00_axis_lite_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WVALID" *) input s00_axis_lite_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WREADY" *) output s00_axis_lite_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE BRESP" *) output [1:0]s00_axis_lite_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE BVALID" *) output s00_axis_lite_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE BREADY" *) input s00_axis_lite_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARADDR" *) input [3:0]s00_axis_lite_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARPROT" *) input [2:0]s00_axis_lite_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARVALID" *) input s00_axis_lite_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARREADY" *) output s00_axis_lite_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RDATA" *) output [31:0]s00_axis_lite_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RRESP" *) output [1:0]s00_axis_lite_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RVALID" *) output s00_axis_lite_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RREADY" *) input s00_axis_lite_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXIS_LITE_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_LITE_CLK, ASSOCIATED_BUSIF S00_AXIS_LITE, ASSOCIATED_RESET s00_axis_lite_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_lite_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXIS_LITE_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXIS_LITE_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_lite_aresetn;

  wire \<const0> ;
  wire s00_axis_lite_aclk;
  wire [3:0]s00_axis_lite_araddr;
  wire s00_axis_lite_aresetn;
  wire s00_axis_lite_arready;
  wire s00_axis_lite_arvalid;
  wire [3:0]s00_axis_lite_awaddr;
  wire s00_axis_lite_awready;
  wire s00_axis_lite_awvalid;
  wire s00_axis_lite_bready;
  wire s00_axis_lite_bvalid;
  wire [31:0]s00_axis_lite_rdata;
  wire s00_axis_lite_rready;
  wire s00_axis_lite_rvalid;
  wire [31:0]s00_axis_lite_wdata;
  wire s00_axis_lite_wready;
  wire [3:0]s00_axis_lite_wstrb;
  wire s00_axis_lite_wvalid;
  wire s00_axis_stream_aclk;
  wire s00_axis_stream_aresetn;
  wire [31:0]s00_axis_stream_tdata;
  wire s00_axis_stream_tready;
  wire s00_axis_stream_tvalid;

  assign s00_axis_lite_bresp[1] = \<const0> ;
  assign s00_axis_lite_bresp[0] = \<const0> ;
  assign s00_axis_lite_rresp[1] = \<const0> ;
  assign s00_axis_lite_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0 U0
       (.axi_rvalid_reg(s00_axis_lite_rvalid),
        .s00_axis_lite_aclk(s00_axis_lite_aclk),
        .s00_axis_lite_araddr(s00_axis_lite_araddr[3:2]),
        .s00_axis_lite_aresetn(s00_axis_lite_aresetn),
        .s00_axis_lite_arready(s00_axis_lite_arready),
        .s00_axis_lite_arvalid(s00_axis_lite_arvalid),
        .s00_axis_lite_awaddr(s00_axis_lite_awaddr[3:2]),
        .s00_axis_lite_awready(s00_axis_lite_awready),
        .s00_axis_lite_awvalid(s00_axis_lite_awvalid),
        .s00_axis_lite_bready(s00_axis_lite_bready),
        .s00_axis_lite_bvalid(s00_axis_lite_bvalid),
        .s00_axis_lite_rdata(s00_axis_lite_rdata),
        .s00_axis_lite_rready(s00_axis_lite_rready),
        .s00_axis_lite_wdata(s00_axis_lite_wdata),
        .s00_axis_lite_wready(s00_axis_lite_wready),
        .s00_axis_lite_wstrb(s00_axis_lite_wstrb),
        .s00_axis_lite_wvalid(s00_axis_lite_wvalid),
        .s00_axis_stream_aclk(s00_axis_stream_aclk),
        .s00_axis_stream_aresetn(s00_axis_stream_aresetn),
        .s00_axis_stream_tdata(s00_axis_stream_tdata),
        .s00_axis_stream_tready(s00_axis_stream_tready),
        .s00_axis_stream_tvalid(s00_axis_stream_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0
   (s00_axis_lite_arready,
    s00_axis_lite_wready,
    s00_axis_lite_awready,
    s00_axis_lite_rdata,
    axi_rvalid_reg,
    s00_axis_lite_bvalid,
    s00_axis_stream_tready,
    s00_axis_lite_aclk,
    s00_axis_lite_araddr,
    s00_axis_lite_arvalid,
    s00_axis_lite_awaddr,
    s00_axis_lite_awvalid,
    s00_axis_lite_wvalid,
    s00_axis_lite_wdata,
    s00_axis_lite_wstrb,
    s00_axis_lite_aresetn,
    s00_axis_lite_rready,
    s00_axis_lite_bready,
    s00_axis_stream_aresetn,
    s00_axis_stream_aclk,
    s00_axis_stream_tvalid,
    s00_axis_stream_tdata);
  output s00_axis_lite_arready;
  output s00_axis_lite_wready;
  output s00_axis_lite_awready;
  output [31:0]s00_axis_lite_rdata;
  output axi_rvalid_reg;
  output s00_axis_lite_bvalid;
  output s00_axis_stream_tready;
  input s00_axis_lite_aclk;
  input [1:0]s00_axis_lite_araddr;
  input s00_axis_lite_arvalid;
  input [1:0]s00_axis_lite_awaddr;
  input s00_axis_lite_awvalid;
  input s00_axis_lite_wvalid;
  input [31:0]s00_axis_lite_wdata;
  input [3:0]s00_axis_lite_wstrb;
  input s00_axis_lite_aresetn;
  input s00_axis_lite_rready;
  input s00_axis_lite_bready;
  input s00_axis_stream_aresetn;
  input s00_axis_stream_aclk;
  input s00_axis_stream_tvalid;
  input [31:0]s00_axis_stream_tdata;

  wire axi_rvalid_reg;
  wire [31:0]fifo_count;
  wire [31:0]fifo_data_out;
  wire m_axis_tready;
  wire s00_axis_lite_aclk;
  wire [1:0]s00_axis_lite_araddr;
  wire s00_axis_lite_aresetn;
  wire s00_axis_lite_arready;
  wire s00_axis_lite_arvalid;
  wire [1:0]s00_axis_lite_awaddr;
  wire s00_axis_lite_awready;
  wire s00_axis_lite_awvalid;
  wire s00_axis_lite_bready;
  wire s00_axis_lite_bvalid;
  wire [31:0]s00_axis_lite_rdata;
  wire s00_axis_lite_rready;
  wire [31:0]s00_axis_lite_wdata;
  wire s00_axis_lite_wready;
  wire [3:0]s00_axis_lite_wstrb;
  wire s00_axis_lite_wvalid;
  wire s00_axis_stream_aclk;
  wire s00_axis_stream_aresetn;
  wire [31:0]s00_axis_stream_tdata;
  wire s00_axis_stream_tready;
  wire s00_axis_stream_tvalid;
  wire NLW_fifo_m_axis_tvalid_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_0 fifo
       (.axis_rd_data_count(fifo_count),
        .m_axis_tdata(fifo_data_out),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(NLW_fifo_m_axis_tvalid_UNCONNECTED),
        .s_axis_aclk(s00_axis_stream_aclk),
        .s_axis_aresetn(s00_axis_stream_aresetn),
        .s_axis_tdata(s00_axis_stream_tdata),
        .s_axis_tready(s00_axis_stream_tready),
        .s_axis_tvalid(s00_axis_stream_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0_S00_AXIS_LITE simple_fifo_v1_0_S00_AXIS_LITE_inst
       (.S_AXI_ARREADY(s00_axis_lite_arready),
        .S_AXI_AWREADY(s00_axis_lite_awready),
        .S_AXI_WREADY(s00_axis_lite_wready),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axis_rd_data_count(fifo_count),
        .m_axis_tdata(fifo_data_out),
        .m_axis_tready(m_axis_tready),
        .s00_axis_lite_aclk(s00_axis_lite_aclk),
        .s00_axis_lite_araddr(s00_axis_lite_araddr),
        .s00_axis_lite_aresetn(s00_axis_lite_aresetn),
        .s00_axis_lite_arvalid(s00_axis_lite_arvalid),
        .s00_axis_lite_awaddr(s00_axis_lite_awaddr),
        .s00_axis_lite_awvalid(s00_axis_lite_awvalid),
        .s00_axis_lite_bready(s00_axis_lite_bready),
        .s00_axis_lite_bvalid(s00_axis_lite_bvalid),
        .s00_axis_lite_rdata(s00_axis_lite_rdata),
        .s00_axis_lite_rready(s00_axis_lite_rready),
        .s00_axis_lite_wdata(s00_axis_lite_wdata),
        .s00_axis_lite_wstrb(s00_axis_lite_wstrb),
        .s00_axis_lite_wvalid(s00_axis_lite_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0_S00_AXIS_LITE
   (S_AXI_ARREADY,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    s00_axis_lite_rdata,
    m_axis_tready,
    axi_rvalid_reg_0,
    s00_axis_lite_bvalid,
    s00_axis_lite_aclk,
    s00_axis_lite_araddr,
    s00_axis_lite_arvalid,
    s00_axis_lite_awaddr,
    s00_axis_lite_awvalid,
    s00_axis_lite_wvalid,
    s00_axis_lite_wdata,
    axis_rd_data_count,
    m_axis_tdata,
    s00_axis_lite_wstrb,
    s00_axis_lite_aresetn,
    s00_axis_lite_rready,
    s00_axis_lite_bready);
  output S_AXI_ARREADY;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output [31:0]s00_axis_lite_rdata;
  output m_axis_tready;
  output axi_rvalid_reg_0;
  output s00_axis_lite_bvalid;
  input s00_axis_lite_aclk;
  input [1:0]s00_axis_lite_araddr;
  input s00_axis_lite_arvalid;
  input [1:0]s00_axis_lite_awaddr;
  input s00_axis_lite_awvalid;
  input s00_axis_lite_wvalid;
  input [31:0]s00_axis_lite_wdata;
  input [31:0]axis_rd_data_count;
  input [31:0]m_axis_tdata;
  input [3:0]s00_axis_lite_wstrb;
  input s00_axis_lite_aresetn;
  input s00_axis_lite_rready;
  input s00_axis_lite_bready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire [31:0]axis_rd_data_count;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire p_7_in;
  wire [31:0]reg_data_out;
  wire s00_axis_lite_aclk;
  wire [1:0]s00_axis_lite_araddr;
  wire s00_axis_lite_aresetn;
  wire s00_axis_lite_arvalid;
  wire [1:0]s00_axis_lite_awaddr;
  wire s00_axis_lite_awvalid;
  wire s00_axis_lite_bready;
  wire s00_axis_lite_bvalid;
  wire [31:0]s00_axis_lite_rdata;
  wire s00_axis_lite_rready;
  wire [31:0]s00_axis_lite_wdata;
  wire [3:0]s00_axis_lite_wstrb;
  wire s00_axis_lite_wvalid;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFF700F700F700)) 
    aw_en_i_1
       (.I0(s00_axis_lite_wvalid),
        .I1(s00_axis_lite_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axis_lite_bready),
        .I5(s00_axis_lite_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axis_lite_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axis_lite_araddr[0]),
        .I1(s00_axis_lite_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axis_lite_araddr[1]),
        .I1(s00_axis_lite_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axis_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axis_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axis_lite_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axis_lite_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axis_lite_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axis_lite_awvalid),
        .I4(s00_axis_lite_wvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axis_lite_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axis_lite_awvalid),
        .I4(s00_axis_lite_wvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axis_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axis_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axis_lite_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWREADY),
        .I2(s00_axis_lite_awvalid),
        .I3(s00_axis_lite_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axis_lite_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axis_lite_wvalid),
        .I1(s00_axis_lite_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axis_lite_bready),
        .I5(s00_axis_lite_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axis_lite_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axis_lite_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(axis_rd_data_count[0]),
        .I1(m_axis_tdata[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(axis_rd_data_count[10]),
        .I1(m_axis_tdata[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(axis_rd_data_count[11]),
        .I1(m_axis_tdata[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(axis_rd_data_count[12]),
        .I1(m_axis_tdata[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(axis_rd_data_count[13]),
        .I1(m_axis_tdata[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(axis_rd_data_count[14]),
        .I1(m_axis_tdata[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(axis_rd_data_count[15]),
        .I1(m_axis_tdata[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(axis_rd_data_count[16]),
        .I1(m_axis_tdata[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(axis_rd_data_count[17]),
        .I1(m_axis_tdata[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(axis_rd_data_count[18]),
        .I1(m_axis_tdata[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(axis_rd_data_count[19]),
        .I1(m_axis_tdata[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(axis_rd_data_count[1]),
        .I1(m_axis_tdata[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(axis_rd_data_count[20]),
        .I1(m_axis_tdata[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(axis_rd_data_count[21]),
        .I1(m_axis_tdata[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(axis_rd_data_count[22]),
        .I1(m_axis_tdata[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(axis_rd_data_count[23]),
        .I1(m_axis_tdata[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(axis_rd_data_count[24]),
        .I1(m_axis_tdata[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(axis_rd_data_count[25]),
        .I1(m_axis_tdata[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(axis_rd_data_count[26]),
        .I1(m_axis_tdata[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(axis_rd_data_count[27]),
        .I1(m_axis_tdata[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(axis_rd_data_count[28]),
        .I1(m_axis_tdata[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(axis_rd_data_count[29]),
        .I1(m_axis_tdata[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(axis_rd_data_count[2]),
        .I1(m_axis_tdata[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(axis_rd_data_count[30]),
        .I1(m_axis_tdata[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axis_lite_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(axi_rvalid_reg_0),
        .O(p_7_in));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(axis_rd_data_count[31]),
        .I1(m_axis_tdata[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(axis_rd_data_count[3]),
        .I1(m_axis_tdata[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(axis_rd_data_count[4]),
        .I1(m_axis_tdata[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(axis_rd_data_count[5]),
        .I1(m_axis_tdata[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(axis_rd_data_count[6]),
        .I1(m_axis_tdata[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(axis_rd_data_count[7]),
        .I1(m_axis_tdata[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(axis_rd_data_count[8]),
        .I1(m_axis_tdata[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(axis_rd_data_count[9]),
        .I1(m_axis_tdata[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[0]),
        .Q(s00_axis_lite_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[10]),
        .Q(s00_axis_lite_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[11]),
        .Q(s00_axis_lite_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[12]),
        .Q(s00_axis_lite_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[13]),
        .Q(s00_axis_lite_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[14]),
        .Q(s00_axis_lite_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[15]),
        .Q(s00_axis_lite_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[16]),
        .Q(s00_axis_lite_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[17]),
        .Q(s00_axis_lite_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[18]),
        .Q(s00_axis_lite_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[19]),
        .Q(s00_axis_lite_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[1]),
        .Q(s00_axis_lite_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[20]),
        .Q(s00_axis_lite_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[21]),
        .Q(s00_axis_lite_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[22]),
        .Q(s00_axis_lite_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[23]),
        .Q(s00_axis_lite_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[24]),
        .Q(s00_axis_lite_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[25]),
        .Q(s00_axis_lite_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[26]),
        .Q(s00_axis_lite_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[27]),
        .Q(s00_axis_lite_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[28]),
        .Q(s00_axis_lite_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[29]),
        .Q(s00_axis_lite_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[2]),
        .Q(s00_axis_lite_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[30]),
        .Q(s00_axis_lite_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[31]),
        .Q(s00_axis_lite_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[3]),
        .Q(s00_axis_lite_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[4]),
        .Q(s00_axis_lite_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[5]),
        .Q(s00_axis_lite_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[6]),
        .Q(s00_axis_lite_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[7]),
        .Q(s00_axis_lite_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[8]),
        .Q(s00_axis_lite_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axis_lite_aclk),
        .CE(p_7_in),
        .D(reg_data_out[9]),
        .Q(s00_axis_lite_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axis_lite_arvalid),
        .I2(axi_rvalid_reg_0),
        .I3(s00_axis_lite_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axis_lite_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_WREADY),
        .I2(s00_axis_lite_awvalid),
        .I3(s00_axis_lite_wvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axis_lite_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    fifo_i_1
       (.I0(axi_rvalid_reg_0),
        .I1(S_AXI_ARREADY),
        .I2(s00_axis_lite_arvalid),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .O(m_axis_tready));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axis_lite_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axis_lite_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axis_lite_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axis_lite_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axis_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axis_lite_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axis_lite_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axis_lite_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axis_lite_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axis_lite_wvalid),
        .I3(s00_axis_lite_awvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axis_lite_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[7]),
        .D(s00_axis_lite_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[15]),
        .D(s00_axis_lite_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[15]),
        .D(s00_axis_lite_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[15]),
        .D(s00_axis_lite_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[15]),
        .D(s00_axis_lite_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[15]),
        .D(s00_axis_lite_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[15]),
        .D(s00_axis_lite_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[23]),
        .D(s00_axis_lite_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[23]),
        .D(s00_axis_lite_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[23]),
        .D(s00_axis_lite_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[23]),
        .D(s00_axis_lite_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[7]),
        .D(s00_axis_lite_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[23]),
        .D(s00_axis_lite_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[23]),
        .D(s00_axis_lite_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[23]),
        .D(s00_axis_lite_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[23]),
        .D(s00_axis_lite_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[31]),
        .D(s00_axis_lite_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[31]),
        .D(s00_axis_lite_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[31]),
        .D(s00_axis_lite_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[31]),
        .D(s00_axis_lite_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[31]),
        .D(s00_axis_lite_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[31]),
        .D(s00_axis_lite_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[7]),
        .D(s00_axis_lite_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[31]),
        .D(s00_axis_lite_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[31]),
        .D(s00_axis_lite_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[7]),
        .D(s00_axis_lite_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[7]),
        .D(s00_axis_lite_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[7]),
        .D(s00_axis_lite_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[7]),
        .D(s00_axis_lite_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[7]),
        .D(s00_axis_lite_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[15]),
        .D(s00_axis_lite_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axis_lite_aclk),
        .CE(p_1_in[15]),
        .D(s00_axis_lite_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
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
