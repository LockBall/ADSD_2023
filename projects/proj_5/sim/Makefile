TOPLEVEL_LANG=vhdl
VHDL_SOURCES = \
	$(PWD)/../seven_seg_driver_pkg.vhd \
	$(PWD)/../seven_seg_top.vhd

TOPLEVEL ?= seven_segment_agent
SIM=ghdl
MODULE ?= tb_toplevel_wrapper
# COMPILE_ARGS=--std=08
# SIM_ARGS=--wave=$(TOPLEVEL).ghw

export COCOTB_REDUCED_LOG_FMT=1
# export  COCOTB_SCHEDULER_DEBUG=1

include $(shell cocotb-config --makefiles)/Makefile.sim
