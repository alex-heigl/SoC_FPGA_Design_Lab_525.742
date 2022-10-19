-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: ge.com:user:simple_fifo:1.0
-- IP Revision: 10

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_simple_fifo_0_0 IS
  PORT (
    s00_axis_lite_aclk : IN STD_LOGIC;
    s00_axis_lite_aresetn : IN STD_LOGIC;
    s00_axis_lite_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axis_lite_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axis_lite_awvalid : IN STD_LOGIC;
    s00_axis_lite_awready : OUT STD_LOGIC;
    s00_axis_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axis_lite_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axis_lite_wvalid : IN STD_LOGIC;
    s00_axis_lite_wready : OUT STD_LOGIC;
    s00_axis_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axis_lite_bvalid : OUT STD_LOGIC;
    s00_axis_lite_bready : IN STD_LOGIC;
    s00_axis_lite_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axis_lite_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axis_lite_arvalid : IN STD_LOGIC;
    s00_axis_lite_arready : OUT STD_LOGIC;
    s00_axis_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axis_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axis_lite_rvalid : OUT STD_LOGIC;
    s00_axis_lite_rready : IN STD_LOGIC;
    s00_axis_stream_aclk : IN STD_LOGIC;
    s00_axis_stream_aresetn : IN STD_LOGIC;
    s00_axis_stream_tready : OUT STD_LOGIC;
    s00_axis_stream_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axis_stream_tvalid : IN STD_LOGIC
  );
END design_1_simple_fifo_0_0;

ARCHITECTURE design_1_simple_fifo_0_0_arch OF design_1_simple_fifo_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_simple_fifo_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT simple_fifo_v1_0 IS
    GENERIC (
      C_S00_AXIS_STREAM_TDATA_WIDTH : INTEGER;
      C_S00_AXIS_LITE_DATA_WIDTH : INTEGER;
      C_S00_AXIS_LITE_ADDR_WIDTH : INTEGER
    );
    PORT (
      s00_axis_lite_aclk : IN STD_LOGIC;
      s00_axis_lite_aresetn : IN STD_LOGIC;
      s00_axis_lite_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axis_lite_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axis_lite_awvalid : IN STD_LOGIC;
      s00_axis_lite_awready : OUT STD_LOGIC;
      s00_axis_lite_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axis_lite_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axis_lite_wvalid : IN STD_LOGIC;
      s00_axis_lite_wready : OUT STD_LOGIC;
      s00_axis_lite_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axis_lite_bvalid : OUT STD_LOGIC;
      s00_axis_lite_bready : IN STD_LOGIC;
      s00_axis_lite_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axis_lite_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axis_lite_arvalid : IN STD_LOGIC;
      s00_axis_lite_arready : OUT STD_LOGIC;
      s00_axis_lite_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axis_lite_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axis_lite_rvalid : OUT STD_LOGIC;
      s00_axis_lite_rready : IN STD_LOGIC;
      s00_axis_stream_aclk : IN STD_LOGIC;
      s00_axis_stream_aresetn : IN STD_LOGIC;
      s00_axis_stream_tready : OUT STD_LOGIC;
      s00_axis_stream_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axis_stream_tvalid : IN STD_LOGIC
    );
  END COMPONENT simple_fifo_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_lite_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_LITE_CLK, ASSOCIATED_BUSIF S00_AXIS_LITE, ASSOCIATED_RESET s00_axis_lite_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXIS_LITE_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_lite_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_LITE_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXIS_LITE_RST RST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_lite_awaddr: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing" & 
"_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_lite_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_stream_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_STREAM_CLK, ASSOCIATED_BUSIF S00_AXIS_STREAM, ASSOCIATED_RESET s00_axis_stream_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_stream_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXIS_STREAM_CLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_stream_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_STREAM_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_stream_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXIS_STREAM_RST RST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_stream_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axis_stream_tready: SIGNAL IS "XIL_INTERFACENAME S00_AXIS_STREAM, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_stream_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_stream_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TVALID";
BEGIN
  U0 : simple_fifo_v1_0
    GENERIC MAP (
      C_S00_AXIS_STREAM_TDATA_WIDTH => 32,
      C_S00_AXIS_LITE_DATA_WIDTH => 32,
      C_S00_AXIS_LITE_ADDR_WIDTH => 4
    )
    PORT MAP (
      s00_axis_lite_aclk => s00_axis_lite_aclk,
      s00_axis_lite_aresetn => s00_axis_lite_aresetn,
      s00_axis_lite_awaddr => s00_axis_lite_awaddr,
      s00_axis_lite_awprot => s00_axis_lite_awprot,
      s00_axis_lite_awvalid => s00_axis_lite_awvalid,
      s00_axis_lite_awready => s00_axis_lite_awready,
      s00_axis_lite_wdata => s00_axis_lite_wdata,
      s00_axis_lite_wstrb => s00_axis_lite_wstrb,
      s00_axis_lite_wvalid => s00_axis_lite_wvalid,
      s00_axis_lite_wready => s00_axis_lite_wready,
      s00_axis_lite_bresp => s00_axis_lite_bresp,
      s00_axis_lite_bvalid => s00_axis_lite_bvalid,
      s00_axis_lite_bready => s00_axis_lite_bready,
      s00_axis_lite_araddr => s00_axis_lite_araddr,
      s00_axis_lite_arprot => s00_axis_lite_arprot,
      s00_axis_lite_arvalid => s00_axis_lite_arvalid,
      s00_axis_lite_arready => s00_axis_lite_arready,
      s00_axis_lite_rdata => s00_axis_lite_rdata,
      s00_axis_lite_rresp => s00_axis_lite_rresp,
      s00_axis_lite_rvalid => s00_axis_lite_rvalid,
      s00_axis_lite_rready => s00_axis_lite_rready,
      s00_axis_stream_aclk => s00_axis_stream_aclk,
      s00_axis_stream_aresetn => s00_axis_stream_aresetn,
      s00_axis_stream_tready => s00_axis_stream_tready,
      s00_axis_stream_tdata => s00_axis_stream_tdata,
      s00_axis_stream_tvalid => s00_axis_stream_tvalid
    );
END design_1_simple_fifo_0_0_arch;
