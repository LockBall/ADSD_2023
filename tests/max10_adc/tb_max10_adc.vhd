library ieee;
use ieee.std_logic_1164.all;

entity tb_max10_adc is
end tb_max10_adc;


architecture tb of tb_max10_adc is

    signal max10_clk1_50 : std_logic := '0' ;  -- sim board clock
    signal pll_clk       : std_logic;
    signal soc           : std_logic;
    signal tsen          : std_logic;
    
    signal dout    : natural range 0 to 2**12 - 1;	-- data output
    signal eoc     : std_logic;					    -- end of conversion
    signal clk_dft : std_logic; 					-- clock output from clock divider

    signal clock_10 : std_logic;


    component clock_10_comp
        port(
            inclk0	: in  std_logic;
            c0		: out std_logic
        );
    end component;

    
  begin
  
    max10_clk1_50 <= not max10_clk1_50 after 10 ns;  -- 50 MHz
    
  
--    clock_10_inst : clock_10_comp port map(
--        inclk0 => max10_clk1_50,
--        c0	   => clock_10
--	);
  
    
    UUT : entity work.max10_adc port map(
        pll_clk         => clock_10,
        soc             => soc,
        tsen            => tsen,
        
        dout            => dout,
        eoc             => eoc,
        clk_dft         => clk_dft        
    );

end architecture tb;