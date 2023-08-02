-- Generated from Simulink block max_finder/find_max
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity max_finder_find_max is
  port (
    in_x0 : in std_logic_vector( 16-1 downto 0 );
    trig : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 16-1 downto 0 )
  );
end max_finder_find_max;
architecture structural of max_finder_find_max is 
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal trig_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal register_q_net : std_logic_vector( 16-1 downto 0 );
  signal in_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
begin
  out_x0 <= register1_q_net;
  in_net <= in_x0;
  trig_net <= trig;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.max_finder_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => trig_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  register_x0 : entity xil_defaultlib.max_finder_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    d => in_net,
    rst => delay_q_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.max_finder_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => register_q_net,
    en => trig_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_284a6ed37c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => in_net,
    b => register_q_net,
    op => relational2_op_net
  );
end structural;
-- Generated from Simulink block max_finder_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity max_finder_struct is
  port (
    trig : in std_logic_vector( 1-1 downto 0 );
    in_x0 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 16-1 downto 0 )
  );
end max_finder_struct;
architecture structural of max_finder_struct is 
  signal in_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal trig_net : std_logic_vector( 1-1 downto 0 );
begin
  trig_net <= trig;
  in_net <= in_x0;
  out_x0 <= register1_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  find_max : entity xil_defaultlib.max_finder_find_max 
  port map (
    in_x0 => in_net,
    trig => trig_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => register1_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity max_finder_default_clock_driver is
  port (
    max_finder_sysclk : in std_logic;
    max_finder_sysce : in std_logic;
    max_finder_sysclr : in std_logic;
    max_finder_clk1 : out std_logic;
    max_finder_ce1 : out std_logic
  );
end max_finder_default_clock_driver;
architecture structural of max_finder_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => max_finder_sysclk,
    sysce => max_finder_sysce,
    sysclr => max_finder_sysclr,
    clk => max_finder_clk1,
    ce => max_finder_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity max_finder is
  port (
    trig : in std_logic_vector( 1-1 downto 0 );
    in_x0 : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    out_x0 : out std_logic_vector( 16-1 downto 0 )
  );
end max_finder;
architecture structural of max_finder is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "max_finder,sysgen_core_2021_2,{,compilation=IP Catalog,block_icon_display=Default,family=kintex7,part=xc7k160t,speed=-2,package=fbg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.0011,delay=1,register=2,relational=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  max_finder_default_clock_driver : entity xil_defaultlib.max_finder_default_clock_driver 
  port map (
    max_finder_sysclk => clk,
    max_finder_sysce => '1',
    max_finder_sysclr => '0',
    max_finder_clk1 => clk_1_net,
    max_finder_ce1 => ce_1_net
  );
  max_finder_struct : entity xil_defaultlib.max_finder_struct 
  port map (
    trig => trig,
    in_x0 => in_x0,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    out_x0 => out_x0
  );
end structural;
