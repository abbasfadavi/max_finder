-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity max_finder_stub is
  port (
    trig : in std_logic_vector( 1-1 downto 0 );
    in_x0 : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    out_x0 : out std_logic_vector( 16-1 downto 0 )
  );
end max_finder_stub;
architecture structural of max_finder_stub is 
begin
  sysgen_dut : entity xil_defaultlib.max_finder 
  port map (
    trig => trig,
    in_x0 => in_x0,
    clk => clk,
    out_x0 => out_x0
  );
end structural;
