library ieee;
use ieee.std_logic_1164.all;


entity seven_seg_tb is
end entity;

architecture sim of seven_seg_tb is
    signal max10_clk1_50_tb : std_logic := '0' ; -- must be initialized to have toggleable value
    
    signal seg_0_0_tb : std_logic ;
    signal seg_0_1_tb : std_logic ;
    signal seg_0_2_tb : std_logic ;
    signal seg_0_3_tb : std_logic ;
    signal seg_0_4_tb : std_logic ;
    signal seg_0_5_tb : std_logic ;
    signal seg_0_6_tb : std_logic ;
    
  begin
    max10_clk1_50_tb <= not max10_clk1_50_tb after 10 ns;  -- 50 MHz

    
    -- connect main code to testbench
    UUT : entity work.seven_seg port map(
        max10_clk1_50 => max10_clk1_50_tb,
        seg_0_0 => seg_0_0_tb,
        seg_0_1 => seg_0_1_tb,
        seg_0_2 => seg_0_2_tb,
        seg_0_3 => seg_0_3_tb,
        seg_0_4 => seg_0_4_tb,
        seg_0_5 => seg_0_5_tb,
        seg_0_6 => seg_0_6_tb
        
    );    
    
end architecture sim;

