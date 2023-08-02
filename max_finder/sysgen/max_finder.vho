  sysgen_dut : entity xil_defaultlib.max_finder 
  port map (
    trig => trig,
    in_x0 => in_x0,
    clk => clk,
    out_x0 => out_x0
  );
