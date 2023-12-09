library ieee;
use ieee.std_logic_1164.all;

use ieee.std_logic_unsigned.ALL;


entity tb_TDPDC_RAM is
end tb_TDPDC_RAM;

architecture tb of tb_TDPDC_RAM is

    component TDPDC_RAM

        generic(
            ADDR_WIDTH : natural := 4 ;
            DATA_WIDTH : natural := 16 -- x'FA57'
        );
        
        port(
            clk_a   :   in std_logic ;
            clk_b   :   in std_logic ;
            addr_a  :   in std_logic_vector((ADDR_WIDTH - 1) downto 0);  -- natural range 0 to 2**ADDR_WIDTH - 1;  -- 2^ADDR_WIDTH
            addr_b  :   in std_logic_vector((ADDR_WIDTH - 1) downto 0);  -- natural range 0 to 2**ADDR_WIDTH - 1;
            data_a  :   in std_logic_vector((DATA_WIDTH - 1) downto 0);
            data_b  :   in std_logic_vector((DATA_WIDTH - 1) downto 0);
            we_a    :   in std_logic ;
            we_b    :   in std_logic ;
            q_a     :   out std_logic_vector((DATA_WIDTH - 1) downto 0);
            q_b     :   out std_logic_vector((DATA_WIDTH - 1) downto 0)
        );
    
    end component TDPDC_RAM;
    
    -- constants
    constant ADDR_WIDTH : integer   :=  4 ;
    constant DATA_WIDTH : integer   := 16 ;
    
    -- signals
    signal clock_1      : std_logic := '0' ;
    signal clock_50     : std_logic := '0' ;

    -- inputs
    signal clk_a    : std_logic;
    signal clk_b    : std_logic;
    signal addr_a   : std_logic_vector((ADDR_WIDTH - 1) downto 0) ;  -- natural range 0 to 2**ADDR_WIDTH - 1 := 0 ;
    signal addr_b   : std_logic_vector((ADDR_WIDTH - 1) downto 0) := "0000" ;  -- natural range 0 to 2**ADDR_WIDTH - 1;
    signal data_a   : std_logic_vector((DATA_WIDTH - 1) downto 0) ;
    signal data_b   : std_logic_vector((DATA_WIDTH - 1) downto 0) ;
    signal we_a     : std_logic := '0';
    signal we_b     : std_logic := '0';
    
    -- outputs
    signal q_a      : std_logic_vector((DATA_WIDTH - 1) downto 0);
    signal q_b      : std_logic_vector((DATA_WIDTH - 1) downto 0);

    
  begin
  
    clock_1  <= not clock_1  after 20 ns;  -- 500, 1 MHz
    clock_50 <= not clock_50 after 10 ns;  -- 10, 50 MHz
    
    clk_a <= clock_1 ;
    clk_b <= clock_50 ;

    
    addr_a  <=  "0001" ;
    data_a  <= x"5100" ;    
    we_a    <= '1' after 55 ns , '0' after 65 ns ;


    -- clock process
--    clock_process : process
--      begin
--        wait for 10 ns;
--        clock_50 <= not clock_50;
--    end process;
    
    
    -- stimulus process
--    stim_proc : process(clock_50) is
--    
--      begin
--        
--        if rising_edge(clock_50) then
--            addr_a <= addr_a + 1 ;
--            
--        end if;
--
--    end process stim_proc;
    
  
    UUT : TDPDC_RAM  -- entity work.
        port map(
            clk_a   => clk_a,
            clk_b   => clk_b,
            
            addr_a  => addr_a,
            addr_b  => addr_b,
            
            data_a  => data_a,
            data_b  => data_b,
            
            we_a    => we_a,
            we_b    => we_b,
            
            q_a     => q_a,
            q_b     => q_b
        );
  

end architecture tb;