library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seven_segment_agent  is
	generic (
		lamp_mode       : lamp_configuration := default_lamp_config;
		decimal_support : boolean            := TRUE;
		implementer     : natural range 0 to 255 := 100;
        revision        : natural range 0 to 255 := 0
	);
	port (
		clock      : in  std_logic;
		reset_n    : in  std_logic;
		address    : out std_logic_vector(1 downto 0);
		read       : out std_logic;
		read_data  : out std_logic_vector(31 downto 0);
        write      : in  std_logic;
        write_data : in  std_logic_vector(31 downto 0);
        lamps      : out std_logic_vector(41 downto 0)
	);
end entity seven_segment_agent;


architecture behave of seven_segment_agent is
    signal data    : std_logic_vector (31 downto 0);
    signal control : std_logic_vector (1 downto 0); -- only using 2 bits of control for now, 4 for EC


	-- seven_segment_config is 8 item record of std_logic
	function concat_ssc (
		ary_6_ssc: in array of seven_segment_config(0 to 5);
	) return std_logic_vector
	is
		variable ret_slv: std_logic_vector(41 downto 0);
	begin
		
		for i in ary_6_ssc'range loop    -- indexing may be wrong
			ret_slv(7*i+6 downto 7*i) := arr_in(i).g & arr_in(i).f & arr_in(i).e & arr_in(i).d & arr_in(i).c & arr_in(i).b & arr_in(i).a;
		end loop;

		return ret_slv;
	end function concat_ssc;

  begin
  
  
  hw_q_4_5 : process(clock) is
    begin
        
        if rising_edge(clock) then
        
            if reset_n = '0' then
                data    <= (others = '0');
                control <= (others = '0');
            elsif read = '1' then  -- read operation
                case address is
                    when "00" => -- data
                        read_data <= data;
                    when "01" =>  -- control
                        read_data <= (31 downto 2 => '0') & control;
                    when "10" =>  -- features (status)
                        read_data(31 downto 24) <= std_logic_vector(to_unsigned(implementer, 8));
                        read_data(23 downto 16) <= std_logic_vector(to_unsigned(revision, 8));
                        read_data(15 downto  4) <= (others => '0');

                        if lamp_configuration = common_anode then
                            read_data(3) <= '1';
                        else
                            read_data(3) <= '0';
                        end if;

                        read_data(2 downto  1) <= (others => '0');

                        if decimal_support = TRUE then
                            read_data(0) <= '1';
                        else
                            read_data(0) <= '0';
                        end if;

                    when "11" =>
                        read_data <= x"41445335";-- magic
                    
                    when others => null
                end case;
                
            elsif write = '1' then -- write operation
                case address is
                    when "00" => data <= write_data;-- data

                    -- set up to only write to bit 1 if decimal support is true
                    when "01" =>
                        control(0) <= write_data(0);
                        if decimal_support = TRUE then
                            control(1) <= write_data(1);
                        end if;

                    when others => null
                end case;
            end if;
        end if;
        
    end process hw_q_4_5;

end architecture behave;


