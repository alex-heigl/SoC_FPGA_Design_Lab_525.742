library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity lowlevel_dac_intfc is 
generic ( channels : in integer := 2 );
port (
        rst                 : in std_logic; -- active high asynchronous reset
        clk125              : in std_logic; -- the clock for all flops in your design
        data_word           : in std_logic_vector(channels*16-1 downto 0); -- 32 bit input data
        sdata               : out std_logic; -- serial data out to the DAC
        lrck                : out std_logic;  -- a 50% duty cycle signal aligned as shown below
        bclk                : out std_logic; -- the dac clocks sdata on the rising edge of this clock
        mclk                : out std_logic; -- a 12.5MHz clock output with arbitrary phase
        latched_data        : out std_logic; -- 1 clock wide pulse which indicates when you should change data_word
        valid               : in std_logic   -- ignore
       );
end lowlevel_dac_intfc;


architecture Behavioral of lowlevel_dac_intfc is

signal toggle_clk12p5 : std_Logic;
signal toggle_bclk : std_logic;
signal bitcount : unsigned(4 downto 0);
signal bclk_i : std_logic;
signal shiftreg : unsigned(31 downto 0);
signal bclk_falling_edge : std_logic;
signal clk5_pulse : std_logic;
signal clk12p5 : std_Logic := '0';
signal selected_data_word : std_logic_vector(channels*16-1 downto 0);


begin

 -- we also need to send a master clock to the codec, or nothing will work
 -- lets make the clock = 125MHz / 10 = 12.5MHz
 clk12p5 <= not clk12p5 when rising_edge(clk125) and clk5_pulse = '1';
 make12p5MHz: entity work.clkdivider generic map (divideby => 5)
    port map (clk => clk125, reset=> rst, pulseout => clk5_pulse);

-- Now, lets make the bclk signal, which will be the main clk125 divided by 80 
bclk_tim : entity work.clkdivider generic map (divideby => 40)
                        port map (clk => clk125, reset => rst, pulseout => toggle_bclk);
                    
bclk_falling_edge <= toggle_bclk and bclk_i;

bclk_maker : process(clk125,rst)
begin
    if rst = '1' then
        bclk_i <= '0';
    elsif rising_edge(clk125) then
        if toggle_bclk = '1' then
            bclk_i <= not bclk_i;
        end if;
     end if;
 end process bclk_maker;
 
 -- now, the rest of the design is just a simple machine that repeats every 32 bclks
 -- we still clock on clk125 of course, but will only change things at the same time we
 -- are creating a falling edge of bclk
 -- bitcount keeps track of 32 positions.  LRCK is high for 0-15, low for 16-31
 -- new data is loaded into the shift register at bitcount=1 
 
 shifterproc : process(clk125,rst)
 begin
    if rst = '1' then
        shiftreg <= x"00000000";
        latched_data <= '0';
        lrck <= '0';
        bitcount <= (others=>'0');
    elsif rising_edge(clk125) then
        latched_data <= '0';
        if bclk_falling_edge = '1' then
            bitcount <= bitcount+1;
            shiftreg <= shift_left(shiftreg,1);
            if bitcount = 0 then
                lrck <= '1';
            elsif bitcount = 1 then  -- grab a new data word 
                if (channels = 2)then
                    shiftreg <= unsigned(data_word);
                else
                    shiftreg <= unsigned(data_word & data_word);
                end if; 
                latched_data <= '1';
            elsif bitcount = 16 then
                lrck <= '0';
            end if;
        end if;
    end if;
 end process shifterproc;
 
 sdata <= shiftreg(31);
 mclk <= clk12p5; 
 bclk <= bclk_i; 


   
end Behavioral;
