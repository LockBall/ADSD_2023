library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library seven_seg_driver;
use seven_seg_driver.all;
use seven_seg_driver_pkg.all;


entity seven_seg_driver is
  generic(
    INPUT_BIT_WIDTH: natural := 0
  );
  port(
    clk             : in  std_logic;
    rst             : in  std_logic;
    input_valid     : in  std_logic;
    input           : in  std_logic_vector(INPUT_BIT_WIDTH-1 downto 0)                   := (others => '0');

    output_signals  : out seven_seg_config_arr(get_num_segs(INPUT_BIT_WIDTH)-1 downto 0) := (others => lamps_off)
  );
end entity seven_seg_driver;


architecture syn of seven_seg_driver is
  begin
    gen_SEG_CTRLS: for i in output_signals'range generate
    signal array_slice : std_logic_vector(3 downto 0);
    
  begin
  
    process(clk)
      begin
      if rising_edge(clk) then
        if rst = '1' then
          output_signals(i) <= lamps_off;
        else
          if input_valid = '1' then
            array_slice <= input(((i+1)*4)-1 downto (i*4));
            -- Using the appropriate vector slice, get the segment configuration to represent the value.
            output_signals(i) <= get_hex_digit(to_integer(unsigned(array_slice)));
          end if;
        end if;
      end if;
    end process;
  end generate;
end architecture syn;