
GHDL=ghdl
FLAGS="--std=93"

all:
	@$(GHDL) -a $(FLAGS) hello_world.vhd
	@$(GHDL) -e $(FLAGS) hello_world
	@$(GHDL) -r $(FLAGS) hello_world -- wave=wave.ghw --stop-time=1us
