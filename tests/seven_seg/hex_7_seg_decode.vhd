library ieee;
use ieee.std_logic_1164.all;

entity hex_7_seg_behave is

    port(
        bits_4 : in  std_logic_vector(3 downto 0);
        segs   : out std_logic_vector(6 downto 0)
    
    );

end hex_7_seg_behave;

architecture behave of hex_7_seg_behave is

  begin
  
    process(bits_4)
      begin
      
        case bits_4 is
            when X"0" => segs <= "0000001"; -- 0
            when X"1" => segs <= "1001111"; -- 1
            when X"2" => segs <= "0010010"; -- 2
            when X"3" => segs <= "0000110"; -- 3
            when X"4" => segs <= "1001100"; -- 4
            when X"5" => segs <= "0100100"; -- 5
            when X"6" => segs <= "0100000"; -- 6
            when X"7" => segs <= "0001101"; -- 7
            when X"8" => segs <= "0000000"; -- 8
            when X"9" => segs <= "0000100"; -- 9
            when X"A" => segs <= "0001000"; -- A
            when X"B" => segs <= "1100000"; -- B
            when X"C" => segs <= "0110001"; -- C
            when X"D" => segs <= "1000010"; -- D
            when X"E" => segs <= "0110000"; -- E
            when X"F" => segs <= "0111000"; -- F
            when others => segs <= "1111110"; -- --
        end case;
        
    end process; -- (bits_4)
        

end architecture behave;
