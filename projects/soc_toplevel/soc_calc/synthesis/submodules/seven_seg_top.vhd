library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.seven_seg_driver_pkg.all;

entity seven_segment_agent  is
	generic (
		lamp_mode_common_anode: boolean := true;
		--lamp_mode       : lamp_configuration := default_lamp_config;
		decimal_support : boolean            := TRUE;
		implementer     : natural range 0 to 255 := 100;  -- vendor ID
      revision       : natural range 0 to 255 := 0
	);
	port (
		clk       : in  std_logic;
		reset_n   : in  std_logic;
		address   : in  std_logic_vector(1 downto 0);
		read      : in  std_logic;
      write     : in  std_logic;
      writedata : in  std_logic_vector(31 downto 0);		
		
		readdata  : out std_logic_vector(31 downto 0);
      lamps     : out std_logic_vector(41 downto 0)
	);
end entity seven_segment_agent;


architecture behave of seven_segment_agent is
    signal data    : std_logic_vector (31 downto 0) := (others => '0');
    signal control : std_logic_vector (1 downto 0) := (others => '0'); -- only using 2 bits of control for now, 4 for EC

	 function lamp_mode return lamp_configuration
	 is
	 begin
		if lamp_mode_common_anode then
			return common_anode;
		end if;
		return common_cathode;
	 end function lamp_mode;

	-- seven_segment_config is 8 item record of std_logic
	function concat_ssc (
		arr_in: in seven_seg_config_arr(0 to 5)
	) return std_logic_vector
	is
		variable ret_slv: std_logic_vector(41 downto 0);
	begin
		
		for i in arr_in'range loop
			ret_slv(7*i+6 downto 7*i) := arr_in(i).g & arr_in(i).f & arr_in(i).e & arr_in(i).d & arr_in(i).c & arr_in(i).b & arr_in(i).a;
		end loop;

		return ret_slv;
	end function concat_ssc;

	
	function to_bcd (
		data_value: in std_logic_vector(15 downto 0)
	) return std_logic_vector
	is
		variable ret: std_logic_vector(19 downto 0);
		variable temp: std_logic_vector(data_value'range);
begin
		temp	:= data_value;
		ret	:= (others => '0');

		for i in data_value'range loop
			for j in 0 to ret'length/4 - 1 loop
			
				if unsigned(ret(4*j + 3 downto 4*j)) >= 5 then
					ret(4*j + 3 downto 4*j) := std_logic_vector(unsigned(ret(4*j + 3 downto 4 * j)) + 3);
				end if;
			end loop;
			
			ret	:= ret(ret'high -1 downto 0) & temp(temp'high);
			temp	:= temp(temp'high - 1 downto 0) & '0';
		end loop;
		return ret;
	end function to_bcd;

	
	function get_digits_output (
			data_in: in std_logic_vector(23 downto 0)
		) return seven_seg_config_arr
	is
		variable ret: seven_seg_config_arr(0 to 5);
		variable slice: std_logic_vector(0 to 3);
	begin
		for i in ret'range loop
			slice := data_in(4*i + 3 downto 4*i);
			ret(i) := get_hex_digit(to_integer(unsigned(slice)), lamp_mode);
		end loop;
		return ret;
	end function get_digits_output;

	signal digits_vector: std_logic_vector(23 downto 0) := (others => '0');

	
	function all_lamps_off
		return seven_seg_config_arr
	is
		variable ret: seven_seg_config_arr(0 to 5);
	begin
		for i in ret'range loop
			ret(i) := lamps_off(lamp_mode);
		end loop;
		
		return ret;
	end function all_lamps_off;
	
begin
  
  digits_vector <= data(digits_vector'range) when control(1) = '0'
			else (23 downto 20 => '0') & to_bcd(data(15 downto 0));
		
  lamps <= concat_ssc(get_digits_output(digits_vector)) when control(0) = '1'
			else concat_ssc(all_lamps_off);
  
  hw_q_4_5 : process(clk) is
    begin
        
        if rising_edge(clk) then
        
            if reset_n = '0' then
                data    <= (others => '0');
                control <= (others => '0');
            elsif read = '1' then  -- read operation
                case address is
                    when "00" => -- data
                        readdata <= data;
                    when "01" =>  -- control
                        readdata <= (31 downto 2 => '0') & control;
                    when "10" =>  -- features (status)
                        readdata(31 downto 24) <= std_logic_vector(to_unsigned(implementer, 8));
                        readdata(23 downto 16) <= std_logic_vector(to_unsigned(revision, 8));
                        readdata(15 downto  4) <= (others => '0');

                        if lamp_mode = common_anode then
                            readdata(3) <= '1';
                        else
                            readdata(3) <= '0';
                        end if;

                        readdata(2 downto  1) <= (others => '0');

                        if decimal_support = TRUE then
                            readdata(0) <= '1';
                        else
                            readdata(0) <= '0';
                        end if;

                    when "11" =>
                        readdata <= x"41445335";-- magic
                    
                    when others => null;
                end case;
                
            elsif write = '1' then -- write operation
                case address is
                    when "00" => data <= writedata;-- data

                    -- set up to only write to bit 1 if decimal support is true
                    when "01" =>
                        control(0) <= writedata(0);
                        if decimal_support = TRUE then
                            control(1) <= writedata(1);
                        end if;

                    when others => null;
                end case;
            end if;
        end if;
        
    end process hw_q_4_5;

end architecture behave;


