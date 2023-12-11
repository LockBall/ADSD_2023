-- Quartus Prime VHDL Template
-- True Dual-Port RAM with dual clock
-- Read-during-write on port A or B returns newly written data
-- Read-during-write on port A and B returns unknown data.

library ieee;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all; 
 
entity TDPDC_RAM is

    generic(
        DATA_WIDTH : natural := 16;
        ADDR_WIDTH : natural := 4
    );

    port(
        clk_a   : in std_logic;
        clk_b   : in std_logic;
        
        addr_a  : in std_logic_vector((ADDR_WIDTH - 1) downto 0);  -- natural range 0 to 2**ADDR_WIDTH - 1 := 0 ;
        addr_b  : in std_logic_vector((ADDR_WIDTH - 1) downto 0);  -- natural range 0 to 2**ADDR_WIDTH - 1;
        
        data_a  : in std_logic_vector((DATA_WIDTH - 1) downto 0);
        data_b  : in std_logic_vector((DATA_WIDTH - 1) downto 0);
        
        we_a    : in std_logic := '0';
--        we_b    : in std_logic := '0';
        
        q_a     : out std_logic_vector((DATA_WIDTH - 1) downto 0);
        q_b     : out std_logic_vector((DATA_WIDTH - 1) downto 0)
    );

end TDPDC_RAM;


architecture rtl of TDPDC_RAM is

    -- Build a 2-D array type for the RAM
    subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
    type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

    -- Declare the RAM 
    shared variable ram : memory_t;
    
    signal addr_a_nat : natural range 0 to 2**ADDR_WIDTH - 1 ;
    signal addr_b_nat : natural range 0 to 2**ADDR_WIDTH - 1 ;

  begin

    -- Port A
    process(clk_a) -- 1 MHz
      begin

        if(rising_edge(clk_a)) then
        
            addr_a_nat <= to_integer(unsigned(addr_a));
            
            if(we_a = '1') then
                ram(addr_a_nat) := data_a;
                
            end if;
            
            q_a <= ram(addr_a_nat);
        end if;
    end process;

    
    -- Port B
    process(clk_b)
      begin

        if(rising_edge(clk_b)) then
            addr_b_nat <= to_integer(unsigned(addr_b));

--            if(we_b = '1') then
--                ram(addr_b_nat) := data_b;
--            end if;
            
            q_b <= ram(addr_b_nat);
        end if;
    end process;

end rtl;
