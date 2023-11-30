	component TSD_ADC is
		port (
			clk_clk                              : in std_logic := 'X'; -- clk
			reset_reset_n                        : in std_logic := 'X'; -- reset_n
			altpll_0_inclk_interface_clk         : in std_logic := 'X'; -- clk
			altpll_0_inclk_interface_reset_reset : in std_logic := 'X'  -- reset
		);
	end component TSD_ADC;

	u0 : component TSD_ADC
		port map (
			clk_clk                              => CONNECTED_TO_clk_clk,                              --                            clk.clk
			reset_reset_n                        => CONNECTED_TO_reset_reset_n,                        --                          reset.reset_n
			altpll_0_inclk_interface_clk         => CONNECTED_TO_altpll_0_inclk_interface_clk,         --       altpll_0_inclk_interface.clk
			altpll_0_inclk_interface_reset_reset => CONNECTED_TO_altpll_0_inclk_interface_reset_reset  -- altpll_0_inclk_interface_reset.reset
		);

