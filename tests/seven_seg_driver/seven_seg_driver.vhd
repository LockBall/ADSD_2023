library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library seven_seg_driver;
use seven_seg_driver.all;
use seven_seg_driver_pkg.all;


entity seven_seg_driver is
  generic(
    INPUT_BIT_WIDTH: natural := 16 --:= 0
  );
  
  port(
    clock          : in  std_logic ;
    reset          : in  std_logic ;
    input_valid    : in  std_logic ; -- sw0 pin_C10
    input          : in  std_logic_vector(INPUT_BIT_WIDTH-1 downto 0) ;
    output_signals : out seven_seg_config_arr(get_num_segs(INPUT_BIT_WIDTH)-1 downto 0) := (others => lamps_off)
  );
  
end entity seven_seg_driver;


architecture syn of seven_seg_driver is
    
    signal test_clock_1_sec_cnt : natural range 0 to 50000000   := 50000000 ;
    signal test_cnt             : natural range 0 to 15         := 0; 
    signal test_input : std_logic_vector(INPUT_BIT_WIDTH-1 downto 0) ;
    
    
  begin
--    test_input <= x"8888" ;
    

    gen_seg_ctrls: for i in output_signals'range generate
        signal array_slice : std_logic_vector(3 downto 0) := (others => '0');
      begin
  
        process(clock) begin
          
            if rising_edge(clock) then

                if reset = '0' then
                    output_signals(i) <= lamps_off;

                else
                
                    if input_valid = '1' then
                        array_slice <= test_input(((i+1)*4)-1 downto (i*4));  -- input
                        -- Using the appropriate vector slice, get the segment configuration to represent the value.
                        output_signals(i) <= get_hex_digit(to_integer(unsigned(array_slice)));
                    end if;
                    
                end if;
                
            end if;
            
        end process;
    end generate;
    
    
-- ******************************** TEST ********************************
    process(clock)
      begin
      
        if rising_edge(clock) then
        
            if reset = '0' then

                test_clock_1_sec_cnt <= 0 ;
                test_cnt <= 0 ;
                
            elsif test_clock_1_sec_cnt = 50000000 then
                test_clock_1_sec_cnt <= 0;
                test_cnt             <= test_cnt + 1 ;
                
            else       
                test_clock_1_sec_cnt <= test_clock_1_sec_cnt + 1 ;                
            end if ;
--            
--            
            case test_cnt is
                when  0 => test_input <= x"0000" ;
                when  1 => test_input <= x"1111" ;
                when  2 => test_input <= x"2222" ;
                when  3 => test_input <= x"3333" ;
                when  4 => test_input <= x"4444" ;
                when  5 => test_input <= x"5555" ;
                when  6 => test_input <= x"6666" ;
                when  7 => test_input <= x"7777" ;
                when  8 => test_input <= x"8888" ;
                when  9 => test_input <= x"9999" ;
                when 10 => test_input <= x"AAAA" ;
                when 11 => test_input <= x"BBBB" ;
                when 12 => test_input <= x"CCCC" ;
                when 13 => test_input <= x"DDDD" ;
                when 14 => test_input <= x"EEEE" ;
                when 15 => test_input <= x"FFFF" ;
                when others => test_input <= x"4269";
            end case;  

        end if;
    end process;
--******************************** TEST ********************************              


                
end architecture syn;