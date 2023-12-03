-- currently non-functional, does not make in GHDL
-- issue with VGA library

library ieee;
use ieee.std_logic_1164.all;

library vga;
use vga.vga_data.all;
use vga.de10_vga.all;

entity tb_mandelbrot is
end entity;


architecture sim of tb_mandelbrot is

	signal clock   : std_logic := '0' ; -- must be initialized to have toggleable value
	signal reset   : std_logic ;
    
    signal h_sync:	 std_logic;
    signal v_sync:	 std_logic;
    signal color:	 de10_color;
    
  begin

	UUT : entity work.mandelbrot port map(  -- connect main code to testbench
    	clock => clock,
		reset => reset,
        h_sync => h_sync,
        v_sync => v_sync,
        color => color
        
	);    
	 
		--reset <= '1', '0' after 25 ns, '1' after 35 ns ; -- low resets counter, high allows counts
	 
      clock <= not clock after 10 ns;
	-- 50 Mhz = 50,000,000 cycles / sec
   -- 50 cycles / us (1000 ns)
	-- 1 cycle / 20 ns
	-- 2 states / cycle ∴ 10 ns
    
--    write_ppm : process is
--    
--        file ppm_out_file : text open write_mode is "brot.ppm";
--        variable ppm_out_line : line;
--    
--    
--      begin
--      
--        -- ppm file header
--		write(ppm_out_file, "P3" & LF); -- magic number, , full color PPM, ASCII characters
--		write(ppm_out_file, "320 240" & LF); -- image width & height
--		write(ppm_out_file, "15" & LF); -- max colors
--        
--        write(
--            ppm_out_line,
--            natural'image(brot_red) & " " &
--            natural'image(brot_grn) & " " &
--            natural'image(brot_blu)
--        );
--        writeline(brot_out_file, brot_out_line);
--  
--    end process write_ppm;

    
end architecture sim;