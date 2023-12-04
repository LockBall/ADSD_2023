library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seven_segment_agent  is
	generic (
		lamp_mode       : lamp_configuration := default_lamp_config;
		decimal_support : boolean            := TRUE;
		implementer     : natural            := range(0 to 255);
        revision        : natural            := range(0 to 255) := 0
	);
	port (
		clock      : in  std_logic;
		reset_n    : in  std_logic;
		address    : out std_logic_vector;
		read       : out std_logic;
		read_data  : out std_logic_vector;
        write      : in  std_logic;
        write_data : in  std_logic_vector;
        lamps      : out std_logic_vector
	);
end entity seven_segment_agent;


architecture behave of seven_segment_agent is
    signal data    : std_logic_vector (31 downto 0);
    signal control : std_logic_vector (31 downto 0);


	-- seven_segment_config is 8 item record of std_logic
	function concat_ssc (
		ary_6_ssc: in array of seven_segment_config(0 to 5);
	) return std_logic_vector
	is
		variable ret_slv std_logic_vector(0 to 47);
	begin
		
		for i in 1 to ary_6_ssc'length loop    -- indexing may be wrong
			-- ret_slv := ret_slv & ary_6_ssc(i)  -- concatenate elements here
			ret_slv := arr_in(i).g & arr_in(i).f & arr_in(i).e & arr_in(i).d & arr_in(i).c & arr_in(i).b & arr_in(i).a;
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
                        read_data <= control;
                    when "10" =>  -- features (status)
                    
                    when "11" =>  -- magic
                    
                    when others =>
                end case;
            elsif write = '1' then -- write operation
                case address is
                    when "00" => -- data
                    when "01" => -- control
                    when others =>
                end case;
            end if;

        end if;
        
    end process hw_q_4_5;

end architecture behave;


