transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib TSD_ADC
vmap TSD_ADC TSD_ADC
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_mm_interconnect_0.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_altpll_0.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_AvalonBridge.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_avalon_packets_to_master.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_avalon_st_packets_to_bytes.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_avalon_st_bytes_to_packets.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_avalon_st_jtag_interface.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_jtag_dc_streaming.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_jtag_sld_node.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_jtag_streaming.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_avalon_st_clock_crosser.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_std_synchronizer_nocut.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_avalon_st_idle_remover.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_avalon_st_idle_inserter.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_ADC_TSD.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_ADC_TSD_avalon_st_adapter_001.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_ADC_TSD_avalon_st_adapter.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_modular_adc_sample_store.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_modular_adc_sample_store_ram.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_modular_adc_sequencer.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_modular_adc_sequencer_csr.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_modular_adc_sequencer_ctrl.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_ADC_TSD_adc_monitor_internal.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_modular_adc_control.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_modular_adc_control_avrg_fifo.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_modular_adc_control_fsm.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/chsel_code_converter_sw_to_hw.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/fiftyfivenm_adcblock_primitive_wrapper.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/fiftyfivenm_adcblock_top_wrapper.v}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_avalon_st_pipeline_base.v}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_mm_interconnect_0_router_001.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_mm_interconnect_0_router.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_merlin_master_translator.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_AvalonBridge_p2b_adapter.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_AvalonBridge_b2p_adapter.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_AvalonBridge_timing_adt.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_ADC_TSD_avalon_st_adapter_001_timing_adapter_1.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_ADC_TSD_avalon_st_adapter_001_timing_adapter_0.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_ADC_TSD_avalon_st_adapter_001_data_format_adapter_0.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_ADC_TSD_avalon_st_adapter_timing_adapter_1.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_ADC_TSD_avalon_st_adapter_timing_adapter_0.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/TSD_ADC_ADC_TSD_avalon_st_adapter_data_format_adapter_0.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_avalon_st_splitter.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_trace_monitor_endpoint_wrapper.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_trace_adc_monitor_core.sv}
vlog -sv -work TSD_ADC +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_trace_adc_monitor_wa.sv}
vcom -93 -work TSD_ADC {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/TSD_ADC.vhd}
vcom -93 -work TSD_ADC {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/tsd_adc_rst_controller.vhd}
vcom -93 -work TSD_ADC {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/tsd_adc_rst_controller_001.vhd}
vcom -93 -work TSD_ADC {C:/FPGA/2023/from_git/ADSD_2023/tests/TSD_ADC/TSD_ADC/synthesis/submodules/altera_trace_adc_monitor_wa_inst.vhd}

