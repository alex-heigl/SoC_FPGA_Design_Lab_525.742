library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity simple_fifo_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXIS_LITE
		C_S00_AXIS_LITE_DATA_WIDTH	: integer	:= 32;
		C_S00_AXIS_LITE_ADDR_WIDTH	: integer	:= 4;

		-- Parameters of Axi Slave Bus Interface S00_AXIS_STREAM
		C_S00_AXIS_STREAM_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXIS_LITE
		s00_axis_lite_aclk	: in std_logic;
		s00_axis_lite_aresetn	: in std_logic;
		s00_axis_lite_awaddr	: in std_logic_vector(C_S00_AXIS_LITE_ADDR_WIDTH-1 downto 0);
		s00_axis_lite_awprot	: in std_logic_vector(2 downto 0);
		s00_axis_lite_awvalid	: in std_logic;
		s00_axis_lite_awready	: out std_logic;
		s00_axis_lite_wdata	: in std_logic_vector(C_S00_AXIS_LITE_DATA_WIDTH-1 downto 0);
		s00_axis_lite_wstrb	: in std_logic_vector((C_S00_AXIS_LITE_DATA_WIDTH/8)-1 downto 0);
		s00_axis_lite_wvalid	: in std_logic;
		s00_axis_lite_wready	: out std_logic;
		s00_axis_lite_bresp	: out std_logic_vector(1 downto 0);
		s00_axis_lite_bvalid	: out std_logic;
		s00_axis_lite_bready	: in std_logic;
		s00_axis_lite_araddr	: in std_logic_vector(C_S00_AXIS_LITE_ADDR_WIDTH-1 downto 0);
		s00_axis_lite_arprot	: in std_logic_vector(2 downto 0);
		s00_axis_lite_arvalid	: in std_logic;
		s00_axis_lite_arready	: out std_logic;
		s00_axis_lite_rdata	: out std_logic_vector(C_S00_AXIS_LITE_DATA_WIDTH-1 downto 0);
		s00_axis_lite_rresp	: out std_logic_vector(1 downto 0);
		s00_axis_lite_rvalid	: out std_logic;
		s00_axis_lite_rready	: in std_logic;

		-- Ports of Axi Slave Bus Interface S00_AXIS_STREAM
		s00_axis_stream_aclk	: in std_logic;
		s00_axis_stream_aresetn	: in std_logic;
		s00_axis_stream_tready	: out std_logic;
		s00_axis_stream_tdata	: in std_logic_vector(C_S00_AXIS_STREAM_TDATA_WIDTH-1 downto 0);
		s00_axis_stream_tvalid	: in std_logic
	);
end simple_fifo_v1_0;

architecture arch_imp of simple_fifo_v1_0 is
    signal m_axis_tvalid : std_logic;  
    signal m_axis_tready : std_logic; 
    signal s00_axis_stream_tvalidVector : std_logic_vector(0 downto 0); 
    signal m_axis_tdata : std_logic_vector(31 downto 0); -- := x"00000000"; 
    signal axis_rd_data_count : std_logic_vector(31 downto 0); -- := x"00000000"; 
	-- component declaration
	component simple_fifo_v1_0_S00_AXIS_LITE is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY  : in std_logic;
		fifo_data_out : in std_logic_vector(31 downto 0);
		fifo_count : in std_logic_vector(31 downto 0);
		fifo_tready : out std_logic
		);
	end component simple_fifo_v1_0_S00_AXIS_LITE;

	component simple_fifo_v1_0_S00_AXIS_STREAM is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component simple_fifo_v1_0_S00_AXIS_STREAM;
	
	COMPONENT ila_0 is
        PORT (
            clk : IN STD_LOGIC;
            probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            probe3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT  ;
	
component axis_data_fifo_0 is 
  PORT (
    s_axis_aresetn : IN STD_LOGIC;
    s_axis_aclk : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    axis_rd_data_count : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
end component axis_data_fifo_0;

begin

-- Instantiation of Axi Bus Interface S00_AXIS_LITE
simple_fifo_v1_0_S00_AXIS_LITE_inst : simple_fifo_v1_0_S00_AXIS_LITE
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXIS_LITE_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXIS_LITE_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s00_axis_lite_aclk,
		S_AXI_ARESETN	=> s00_axis_lite_aresetn,
		S_AXI_AWADDR	=> s00_axis_lite_awaddr,
		S_AXI_AWPROT	=> s00_axis_lite_awprot,
		S_AXI_AWVALID	=> s00_axis_lite_awvalid,
		S_AXI_AWREADY	=> s00_axis_lite_awready,
		S_AXI_WDATA	=> s00_axis_lite_wdata,
		S_AXI_WSTRB	=> s00_axis_lite_wstrb,
		S_AXI_WVALID	=> s00_axis_lite_wvalid,
		S_AXI_WREADY	=> s00_axis_lite_wready,
		S_AXI_BRESP	=> s00_axis_lite_bresp,
		S_AXI_BVALID	=> s00_axis_lite_bvalid,
		S_AXI_BREADY	=> s00_axis_lite_bready,
		S_AXI_ARADDR	=> s00_axis_lite_araddr,
		S_AXI_ARPROT	=> s00_axis_lite_arprot,
		S_AXI_ARVALID	=> s00_axis_lite_arvalid,
		S_AXI_ARREADY	=> s00_axis_lite_arready,
		S_AXI_RDATA	=> s00_axis_lite_rdata,
		S_AXI_RRESP	=> s00_axis_lite_rresp,
		S_AXI_RVALID	=> s00_axis_lite_rvalid,
		S_AXI_RREADY	=> s00_axis_lite_rready,
		fifo_data_out   => m_axis_tdata, 
		fifo_count      => axis_rd_data_count,
		fifo_tready     => m_axis_tready
	);

-- Instantiation of Axi Bus Interface S00_AXIS_STREAM
--simple_fifo_v1_0_S00_AXIS_STREAM_inst : simple_fifo_v1_0_S00_AXIS_STREAM
--	generic map (
--		C_S_AXIS_TDATA_WIDTH	=> C_S00_AXIS_STREAM_TDATA_WIDTH
--	)
--	port map (
--		S_AXIS_ACLK	=> s00_axis_stream_aclk,
--		S_AXIS_ARESETN	=> s00_axis_stream_aresetn,
--		S_AXIS_TREADY	=> s00_axis_stream_tready,
--		S_AXIS_TDATA	=> s00_axis_stream_tdata,
--		S_AXIS_TSTRB	=> s00_axis_stream_tstrb,
--		S_AXIS_TLAST	=> s00_axis_stream_tlast,
--		S_AXIS_TVALID	=> s00_axis_stream_tvalid
--	);

ila : ila_0
PORT MAP (
	clk => s00_axis_stream_aclk,
	probe0(0) => m_axis_tvalid, 
	probe1(0) => m_axis_tready, 
	probe2 => m_axis_tdata,
	probe3 => axis_rd_data_count,
	probe4(0) => s00_axis_stream_tvalid,
	probe5 => s00_axis_stream_tdata
);
	
fifo : axis_data_fifo_0
  PORT MAP (
    s_axis_aresetn => s00_axis_stream_aresetn,
    s_axis_aclk => s00_axis_stream_aclk,
    s_axis_tvalid => s00_axis_stream_tvalid,
    s_axis_tready => s00_axis_stream_tready,
    s_axis_tdata => s00_axis_stream_tdata,
    m_axis_tvalid => m_axis_tvalid,
    m_axis_tready => m_axis_tready,
    m_axis_tdata => m_axis_tdata,
    axis_rd_data_count => axis_rd_data_count
  );

	-- Add user logic here

	-- User logic ends

end arch_imp;
