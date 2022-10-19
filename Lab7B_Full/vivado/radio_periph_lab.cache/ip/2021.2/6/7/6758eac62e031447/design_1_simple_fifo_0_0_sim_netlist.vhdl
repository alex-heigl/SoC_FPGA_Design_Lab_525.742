-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Aug 17 17:52:11 2022
-- Host        : GBL6BRV2E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_simple_fifo_0_0_sim_netlist.vhdl
-- Design      : design_1_simple_fifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0_S00_AXIS_LITE is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    s00_axis_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s00_axis_lite_bvalid : out STD_LOGIC;
    s00_axis_lite_aclk : in STD_LOGIC;
    s00_axis_lite_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axis_lite_arvalid : in STD_LOGIC;
    s00_axis_lite_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axis_lite_awvalid : in STD_LOGIC;
    s00_axis_lite_wvalid : in STD_LOGIC;
    s00_axis_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_lite_aresetn : in STD_LOGIC;
    s00_axis_lite_rready : in STD_LOGIC;
    s00_axis_lite_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0_S00_AXIS_LITE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0_S00_AXIS_LITE is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal p_7_in : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axis_lite_bvalid\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of fifo_i_1 : label is "soft_lutpair0";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axis_lite_bvalid <= \^s00_axis_lite_bvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF700F700F700"
    )
        port map (
      I0 => s00_axis_lite_wvalid,
      I1 => s00_axis_lite_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axis_lite_bready,
      I5 => \^s00_axis_lite_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axis_lite_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axis_lite_araddr(0),
      I1 => s00_axis_lite_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axis_lite_araddr(1),
      I1 => s00_axis_lite_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axis_lite_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axis_lite_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_lite_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axis_lite_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axis_lite_awvalid,
      I4 => s00_axis_lite_wvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axis_lite_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axis_lite_awvalid,
      I4 => s00_axis_lite_wvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_lite_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => s00_axis_lite_awvalid,
      I3 => s00_axis_lite_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axis_lite_wvalid,
      I1 => s00_axis_lite_awvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axis_lite_bready,
      I5 => \^s00_axis_lite_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axis_lite_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(0),
      I1 => m_axis_tdata(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(10),
      I1 => m_axis_tdata(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(11),
      I1 => m_axis_tdata(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(12),
      I1 => m_axis_tdata(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(13),
      I1 => m_axis_tdata(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(14),
      I1 => m_axis_tdata(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(15),
      I1 => m_axis_tdata(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(16),
      I1 => m_axis_tdata(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(17),
      I1 => m_axis_tdata(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(18),
      I1 => m_axis_tdata(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(19),
      I1 => m_axis_tdata(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(1),
      I1 => m_axis_tdata(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(20),
      I1 => m_axis_tdata(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(21),
      I1 => m_axis_tdata(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(22),
      I1 => m_axis_tdata(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(23),
      I1 => m_axis_tdata(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(24),
      I1 => m_axis_tdata(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(25),
      I1 => m_axis_tdata(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(26),
      I1 => m_axis_tdata(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(27),
      I1 => m_axis_tdata(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(28),
      I1 => m_axis_tdata(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(29),
      I1 => m_axis_tdata(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(2),
      I1 => m_axis_tdata(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(30),
      I1 => m_axis_tdata(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axis_lite_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^axi_rvalid_reg_0\,
      O => p_7_in
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(31),
      I1 => m_axis_tdata(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(3),
      I1 => m_axis_tdata(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(4),
      I1 => m_axis_tdata(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(5),
      I1 => m_axis_tdata(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(6),
      I1 => m_axis_tdata(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(7),
      I1 => m_axis_tdata(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(8),
      I1 => m_axis_tdata(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => axis_rd_data_count(9),
      I1 => m_axis_tdata(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(0),
      Q => s00_axis_lite_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(10),
      Q => s00_axis_lite_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(11),
      Q => s00_axis_lite_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(12),
      Q => s00_axis_lite_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(13),
      Q => s00_axis_lite_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(14),
      Q => s00_axis_lite_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(15),
      Q => s00_axis_lite_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(16),
      Q => s00_axis_lite_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(17),
      Q => s00_axis_lite_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(18),
      Q => s00_axis_lite_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(19),
      Q => s00_axis_lite_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(1),
      Q => s00_axis_lite_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(20),
      Q => s00_axis_lite_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(21),
      Q => s00_axis_lite_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(22),
      Q => s00_axis_lite_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(23),
      Q => s00_axis_lite_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(24),
      Q => s00_axis_lite_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(25),
      Q => s00_axis_lite_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(26),
      Q => s00_axis_lite_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(27),
      Q => s00_axis_lite_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(28),
      Q => s00_axis_lite_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(29),
      Q => s00_axis_lite_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(2),
      Q => s00_axis_lite_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(30),
      Q => s00_axis_lite_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(31),
      Q => s00_axis_lite_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(3),
      Q => s00_axis_lite_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(4),
      Q => s00_axis_lite_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(5),
      Q => s00_axis_lite_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(6),
      Q => s00_axis_lite_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(7),
      Q => s00_axis_lite_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(8),
      Q => s00_axis_lite_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_7_in,
      D => reg_data_out(9),
      Q => s00_axis_lite_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axis_lite_arvalid,
      I2 => \^axi_rvalid_reg_0\,
      I3 => s00_axis_lite_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_wready\,
      I2 => s00_axis_lite_awvalid,
      I3 => s00_axis_lite_wvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
fifo_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => \^s_axi_arready\,
      I2 => s00_axis_lite_arvalid,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      O => m_axis_tready
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axis_lite_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axis_lite_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axis_lite_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axis_lite_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axis_lite_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axis_lite_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axis_lite_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axis_lite_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axis_lite_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axis_lite_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axis_lite_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axis_lite_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axis_lite_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axis_lite_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axis_lite_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axis_lite_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axis_lite_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axis_lite_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axis_lite_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axis_lite_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axis_lite_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axis_lite_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axis_lite_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axis_lite_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axis_lite_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axis_lite_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axis_lite_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axis_lite_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axis_lite_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axis_lite_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axis_lite_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axis_lite_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axis_lite_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axis_lite_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axis_lite_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axis_lite_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axis_lite_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axis_lite_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axis_lite_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(31)
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axis_lite_wvalid,
      I3 => s00_axis_lite_awvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axis_lite_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(7),
      D => s00_axis_lite_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(15),
      D => s00_axis_lite_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(15),
      D => s00_axis_lite_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(15),
      D => s00_axis_lite_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(15),
      D => s00_axis_lite_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(15),
      D => s00_axis_lite_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(15),
      D => s00_axis_lite_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(23),
      D => s00_axis_lite_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(23),
      D => s00_axis_lite_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(23),
      D => s00_axis_lite_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(23),
      D => s00_axis_lite_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(7),
      D => s00_axis_lite_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(23),
      D => s00_axis_lite_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(23),
      D => s00_axis_lite_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(23),
      D => s00_axis_lite_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(23),
      D => s00_axis_lite_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(31),
      D => s00_axis_lite_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(31),
      D => s00_axis_lite_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(31),
      D => s00_axis_lite_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(31),
      D => s00_axis_lite_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(31),
      D => s00_axis_lite_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(31),
      D => s00_axis_lite_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(7),
      D => s00_axis_lite_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(31),
      D => s00_axis_lite_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(31),
      D => s00_axis_lite_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(7),
      D => s00_axis_lite_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(7),
      D => s00_axis_lite_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(7),
      D => s00_axis_lite_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(7),
      D => s00_axis_lite_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(7),
      D => s00_axis_lite_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(15),
      D => s00_axis_lite_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_lite_aclk,
      CE => p_1_in(15),
      D => s00_axis_lite_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0 is
  port (
    s00_axis_lite_arready : out STD_LOGIC;
    s00_axis_lite_wready : out STD_LOGIC;
    s00_axis_lite_awready : out STD_LOGIC;
    s00_axis_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rvalid_reg : out STD_LOGIC;
    s00_axis_lite_bvalid : out STD_LOGIC;
    s00_axis_stream_tready : out STD_LOGIC;
    s00_axis_lite_aclk : in STD_LOGIC;
    s00_axis_lite_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axis_lite_arvalid : in STD_LOGIC;
    s00_axis_lite_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axis_lite_awvalid : in STD_LOGIC;
    s00_axis_lite_wvalid : in STD_LOGIC;
    s00_axis_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_lite_aresetn : in STD_LOGIC;
    s00_axis_lite_rready : in STD_LOGIC;
    s00_axis_lite_bready : in STD_LOGIC;
    s00_axis_stream_aresetn : in STD_LOGIC;
    s00_axis_stream_aclk : in STD_LOGIC;
    s00_axis_stream_tvalid : in STD_LOGIC;
    s00_axis_stream_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_0;
  signal fifo_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m_axis_tready : STD_LOGIC;
  signal NLW_fifo_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
begin
fifo: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_0
     port map (
      axis_rd_data_count(31 downto 0) => fifo_count(31 downto 0),
      m_axis_tdata(31 downto 0) => fifo_data_out(31 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => NLW_fifo_m_axis_tvalid_UNCONNECTED,
      s_axis_aclk => s00_axis_stream_aclk,
      s_axis_aresetn => s00_axis_stream_aresetn,
      s_axis_tdata(31 downto 0) => s00_axis_stream_tdata(31 downto 0),
      s_axis_tready => s00_axis_stream_tready,
      s_axis_tvalid => s00_axis_stream_tvalid
    );
simple_fifo_v1_0_S00_AXIS_LITE_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0_S00_AXIS_LITE
     port map (
      S_AXI_ARREADY => s00_axis_lite_arready,
      S_AXI_AWREADY => s00_axis_lite_awready,
      S_AXI_WREADY => s00_axis_lite_wready,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      axis_rd_data_count(31 downto 0) => fifo_count(31 downto 0),
      m_axis_tdata(31 downto 0) => fifo_data_out(31 downto 0),
      m_axis_tready => m_axis_tready,
      s00_axis_lite_aclk => s00_axis_lite_aclk,
      s00_axis_lite_araddr(1 downto 0) => s00_axis_lite_araddr(1 downto 0),
      s00_axis_lite_aresetn => s00_axis_lite_aresetn,
      s00_axis_lite_arvalid => s00_axis_lite_arvalid,
      s00_axis_lite_awaddr(1 downto 0) => s00_axis_lite_awaddr(1 downto 0),
      s00_axis_lite_awvalid => s00_axis_lite_awvalid,
      s00_axis_lite_bready => s00_axis_lite_bready,
      s00_axis_lite_bvalid => s00_axis_lite_bvalid,
      s00_axis_lite_rdata(31 downto 0) => s00_axis_lite_rdata(31 downto 0),
      s00_axis_lite_rready => s00_axis_lite_rready,
      s00_axis_lite_wdata(31 downto 0) => s00_axis_lite_wdata(31 downto 0),
      s00_axis_lite_wstrb(3 downto 0) => s00_axis_lite_wstrb(3 downto 0),
      s00_axis_lite_wvalid => s00_axis_lite_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axis_stream_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_stream_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_stream_tlast : in STD_LOGIC;
    s00_axis_stream_tvalid : in STD_LOGIC;
    s00_axis_stream_tready : out STD_LOGIC;
    s00_axis_stream_aclk : in STD_LOGIC;
    s00_axis_stream_aresetn : in STD_LOGIC;
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
    s00_axis_lite_aclk : in STD_LOGIC;
    s00_axis_lite_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_simple_fifo_0_0,simple_fifo_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "simple_fifo_v1_0,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axis_lite_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_LITE_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axis_lite_aclk : signal is "XIL_INTERFACENAME S00_AXIS_LITE_CLK, ASSOCIATED_BUSIF S00_AXIS_LITE, ASSOCIATED_RESET s00_axis_lite_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_lite_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_LITE_RST RST";
  attribute x_interface_parameter of s00_axis_lite_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_LITE_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_lite_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARREADY";
  attribute x_interface_info of s00_axis_lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARVALID";
  attribute x_interface_info of s00_axis_lite_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWREADY";
  attribute x_interface_info of s00_axis_lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWVALID";
  attribute x_interface_info of s00_axis_lite_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE BREADY";
  attribute x_interface_info of s00_axis_lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE BVALID";
  attribute x_interface_info of s00_axis_lite_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RREADY";
  attribute x_interface_info of s00_axis_lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RVALID";
  attribute x_interface_info of s00_axis_lite_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WREADY";
  attribute x_interface_info of s00_axis_lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WVALID";
  attribute x_interface_info of s00_axis_stream_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_STREAM_CLK CLK";
  attribute x_interface_parameter of s00_axis_stream_aclk : signal is "XIL_INTERFACENAME S00_AXIS_STREAM_CLK, ASSOCIATED_BUSIF S00_AXIS_STREAM, ASSOCIATED_RESET s00_axis_stream_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_stream_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_STREAM_RST RST";
  attribute x_interface_parameter of s00_axis_stream_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_STREAM_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_stream_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TLAST";
  attribute x_interface_info of s00_axis_stream_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TREADY";
  attribute x_interface_info of s00_axis_stream_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TVALID";
  attribute x_interface_info of s00_axis_lite_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARADDR";
  attribute x_interface_info of s00_axis_lite_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE ARPROT";
  attribute x_interface_info of s00_axis_lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWADDR";
  attribute x_interface_parameter of s00_axis_lite_awaddr : signal is "XIL_INTERFACENAME S00_AXIS_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_lite_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE AWPROT";
  attribute x_interface_info of s00_axis_lite_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE BRESP";
  attribute x_interface_info of s00_axis_lite_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RDATA";
  attribute x_interface_info of s00_axis_lite_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE RRESP";
  attribute x_interface_info of s00_axis_lite_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WDATA";
  attribute x_interface_info of s00_axis_lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXIS_LITE WSTRB";
  attribute x_interface_info of s00_axis_stream_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TDATA";
  attribute x_interface_parameter of s00_axis_stream_tdata : signal is "XIL_INTERFACENAME S00_AXIS_STREAM, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_stream_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS_STREAM TSTRB";
begin
  s00_axis_lite_bresp(1) <= \<const0>\;
  s00_axis_lite_bresp(0) <= \<const0>\;
  s00_axis_lite_rresp(1) <= \<const0>\;
  s00_axis_lite_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_simple_fifo_v1_0
     port map (
      axi_rvalid_reg => s00_axis_lite_rvalid,
      s00_axis_lite_aclk => s00_axis_lite_aclk,
      s00_axis_lite_araddr(1 downto 0) => s00_axis_lite_araddr(3 downto 2),
      s00_axis_lite_aresetn => s00_axis_lite_aresetn,
      s00_axis_lite_arready => s00_axis_lite_arready,
      s00_axis_lite_arvalid => s00_axis_lite_arvalid,
      s00_axis_lite_awaddr(1 downto 0) => s00_axis_lite_awaddr(3 downto 2),
      s00_axis_lite_awready => s00_axis_lite_awready,
      s00_axis_lite_awvalid => s00_axis_lite_awvalid,
      s00_axis_lite_bready => s00_axis_lite_bready,
      s00_axis_lite_bvalid => s00_axis_lite_bvalid,
      s00_axis_lite_rdata(31 downto 0) => s00_axis_lite_rdata(31 downto 0),
      s00_axis_lite_rready => s00_axis_lite_rready,
      s00_axis_lite_wdata(31 downto 0) => s00_axis_lite_wdata(31 downto 0),
      s00_axis_lite_wready => s00_axis_lite_wready,
      s00_axis_lite_wstrb(3 downto 0) => s00_axis_lite_wstrb(3 downto 0),
      s00_axis_lite_wvalid => s00_axis_lite_wvalid,
      s00_axis_stream_aclk => s00_axis_stream_aclk,
      s00_axis_stream_aresetn => s00_axis_stream_aresetn,
      s00_axis_stream_tdata(31 downto 0) => s00_axis_stream_tdata(31 downto 0),
      s00_axis_stream_tready => s00_axis_stream_tready,
      s00_axis_stream_tvalid => s00_axis_stream_tvalid
    );
end STRUCTURE;
