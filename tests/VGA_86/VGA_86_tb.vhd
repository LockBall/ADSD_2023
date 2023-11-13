library ieee;
use ieee.std_logic_1164.all;

entity VGA_86_TB is
end entity;

architecture sim of VGA_86_TB is

    signal max10_clk1_50_tb : std_logic := '0' ; -- must be initialized to have toggleable value
	
    signal key_tb    : std_logic_vector (0 downto 0);  -- reset
    
    signal vga_vs_tb : std_logic;                     -- video out (4 bit resolution)
    signal vga_hs_tb : std_logic;
    signal vga_r_tb, vga_g_tb, vga_b_tb : std_logic_vector(0 to 3);
        
  begin
  
    max10_clk1_50_tb <= not max10_clk1_50_tb after 10 ns;  -- 50 MHz
    key_tb <= "1", "0" after 5000 ns, "1" after 10000 ns ; -- low resets counter, high allows counts

    
    -- connect main code to testbench
    UUT : entity work.VGA_86 port map(
        max10_clk1_50 => max10_clk1_50_tb,
        key           => key_tb,
        vga_vs        => vga_vs_tb,
        vga_hs        => vga_hs_tb,
        vga_r         => vga_r_tb,
        vga_g         => vga_g_tb,
        vga_b         => vga_b_tb
    );

  
end architecture sim;