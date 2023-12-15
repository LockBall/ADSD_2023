library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity soc_toplevel is
	port (
		clk_clk                         : in    std_logic                     := '0';             --    clk.clk
		hps_io_hps_io_emac1_inst_TX_CLK : out   std_logic;                                        -- hps_io.hps_io_emac1_inst_TX_CLK
		hps_io_hps_io_emac1_inst_TXD0   : out   std_logic;                                        --       .hps_io_emac1_inst_TXD0
		hps_io_hps_io_emac1_inst_TXD1   : out   std_logic;                                        --       .hps_io_emac1_inst_TXD1
		hps_io_hps_io_emac1_inst_TXD2   : out   std_logic;                                        --       .hps_io_emac1_inst_TXD2
		hps_io_hps_io_emac1_inst_TXD3   : out   std_logic;                                        --       .hps_io_emac1_inst_TXD3
		hps_io_hps_io_emac1_inst_RXD0   : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RXD0
		hps_io_hps_io_emac1_inst_MDIO   : inout std_logic                     := '0';             --       .hps_io_emac1_inst_MDIO
		hps_io_hps_io_emac1_inst_MDC    : out   std_logic;                                        --       .hps_io_emac1_inst_MDC
		hps_io_hps_io_emac1_inst_RX_CTL : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RX_CTL
		hps_io_hps_io_emac1_inst_TX_CTL : out   std_logic;                                        --       .hps_io_emac1_inst_TX_CTL
		hps_io_hps_io_emac1_inst_RX_CLK : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RX_CLK
		hps_io_hps_io_emac1_inst_RXD1   : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RXD1
		hps_io_hps_io_emac1_inst_RXD2   : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RXD2
		hps_io_hps_io_emac1_inst_RXD3   : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RXD3
		hps_io_hps_io_qspi_inst_IO0     : inout std_logic                     := '0';             --       .hps_io_qspi_inst_IO0
		hps_io_hps_io_qspi_inst_IO1     : inout std_logic                     := '0';             --       .hps_io_qspi_inst_IO1
		hps_io_hps_io_qspi_inst_IO2     : inout std_logic                     := '0';             --       .hps_io_qspi_inst_IO2
		hps_io_hps_io_qspi_inst_IO3     : inout std_logic                     := '0';             --       .hps_io_qspi_inst_IO3
		hps_io_hps_io_qspi_inst_SS0     : out   std_logic;                                        --       .hps_io_qspi_inst_SS0
		hps_io_hps_io_qspi_inst_CLK     : out   std_logic;                                        --       .hps_io_qspi_inst_CLK
		hps_io_hps_io_sdio_inst_CMD     : inout std_logic                     := '0';             --       .hps_io_sdio_inst_CMD
		hps_io_hps_io_sdio_inst_D0      : inout std_logic                     := '0';             --       .hps_io_sdio_inst_D0
		hps_io_hps_io_sdio_inst_D1      : inout std_logic                     := '0';             --       .hps_io_sdio_inst_D1
		hps_io_hps_io_sdio_inst_CLK     : out   std_logic;                                        --       .hps_io_sdio_inst_CLK
		hps_io_hps_io_sdio_inst_D2      : inout std_logic                     := '0';             --       .hps_io_sdio_inst_D2
		hps_io_hps_io_sdio_inst_D3      : inout std_logic                     := '0';             --       .hps_io_sdio_inst_D3
		hps_io_hps_io_usb1_inst_D0      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D0
		hps_io_hps_io_usb1_inst_D1      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D1
		hps_io_hps_io_usb1_inst_D2      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D2
		hps_io_hps_io_usb1_inst_D3      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D3
		hps_io_hps_io_usb1_inst_D4      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D4
		hps_io_hps_io_usb1_inst_D5      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D5
		hps_io_hps_io_usb1_inst_D6      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D6
		hps_io_hps_io_usb1_inst_D7      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D7
		hps_io_hps_io_usb1_inst_CLK     : in    std_logic                     := '0';             --       .hps_io_usb1_inst_CLK
		hps_io_hps_io_usb1_inst_STP     : out   std_logic;                                        --       .hps_io_usb1_inst_STP
		hps_io_hps_io_usb1_inst_DIR     : in    std_logic                     := '0';             --       .hps_io_usb1_inst_DIR
		hps_io_hps_io_usb1_inst_NXT     : in    std_logic                     := '0';             --       .hps_io_usb1_inst_NXT
		hps_io_hps_io_spim1_inst_CLK    : out   std_logic;                                        --       .hps_io_spim1_inst_CLK
		hps_io_hps_io_spim1_inst_MOSI   : out   std_logic;                                        --       .hps_io_spim1_inst_MOSI
		hps_io_hps_io_spim1_inst_MISO   : in    std_logic                     := '0';             --       .hps_io_spim1_inst_MISO
		hps_io_hps_io_spim1_inst_SS0    : out   std_logic;                                        --       .hps_io_spim1_inst_SS0
		hps_io_hps_io_uart0_inst_RX     : in    std_logic                     := '0';             --       .hps_io_uart0_inst_RX
		hps_io_hps_io_uart0_inst_TX     : out   std_logic;                                        --       .hps_io_uart0_inst_TX
		hps_io_hps_io_i2c0_inst_SDA     : inout std_logic                     := '0';             --       .hps_io_i2c0_inst_SDA
		hps_io_hps_io_i2c0_inst_SCL     : inout std_logic                     := '0';             --       .hps_io_i2c0_inst_SCL
		hps_io_hps_io_i2c1_inst_SDA     : inout std_logic                     := '0';             --       .hps_io_i2c1_inst_SDA
		hps_io_hps_io_i2c1_inst_SCL     : inout std_logic                     := '0';             --       .hps_io_i2c1_inst_SCL
		lamps_export                    : out   std_logic_vector(41 downto 0);                    --  lamps.export
		memory_mem_a                    : out   std_logic_vector(14 downto 0);                    -- memory.mem_a
		memory_mem_ba                   : out   std_logic_vector(2 downto 0);                     --       .mem_ba
		memory_mem_ck                   : out   std_logic;                                        --       .mem_ck
		memory_mem_ck_n                 : out   std_logic;                                        --       .mem_ck_n
		memory_mem_cke                  : out   std_logic;                                        --       .mem_cke
		memory_mem_cs_n                 : out   std_logic;                                        --       .mem_cs_n
		memory_mem_ras_n                : out   std_logic;                                        --       .mem_ras_n
		memory_mem_cas_n                : out   std_logic;                                        --       .mem_cas_n
		memory_mem_we_n                 : out   std_logic;                                        --       .mem_we_n
		memory_mem_reset_n              : out   std_logic;                                        --       .mem_reset_n
		memory_mem_dq                   : inout std_logic_vector(31 downto 0) := (others => '0'); --       .mem_dq
		memory_mem_dqs                  : inout std_logic_vector(3 downto 0)  := (others => '0'); --       .mem_dqs
		memory_mem_dqs_n                : inout std_logic_vector(3 downto 0)  := (others => '0'); --       .mem_dqs_n
		memory_mem_odt                  : out   std_logic;                                        --       .mem_odt
		memory_mem_dm                   : out   std_logic_vector(3 downto 0);                     --       .mem_dm
		memory_oct_rzqin                : in    std_logic                     := '0';             --       .oct_rzqin
--		reset_reset_n                   : in    std_logic                     := '0'              --  reset.reset_n
	);
end entity soc_toplevel;	 
	

architecture arch of soc_toplevel is


	soc_calc_comp : soc_calc
		port map(
		clk_clk                         => clk_clk,
		hps_io_hps_io_emac1_inst_TX_CLK => hps_io_hps_io_emac1_inst_TX_CLK,
		hps_io_hps_io_emac1_inst_TXD0   => hps_io_hps_io_emac1_inst_TXD0,
		hps_io_hps_io_emac1_inst_TXD1   => hps_io_hps_io_emac1_inst_TXD1,
		hps_io_hps_io_emac1_inst_TXD2   : out   std_logic;                                        --       .hps_io_emac1_inst_TXD2
		hps_io_hps_io_emac1_inst_TXD3   : out   std_logic;                                        --       .hps_io_emac1_inst_TXD3
		hps_io_hps_io_emac1_inst_RXD0   : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RXD0
		hps_io_hps_io_emac1_inst_MDIO   : inout std_logic                     := '0';             --       .hps_io_emac1_inst_MDIO
		hps_io_hps_io_emac1_inst_MDC    : out   std_logic;                                        --       .hps_io_emac1_inst_MDC
		hps_io_hps_io_emac1_inst_RX_CTL : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RX_CTL
		hps_io_hps_io_emac1_inst_TX_CTL : out   std_logic;                                        --       .hps_io_emac1_inst_TX_CTL
		hps_io_hps_io_emac1_inst_RX_CLK : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RX_CLK
		hps_io_hps_io_emac1_inst_RXD1   : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RXD1
		hps_io_hps_io_emac1_inst_RXD2   : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RXD2
		hps_io_hps_io_emac1_inst_RXD3   : in    std_logic                     := '0';             --       .hps_io_emac1_inst_RXD3
		hps_io_hps_io_qspi_inst_IO0     : inout std_logic                     := '0';             --       .hps_io_qspi_inst_IO0
		hps_io_hps_io_qspi_inst_IO1     : inout std_logic                     := '0';             --       .hps_io_qspi_inst_IO1
		hps_io_hps_io_qspi_inst_IO2     : inout std_logic                     := '0';             --       .hps_io_qspi_inst_IO2
		hps_io_hps_io_qspi_inst_IO3     : inout std_logic                     := '0';             --       .hps_io_qspi_inst_IO3
		hps_io_hps_io_qspi_inst_SS0     : out   std_logic;                                        --       .hps_io_qspi_inst_SS0
		hps_io_hps_io_qspi_inst_CLK     : out   std_logic;                                        --       .hps_io_qspi_inst_CLK
		hps_io_hps_io_sdio_inst_CMD     : inout std_logic                     := '0';             --       .hps_io_sdio_inst_CMD
		hps_io_hps_io_sdio_inst_D0      : inout std_logic                     := '0';             --       .hps_io_sdio_inst_D0
		hps_io_hps_io_sdio_inst_D1      : inout std_logic                     := '0';             --       .hps_io_sdio_inst_D1
		hps_io_hps_io_sdio_inst_CLK     : out   std_logic;                                        --       .hps_io_sdio_inst_CLK
		hps_io_hps_io_sdio_inst_D2      : inout std_logic                     := '0';             --       .hps_io_sdio_inst_D2
		hps_io_hps_io_sdio_inst_D3      : inout std_logic                     := '0';             --       .hps_io_sdio_inst_D3
		hps_io_hps_io_usb1_inst_D0      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D0
		hps_io_hps_io_usb1_inst_D1      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D1
		hps_io_hps_io_usb1_inst_D2      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D2
		hps_io_hps_io_usb1_inst_D3      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D3
		hps_io_hps_io_usb1_inst_D4      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D4
		hps_io_hps_io_usb1_inst_D5      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D5
		hps_io_hps_io_usb1_inst_D6      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D6
		hps_io_hps_io_usb1_inst_D7      : inout std_logic                     := '0';             --       .hps_io_usb1_inst_D7
		hps_io_hps_io_usb1_inst_CLK     : in    std_logic                     := '0';             --       .hps_io_usb1_inst_CLK
		hps_io_hps_io_usb1_inst_STP     : out   std_logic;                                        --       .hps_io_usb1_inst_STP
		hps_io_hps_io_usb1_inst_DIR     : in    std_logic                     := '0';             --       .hps_io_usb1_inst_DIR
		hps_io_hps_io_usb1_inst_NXT     : in    std_logic                     := '0';             --       .hps_io_usb1_inst_NXT
		hps_io_hps_io_spim1_inst_CLK    : out   std_logic;                                        --       .hps_io_spim1_inst_CLK
		hps_io_hps_io_spim1_inst_MOSI   : out   std_logic;                                        --       .hps_io_spim1_inst_MOSI
		hps_io_hps_io_spim1_inst_MISO   : in    std_logic                     := '0';             --       .hps_io_spim1_inst_MISO
		hps_io_hps_io_spim1_inst_SS0    : out   std_logic;                                        --       .hps_io_spim1_inst_SS0
		hps_io_hps_io_uart0_inst_RX     : in    std_logic                     := '0';             --       .hps_io_uart0_inst_RX
		hps_io_hps_io_uart0_inst_TX     : out   std_logic;                                        --       .hps_io_uart0_inst_TX
		hps_io_hps_io_i2c0_inst_SDA     : inout std_logic                     := '0';             --       .hps_io_i2c0_inst_SDA
		hps_io_hps_io_i2c0_inst_SCL     : inout std_logic                     := '0';             --       .hps_io_i2c0_inst_SCL
		hps_io_hps_io_i2c1_inst_SDA     : inout std_logic                     := '0';             --       .hps_io_i2c1_inst_SDA
		hps_io_hps_io_i2c1_inst_SCL     : inout std_logic                     := '0';             --       .hps_io_i2c1_inst_SCL
		lamps_export                    : out   std_logic_vector(41 downto 0);                    --  lamps.export
		memory_mem_a                    : out   std_logic_vector(14 downto 0);                    -- memory.mem_a
		memory_mem_ba                   : out   std_logic_vector(2 downto 0);                     --       .mem_ba
		memory_mem_ck                   : out   std_logic;                                        --       .mem_ck
		memory_mem_ck_n                 : out   std_logic;                                        --       .mem_ck_n
		memory_mem_cke                  : out   std_logic;                                        --       .mem_cke
		memory_mem_cs_n                 : out   std_logic;                                        --       .mem_cs_n
		memory_mem_ras_n                : out   std_logic;                                        --       .mem_ras_n
		memory_mem_cas_n                : out   std_logic;                                        --       .mem_cas_n
		memory_mem_we_n                 : out   std_logic;                                        --       .mem_we_n
		memory_mem_reset_n              : out   std_logic;                                        --       .mem_reset_n
		memory_mem_dq                   : inout std_logic_vector(31 downto 0) := (others => '0'); --       .mem_dq
		memory_mem_dqs                  : inout std_logic_vector(3 downto 0)  := (others => '0'); --       .mem_dqs
		memory_mem_dqs_n                : inout std_logic_vector(3 downto 0)  := (others => '0'); --       .mem_dqs_n
		memory_mem_odt                  : out   std_logic;                                        --       .mem_odt
		memory_mem_dm                   : out   std_logic_vector(3 downto 0);                     --       .mem_dm
		memory_oct_rzqin                : in    std_logic                     := '0';             --       .oct_rzqin
		reset_reset_n                   : in    std_logic                     := '1'              --  reset.reset_n
		);


begin
end architecture;