-- VGA_86.vhd
--
-- top level for DE10-Lite board
--
-- FPGA Vision Remote Lab http://h-brs.de/fpga-vision-lab
-- (c) Marco Winzker, Hochschule Bonn-Rhein-Sieg, 02.05.2019
--
-- Scott Larson, Version 1.0 05/10/2013
-- https://forum.digikey.com/t/vga-controller-vhdl/12794
--


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity VGA_86 is

    port (
        max10_clk1_50  : in  std_logic;                     -- input clock 50 MHz
        key            : in  std_logic_vector(0 downto 0);  -- push button for reset
        vga_vs         : out std_logic;                     -- video out (4 bit resolution)
        vga_hs         : out std_logic;
        
        vga_r, vga_g, vga_b : out std_logic_vector(0 to 3)
    );
    
end entity VGA_86;


architecture shell of VGA_86 is

    signal clock_25 : std_logic;
    signal clock_50 : std_logic;
    signal clock_40 : std_logic;
    signal reset    : std_logic;
    signal reset_a, reset_b, reset_c, reset_d, reset_e : std_logic;
    signal r_sig, g_sig, b_sig : std_logic_vector(0 to 3);

  begin

    clock_50 <= max10_clk1_50;
    
    reset <= not key(0);
    
    vga_r <= r_sig;
    vga_g <= g_sig;
    vga_b <= b_sig;
    
    
    process
      begin
        wait until rising_edge(max10_clk1_50);
        
        if (reset = '1') then
            clock_25 <= '0';

        else
            clock_25 <= not clock_25;

      end if;
      
    end process;

    
    -- generic submodules
    -- image => this
    VGA_86_image : entity work.VGA_86_image
        port map (
            clock_25   => clock_25,
            clock_40   => clock_40,
            reset      => reset,
            h_sync_out => vga_hs,
            v_sync_out => vga_vs,
            blank_out  => open, 
            r_out      => r_sig,
            g_out      => g_sig,
            b_out      => b_sig
        );

    
    clock_40_inst : entity work.clock_40 PORT MAP (
		areset	 => reset,
		inclk0	 => clock_50,
		c0	     => clock_40,
		locked	 => open -- locked_sig
	);

end architecture shell;
