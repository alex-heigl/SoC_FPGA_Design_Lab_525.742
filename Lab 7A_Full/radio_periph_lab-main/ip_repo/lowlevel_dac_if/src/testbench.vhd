-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity lowlevel_dac_intfc_tb is
end;

architecture bench of lowlevel_dac_intfc_tb is

  component lowlevel_dac_intfc 
  port (
          rst                 : in std_logic;
          clk125              : in std_logic;
          data_word           : in std_logic_vector(31 downto 0);
          sdata               : out std_logic;
          lrck                : out std_logic;
          bclk                : out std_logic;
          mclk                : out std_logic;
          latched_data        : out std_logic
         );
  end component;

  signal rst: std_logic;
  signal clk125: std_logic;
  signal data_word: std_logic_vector(31 downto 0);
  signal sdata: std_logic;
  signal lrck: std_logic;
  signal bclk: std_logic;
  signal mclk: std_logic;
  signal latched_data: std_logic ;

begin

  uut: lowlevel_dac_intfc port map ( rst          => rst,
                                     clk125       => clk125,
                                     data_word    => data_word,
                                     sdata        => sdata,
                                     lrck         => lrck,
                                     bclk         => bclk,
                                     mclk         => mclk,
                                     latched_data => latched_data );

  stimulus: process
  begin
    rst <= '1';
    data_word <= x"deadbeef";
    wait for 1 us;
    rst <= '0';
    wait;
  end process stimulus;


clkmaker : process
begin
   clk125 <= '0';
   wait for 4 ns;
   clk125 <= '1';
   wait for 4 ns;
end process clkmaker;

end bench;