--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Wed Aug  2 14:39:38 2023
--Host        : DESKTOP-JEI2OF3 running 64-bit major release  (build 9200)
--Command     : generate_target max_finder_bd_wrapper.bd
--Design      : max_finder_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity max_finder_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    in_x0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_x0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    trig : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end max_finder_bd_wrapper;

architecture STRUCTURE of max_finder_bd_wrapper is
  component max_finder_bd is
  port (
    clk : in STD_LOGIC;
    in_x0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_x0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    trig : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component max_finder_bd;
begin
max_finder_bd_i: component max_finder_bd
     port map (
      clk => clk,
      in_x0(15 downto 0) => in_x0(15 downto 0),
      out_x0(15 downto 0) => out_x0(15 downto 0),
      trig(0) => trig(0)
    );
end STRUCTURE;
