// TSD_ADC.v

// Generated using ACDS version 22.1 922

`timescale 1 ps / 1 ps
module TSD_ADC (
		input  wire  altpll_0_inclk_interface_clk,         //       altpll_0_inclk_interface.clk
		input  wire  altpll_0_inclk_interface_reset_reset, // altpll_0_inclk_interface_reset.reset
		input  wire  clk_clk,                              //                            clk.clk
		input  wire  reset_reset_n                         //                          reset.reset_n
	);

	wire         altpll_0_c0_clk;                                      // altpll_0:c0 -> ADC_TSD:adc_pll_clock_clk
	wire  [31:0] avalonbridge_master_readdata;                         // mm_interconnect_0:AvalonBridge_master_readdata -> AvalonBridge:master_readdata
	wire         avalonbridge_master_waitrequest;                      // mm_interconnect_0:AvalonBridge_master_waitrequest -> AvalonBridge:master_waitrequest
	wire  [31:0] avalonbridge_master_address;                          // AvalonBridge:master_address -> mm_interconnect_0:AvalonBridge_master_address
	wire         avalonbridge_master_read;                             // AvalonBridge:master_read -> mm_interconnect_0:AvalonBridge_master_read
	wire   [3:0] avalonbridge_master_byteenable;                       // AvalonBridge:master_byteenable -> mm_interconnect_0:AvalonBridge_master_byteenable
	wire         avalonbridge_master_readdatavalid;                    // mm_interconnect_0:AvalonBridge_master_readdatavalid -> AvalonBridge:master_readdatavalid
	wire         avalonbridge_master_write;                            // AvalonBridge:master_write -> mm_interconnect_0:AvalonBridge_master_write
	wire  [31:0] avalonbridge_master_writedata;                        // AvalonBridge:master_writedata -> mm_interconnect_0:AvalonBridge_master_writedata
	wire  [31:0] mm_interconnect_0_adc_tsd_sample_store_csr_readdata;  // ADC_TSD:sample_store_csr_readdata -> mm_interconnect_0:ADC_TSD_sample_store_csr_readdata
	wire   [6:0] mm_interconnect_0_adc_tsd_sample_store_csr_address;   // mm_interconnect_0:ADC_TSD_sample_store_csr_address -> ADC_TSD:sample_store_csr_address
	wire         mm_interconnect_0_adc_tsd_sample_store_csr_read;      // mm_interconnect_0:ADC_TSD_sample_store_csr_read -> ADC_TSD:sample_store_csr_read
	wire         mm_interconnect_0_adc_tsd_sample_store_csr_write;     // mm_interconnect_0:ADC_TSD_sample_store_csr_write -> ADC_TSD:sample_store_csr_write
	wire  [31:0] mm_interconnect_0_adc_tsd_sample_store_csr_writedata; // mm_interconnect_0:ADC_TSD_sample_store_csr_writedata -> ADC_TSD:sample_store_csr_writedata
	wire  [31:0] mm_interconnect_0_adc_tsd_sequencer_csr_readdata;     // ADC_TSD:sequencer_csr_readdata -> mm_interconnect_0:ADC_TSD_sequencer_csr_readdata
	wire   [0:0] mm_interconnect_0_adc_tsd_sequencer_csr_address;      // mm_interconnect_0:ADC_TSD_sequencer_csr_address -> ADC_TSD:sequencer_csr_address
	wire         mm_interconnect_0_adc_tsd_sequencer_csr_read;         // mm_interconnect_0:ADC_TSD_sequencer_csr_read -> ADC_TSD:sequencer_csr_read
	wire         mm_interconnect_0_adc_tsd_sequencer_csr_write;        // mm_interconnect_0:ADC_TSD_sequencer_csr_write -> ADC_TSD:sequencer_csr_write
	wire  [31:0] mm_interconnect_0_adc_tsd_sequencer_csr_writedata;    // mm_interconnect_0:ADC_TSD_sequencer_csr_writedata -> ADC_TSD:sequencer_csr_writedata
	wire         rst_controller_reset_out_reset;                       // rst_controller:reset_out -> [ADC_TSD:reset_sink_reset_n, mm_interconnect_0:ADC_TSD_reset_sink_reset_bridge_in_reset_reset, mm_interconnect_0:AvalonBridge_clk_reset_reset_bridge_in_reset_reset]

	TSD_ADC_ADC_TSD #(
		.is_this_first_or_second_adc (1)
	) adc_tsd (
		.clock_clk                  (clk_clk),                                              //            clock.clk
		.reset_sink_reset_n         (~rst_controller_reset_out_reset),                      //       reset_sink.reset_n
		.adc_pll_clock_clk          (altpll_0_c0_clk),                                      //    adc_pll_clock.clk
		.adc_pll_locked_export      (),                                                     //   adc_pll_locked.export
		.sequencer_csr_address      (mm_interconnect_0_adc_tsd_sequencer_csr_address),      //    sequencer_csr.address
		.sequencer_csr_read         (mm_interconnect_0_adc_tsd_sequencer_csr_read),         //                 .read
		.sequencer_csr_write        (mm_interconnect_0_adc_tsd_sequencer_csr_write),        //                 .write
		.sequencer_csr_writedata    (mm_interconnect_0_adc_tsd_sequencer_csr_writedata),    //                 .writedata
		.sequencer_csr_readdata     (mm_interconnect_0_adc_tsd_sequencer_csr_readdata),     //                 .readdata
		.sample_store_csr_address   (mm_interconnect_0_adc_tsd_sample_store_csr_address),   // sample_store_csr.address
		.sample_store_csr_read      (mm_interconnect_0_adc_tsd_sample_store_csr_read),      //                 .read
		.sample_store_csr_write     (mm_interconnect_0_adc_tsd_sample_store_csr_write),     //                 .write
		.sample_store_csr_writedata (mm_interconnect_0_adc_tsd_sample_store_csr_writedata), //                 .writedata
		.sample_store_csr_readdata  (mm_interconnect_0_adc_tsd_sample_store_csr_readdata),  //                 .readdata
		.sample_store_irq_irq       ()                                                      // sample_store_irq.irq
	);

	TSD_ADC_AvalonBridge #(
		.USE_PLI     (0),
		.PLI_PORT    (50000),
		.FIFO_DEPTHS (2)
	) avalonbridge (
		.clk_clk              (clk_clk),                           //          clk.clk
		.clk_reset_reset      (~reset_reset_n),                    //    clk_reset.reset
		.master_address       (avalonbridge_master_address),       //       master.address
		.master_readdata      (avalonbridge_master_readdata),      //             .readdata
		.master_read          (avalonbridge_master_read),          //             .read
		.master_write         (avalonbridge_master_write),         //             .write
		.master_writedata     (avalonbridge_master_writedata),     //             .writedata
		.master_waitrequest   (avalonbridge_master_waitrequest),   //             .waitrequest
		.master_readdatavalid (avalonbridge_master_readdatavalid), //             .readdatavalid
		.master_byteenable    (avalonbridge_master_byteenable),    //             .byteenable
		.master_reset_reset   ()                                   // master_reset.reset
	);

	TSD_ADC_altpll_0 altpll_0 (
		.clk                (altpll_0_inclk_interface_clk),         //       inclk_interface.clk
		.reset              (altpll_0_inclk_interface_reset_reset), // inclk_interface_reset.reset
		.read               (),                                     //             pll_slave.read
		.write              (),                                     //                      .write
		.address            (),                                     //                      .address
		.readdata           (),                                     //                      .readdata
		.writedata          (),                                     //                      .writedata
		.c0                 (altpll_0_c0_clk),                      //                    c0.clk
		.locked             (),                                     //        locked_conduit.export
		.scandone           (),                                     //           (terminated)
		.scandataout        (),                                     //           (terminated)
		.c1                 (),                                     //           (terminated)
		.c2                 (),                                     //           (terminated)
		.c3                 (),                                     //           (terminated)
		.c4                 (),                                     //           (terminated)
		.areset             (1'b0),                                 //           (terminated)
		.phasedone          (),                                     //           (terminated)
		.phasecounterselect (3'b000),                               //           (terminated)
		.phaseupdown        (1'b0),                                 //           (terminated)
		.phasestep          (1'b0),                                 //           (terminated)
		.scanclk            (1'b0),                                 //           (terminated)
		.scanclkena         (1'b0),                                 //           (terminated)
		.scandata           (1'b0),                                 //           (terminated)
		.configupdate       (1'b0)                                  //           (terminated)
	);

	TSD_ADC_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                                      (clk_clk),                                              //                                    clk_0_clk.clk
		.ADC_TSD_reset_sink_reset_bridge_in_reset_reset     (rst_controller_reset_out_reset),                       //     ADC_TSD_reset_sink_reset_bridge_in_reset.reset
		.AvalonBridge_clk_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                       // AvalonBridge_clk_reset_reset_bridge_in_reset.reset
		.AvalonBridge_master_address                        (avalonbridge_master_address),                          //                          AvalonBridge_master.address
		.AvalonBridge_master_waitrequest                    (avalonbridge_master_waitrequest),                      //                                             .waitrequest
		.AvalonBridge_master_byteenable                     (avalonbridge_master_byteenable),                       //                                             .byteenable
		.AvalonBridge_master_read                           (avalonbridge_master_read),                             //                                             .read
		.AvalonBridge_master_readdata                       (avalonbridge_master_readdata),                         //                                             .readdata
		.AvalonBridge_master_readdatavalid                  (avalonbridge_master_readdatavalid),                    //                                             .readdatavalid
		.AvalonBridge_master_write                          (avalonbridge_master_write),                            //                                             .write
		.AvalonBridge_master_writedata                      (avalonbridge_master_writedata),                        //                                             .writedata
		.ADC_TSD_sample_store_csr_address                   (mm_interconnect_0_adc_tsd_sample_store_csr_address),   //                     ADC_TSD_sample_store_csr.address
		.ADC_TSD_sample_store_csr_write                     (mm_interconnect_0_adc_tsd_sample_store_csr_write),     //                                             .write
		.ADC_TSD_sample_store_csr_read                      (mm_interconnect_0_adc_tsd_sample_store_csr_read),      //                                             .read
		.ADC_TSD_sample_store_csr_readdata                  (mm_interconnect_0_adc_tsd_sample_store_csr_readdata),  //                                             .readdata
		.ADC_TSD_sample_store_csr_writedata                 (mm_interconnect_0_adc_tsd_sample_store_csr_writedata), //                                             .writedata
		.ADC_TSD_sequencer_csr_address                      (mm_interconnect_0_adc_tsd_sequencer_csr_address),      //                        ADC_TSD_sequencer_csr.address
		.ADC_TSD_sequencer_csr_write                        (mm_interconnect_0_adc_tsd_sequencer_csr_write),        //                                             .write
		.ADC_TSD_sequencer_csr_read                         (mm_interconnect_0_adc_tsd_sequencer_csr_read),         //                                             .read
		.ADC_TSD_sequencer_csr_readdata                     (mm_interconnect_0_adc_tsd_sequencer_csr_readdata),     //                                             .readdata
		.ADC_TSD_sequencer_csr_writedata                    (mm_interconnect_0_adc_tsd_sequencer_csr_writedata)     //                                             .writedata
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule
