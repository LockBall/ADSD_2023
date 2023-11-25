library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity seven_seg is

    port(
        max10_clk1_50 : in  std_logic ;
        
        key : in std_logic_vector(0 downto 0);  -- push button for reset
        
        seg_0_0 : out std_logic;
        seg_0_1 : out std_logic;
        seg_0_2 : out std_logic;
        seg_0_3 : out std_logic;
        seg_0_4 : out std_logic;
        seg_0_5 : out std_logic;
        seg_0_6 : out std_logic
        
    );

end entity;


architecture behave of seven_seg is

    signal clock_50 : std_logic ;
    signal clock_10 : std_logic ;
    signal reset    : std_logic ;
    
    signal clock_10_ADC : std_logic ;
    
    signal count_time : std_logic_vector(26 downto 0) := (others => '0');
    
    signal bits_4      : std_logic_vector(3 downto 0) := (others => '0');
    signal segs        : std_logic_vector(0 to 6) := "1111110";
    
    signal count_0_seg : std_logic_vector(3 downto 0) := (others => '0');
    
    

  begin
  
    clock_50     <= max10_clk1_50 ;
    clock_10_ADC <= clock_10 ;
    
    reset <= key(0);

    seg_0_0 <= segs(0) ;
    seg_0_1 <= segs(1) ;
    seg_0_2 <= segs(2) ;
    seg_0_3 <= segs(3) ;
    seg_0_4 <= segs(4) ;
    seg_0_5 <= segs(5) ;
    seg_0_6 <= segs(6) ;

    bits_4 <= count_0_seg ;


    process(clock_50)
      begin
    
      if rising_edge(clock_50) then
      
        if (reset = '0') then
            count_time  <= (others => '0') ;
            count_0_seg <= (others => '0') ;
            
        elsif (count_time = 50000000) then -- 50000000
            count_0_seg <= count_0_seg + 1 ;
            count_time <= (others => '0') ;
        
        else
            count_time <= count_time + 1 ;        
            
        end if; -- (reset = '0')
                    
        
      end if; -- rising_edge(clock)
      
    end process; -- (clock)
    
    
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


    clock_10_inst : entity work.clock_10 PORT MAP (
		areset	 => reset,
		inclk0	 => clock_50,
		c0	     => clock_10,  -- clock out
		locked	 => open -- locked_sig
	);

    
end architecture behave;