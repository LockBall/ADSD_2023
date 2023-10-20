proc place_inverters {inv_chain num_chain top_level} {
    for {set chain_idx 0} {$chain_idx < $num_chain} {incr chain_idx} {
	 
	 #procedure iterators over range of chains specified represented by top_level

        set start_idx [expr {$chain_idx * $inv_chain}]
        set end_idx [expr {($chain_idx + 1) * $inv_chain - 1}]

		  # initializes index_range of start to end of the two parameters i.e ring oscillators being chain and inverter chain

        set index_range [list]
        for {set i $start_idx} {$i <= $end_idx} {incr i} {
            lappend index_range $i
        }
		  # initializes empty list and then populates with range of int values from start --> end

        set inverter_list [get_cells -hierarchical $top_level/*ring_oscillators/inverters($index_range)]
		  # Takes list of cells located in path in design for specific functions

        place -symmetric $inverter_list
		  # asks us to place in symmetric fashion
    }
}
place_inverters 12 16 top_level 
# 12 inverters and 16 ring oscillators
update_placement
