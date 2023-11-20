  -- 4_HW_Quest_1.a
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
  -- 4_HW_Quest_1.b
  type seven_seg_config_arr is array(natural range <>) of seven_segment_config;

  