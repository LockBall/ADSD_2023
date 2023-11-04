
GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) write_file.vhd
	@$(GHDL) -e $(FLAGS) write_file
	@$(GHDL) -r $(FLAGS) write_file -- wave=wave.ghw --stop-time=1us
