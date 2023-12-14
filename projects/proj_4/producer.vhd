library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity producer is

    generic(
        DATA_WIDTH : natural := 8;
        ADDR_WIDTH : natural := 6
    );

    port(
        -- Clocks
        clock_10: in std_logic; -- 10 Mhz
        clock_1: out std_logic; -- 1 Mhz
		  
		  reset: in std_logic;

        -- RAM interactions
        write_enable: out std_logic;
        data: out std_logic_vector(DATA_WIDTH-1 downto 0);

        -- RAM and bin to gray interactions
        head: out natural range 0 to 2**ADDR_WIDTH - 1;
        tail: in natural range 0 to 2**ADDR_WIDTH - 1
    );

end entity producer;

architecture behavior of producer is

    -- Components
    component max10_adc is
        port (
            pll_clk:	in	std_logic;
            chsel:		in	natural range 0 to 2**5 - 1;
            soc:		in	std_logic;
            tsen:		in	std_logic;
            dout:		out	natural range 0 to 2**12 - 1;
            eoc:		out	std_logic;
            clk_dft:	out	std_logic
        );
    end component max10_adc;

    -- Functions
    -- Returns true if head and tail have a distance apart greater than 1
    function can_advance (
        head_pointer: natural range 0 to 2**ADDR_WIDTH - 1; 
        tail_pointer: natural range 0 to 2**ADDR_WIDTH - 1
    ) return boolean is
        
    begin
		if head_pointer > tail_pointer and not (head_pointer = (2**ADDR_WIDTH - 1) and tail_pointer = 0) then
			return true;
		elsif head_pointer < tail_pointer and tail_pointer - head_pointer > 1 then
			return true;
		end if;
	
--        if tail_pointer > head_pointer and tail_pointer - head_pointer > 1 then
--            return true;
--        elsif head_pointer > tail_pointer and not (head_pointer = (2**ADDR_WIDTH - 1) or tail_pointer = 0) then
--            return true;
--        end if;

        return false;
    end function can_advance;

    -- Data types

    type state_type is (start, wait_for_eoc, wait_for_head_advance, advance_and_store);

    signal state, next_state: state_type := start;

    -- ADC interactions
    signal adc_clock: std_logic;
    signal conversion_start: std_logic;
    signal conversion_end: std_logic;
    signal adc_data: natural range 0 to 2**ADDR_WIDTH - 1;
    signal head_can_advance: boolean;
    signal head_ptr: natural range 0 to 2**ADDR_WIDTH - 1;

begin

    clock_1 <= adc_clock; -- Hook up clock to output clock to drive RAM

    head <= head_ptr; -- Need a head pointer variable because we cant drive signals with out signal
    data <= std_logic_vector(to_unsigned(adc_data, data'length)); -- Convert data to std_logic_vector
    head_can_advance <= can_advance(head_ptr, tail); -- Checks if the head can advance


    -- put ADC here
    ADC: max10_adc port map
    (
        pll_clk => clock_10, -- Clock coming from PLL
        chsel => 0, -- Select channel zero (Check docs for reason)
        soc => conversion_start, -- Map soc to conversion_start signal
        tsen => '1', -- Set in temperature sensing mode only
        dout => adc_data, -- Hook up data lines
        eoc => conversion_end, -- Hook up eoc to conversion_end
        clk_dft => adc_clock -- Set clock divider to adc_clock to drive logic
        
    );

    -- FSM transition function
    -- Process runs every clock cycle because state is driven by the clock
    -- eoc triggers the process on an end of conversion value change
    -- Head can advance triggers the process once the head can advance
    transition: process(state, conversion_end, head_can_advance, head_ptr, tail) is
    begin
        case state is
            when start =>
                next_state <= wait_for_eoc;
            when wait_for_eoc =>
                if conversion_end = '1' then
                    next_state <= wait_for_head_advance;
				else
					next_state <= wait_for_eoc;
                end if;
            when wait_for_head_advance =>
                if head_can_advance then
                    next_state <= advance_and_store;
				else
					next_state <= wait_for_head_advance;
                end if;
            when advance_and_store =>
                next_state <= start;

        end case;
    end process transition;

    save_state: process(adc_clock, reset) is
    begin
        if reset = '0' then
            state <= start;
        elsif rising_edge(adc_clock) then
            state <= next_state;
        end if;
    end process save_state;

    output_function: process(adc_clock, reset) is
    begin
        if reset = '0' then
			head_ptr <= 0;
            conversion_start <= '0';
            write_enable <= '0';
        elsif rising_edge(adc_clock) then
			if state = start or state = wait_for_eoc then
				conversion_start <= '1';
			else
				conversion_start <= '0';
			end if;
			if state = advance_and_store then
				write_enable <= '1';
				if head_ptr = (2**ADDR_WIDTH - 1) then
					head_ptr <= 0;
				else
					head_ptr <= head_ptr + 1;
				end if;
			else
				write_enable <= '0';
			end if;
        end if;
    end process output_function;

end architecture behavior;
