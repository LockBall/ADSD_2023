library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

package seven_seg_driver_pkg is

    -- Q1 pt 1
    type seven_segment_config is record
      a   : std_logic;
      b   : std_logic;
      c   : std_logic;
      d   : std_logic;
      e   : std_logic;
      f   : std_logic;
      g   : std_logic;
      dp  : std_logic;
    end record seven_segment_config;
    
    -- Q1 pt 2
    type seven_seg_config_arr is array(natural range <>) of seven_segment_config;

    type lamp_configuration is (common_anode, common_cathode);
    constant default_lamp_config : lamp_configuration := common_anode;

    constant SEVEN_SEGMENT_TABLE : seven_seg_config_arr := (
    (a => '0', b => '0', c => '0', d => '0', e => '0', f => '0', g => '1', dp => '1'), -- 0
    (a => '1', b => '0', c => '0', d => '1', e => '1', f => '1', g => '1', dp => '1'), -- 1
    (a => '0', b => '0', c => '1', d => '0', e => '0', f => '1', g => '0', dp => '1'), -- 2
    (a => '0', b => '0', c => '0', d => '0', e => '1', f => '1', g => '0', dp => '1'), -- 3
    (a => '1', b => '0', c => '0', d => '1', e => '1', f => '0', g => '0', dp => '1'), -- 4
    (a => '0', b => '1', c => '0', d => '0', e => '1', f => '0', g => '0', dp => '1'), -- 5
    (a => '0', b => '1', c => '0', d => '0', e => '0', f => '0', g => '0', dp => '1'), -- 6
    (a => '0', b => '0', c => '0', d => '1', e => '1', f => '1', g => '1', dp => '1'), -- 7
    (a => '0', b => '0', c => '0', d => '0', e => '0', f => '0', g => '0', dp => '1'), -- 8
    (a => '0', b => '0', c => '0', d => '1', e => '1', f => '0', g => '0', dp => '1'), -- 9
    (a => '0', b => '0', c => '0', d => '1', e => '0', f => '0', g => '0', dp => '1'), -- 10 (A)
    (a => '1', b => '1', c => '0', d => '0', e => '0', f => '0', g => '0', dp => '1'), -- 11 (b)
    (a => '0', b => '1', c => '1', d => '0', e => '0', f => '0', g => '1', dp => '1'), -- 12 (C)
    (a => '1', b => '0', c => '0', d => '0', e => '0', f => '1', g => '0', dp => '1'), -- 13 (d)
    (a => '0', b => '1', c => '1', d => '0', e => '0', f => '0', g => '0', dp => '1'), -- 14 (E)
    (a => '0', b => '1', c => '1', d => '1', e => '0', f => '0', g => '0', dp => '1')  -- 15 (f)
  );

  subtype hex_digit is natural range 16 downto 0;


  function get_hex_digit (
      digit     :  hex_digit;
      lamp_mode :  lamp_configuration := default_lamp_config
  ) return seven_segment_config;

  
  function lamps_off (
      lamp_mode : lamp_configuration := default_lamp_config
  ) return seven_segment_config;

  
  function get_num_segs(
    vector_width : natural
  ) return integer;

end package;


package body seven_seg_driver_pkg is

  function get_hex_digit (
      digit     : hex_digit;
      lamp_mode : lamp_configuration := default_lamp_config
  ) return seven_segment_config 
  is
    variable ret : seven_segment_config;
  begin
    ret := SEVEN_SEGMENT_TABLE(digit);
    return ret;
  end function;


  function lamps_off (
      lamp_mode : lamp_configuration := default_lamp_config
  ) return seven_segment_config
  is
    variable off_state : std_logic;
   begin
      -- Common anode off = 1 (v+)
      -- Common cathode off = 0 (grounded)
      if lamp_mode = common_anode then
        off_state := '1';
      else
        off_state := '0';
      end if;

      return (
        a => off_state, 
        b => off_state, 
        c => off_state, 
        d => off_state, 
        e => off_state,
        f => off_state, 
        g => off_state, 
        dp => off_state
      );

  end function lamps_off;


    function get_num_segs(
        vector_width : natural
    ) return integer
    is
      begin
        return integer(ceil(real(vector_width/4)));
    end function get_num_segs;

    
end package body seven_seg_driver_pkg;


-- TCL array
-- set sseg_lamps {
--     {PIN_C14 PIN_E15 PIN_C15 PIN_C16 PIN_E16 PIN_D17 PIN_C17 PIN_D15} -- HEX0
--     {PIN_C18 PIN_D18 PIN_E18 PIN_B16 PIN_A17 PIN_A18 PIN_B17 PIN_A16} -- HEX1
--     {PIN_B20 PIN_A20 PIN_B19 PIN_A21 PIN_B21 PIN_C22 PIN_B22 PIN_A19} -- HEX2
--     {PIN_F21 PIN_E22 PIN_E21 PIN_C19 PIN_C20 PIN_D19 PIN_E17 PIN_D22} -- HEX3
--     {PIN_F18 PIN_E20 PIN_E19 PIN_J18 PIN_H19 PIN_F19 PIN_F20 PIN_F17} -- HEX4
--     {PIN_J20 PIN_K20 PIN_L18 PIN_N18 PIN_M20 PIN_N19 PIN_N20 PIN_L19} -- HEX5
-- }

  -- Pin mapping belowl
  ------     set_location_assignment PIN_C14 -to HEX0[0]
  ------     set_location_assignment PIN_E15 -to HEX0[1]
  ------     set_location_assignment PIN_C15 -to HEX0[2]
  ------     set_location_assignment PIN_C16 -to HEX0[3]
  ------     set_location_assignment PIN_E16 -to HEX0[4]
  ------     set_location_assignment PIN_D17 -to HEX0[5]
  ------     set_location_assignment PIN_C17 -to HEX0[6]
  ------     set_location_assignment PIN_D15 -to HEX0[7]
  ------     set_location_assignment PIN_C18 -to HEX1[0]
  ------     set_location_assignment PIN_D18 -to HEX1[1]
  ------     set_location_assignment PIN_E18 -to HEX1[2]
  ------     set_location_assignment PIN_B16 -to HEX1[3]
  ------     set_location_assignment PIN_A17 -to HEX1[4]
  ------     set_location_assignment PIN_A18 -to HEX1[5]
  ------     set_location_assignment PIN_B17 -to HEX1[6]
  ------     set_location_assignment PIN_A16 -to HEX1[7]
  ------     set_location_assignment PIN_B20 -to HEX2[0]
  ------     set_location_assignment PIN_A20 -to HEX2[1]
  ------     set_location_assignment PIN_B19 -to HEX2[2]
  ------     set_location_assignment PIN_A21 -to HEX2[3]
  ------     set_location_assignment PIN_B21 -to HEX2[4]
  ------     set_location_assignment PIN_C22 -to HEX2[5]
  ------     set_location_assignment PIN_B22 -to HEX2[6]
  ------     set_location_assignment PIN_A19 -to HEX2[7]
  ------     set_location_assignment PIN_F21 -to HEX3[0]
  ------     set_location_assignment PIN_E22 -to HEX3[1]
  ------     set_location_assignment PIN_E21 -to HEX3[2]
  ------     set_location_assignment PIN_C19 -to HEX3[3]
  ------     set_location_assignment PIN_C20 -to HEX3[4]
  ------     set_location_assignment PIN_D19 -to HEX3[5]
  ------     set_location_assignment PIN_E17 -to HEX3[6]
  ------     set_location_assignment PIN_D22 -to HEX3[7]
  ------     set_location_assignment PIN_F18 -to HEX4[0]
  ------     set_location_assignment PIN_E20 -to HEX4[1]
  ------     set_location_assignment PIN_E19 -to HEX4[2]
  ------     set_location_assignment PIN_J18 -to HEX4[3]
  ------     set_location_assignment PIN_H19 -to HEX4[4]
  ------     set_location_assignment PIN_F19 -to HEX4[5]
  ------     set_location_assignment PIN_F20 -to HEX4[6]
  ------     set_location_assignment PIN_F17 -to HEX4[7]
  ------     set_location_assignment PIN_J20 -to HEX5[0]
  ------     set_location_assignment PIN_K20 -to HEX5[1]
  ------     set_location_assignment PIN_L18 -to HEX5[2]
  ------     set_location_assignment PIN_N18 -to HEX5[3]
  ------     set_location_assignment PIN_M20 -to HEX5[4]
  ------     set_location_assignment PIN_N19 -to HEX5[5]
  ------     set_location_assignment PIN_N20 -to HEX5[6]
  ------     set_location_assignment PIN_L19 -to HEX5[7]