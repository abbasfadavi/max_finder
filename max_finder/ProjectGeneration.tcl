
namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xc7k160t}
	set DSPFamily {kintex7}
	set DSPPackage {fbg484}
	set DSPSpeed {-2}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System_Generator_for_DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {2}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {}
	set IP_Revision {321892608}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {max_finder}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{max_finder_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{max_finder.vhd} -lib {xil_defaultlib}}
		{{max_finder_clock.xdc}}
		{{max_finder.xdc}}
	}
	set SimPeriod 1e-08
	set SimTime 0.0011
	set SimulationTime {1100210.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TopLevelModule {max_finder}
	set TopLevelSimulinkHandle 2766
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface in_x0 Name {in_x0}
	dict set TopLevelPortInterface in_x0 Type Fix_16_15
	dict set TopLevelPortInterface in_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface in_x0 BinaryPoint 15
	dict set TopLevelPortInterface in_x0 Width 16
	dict set TopLevelPortInterface in_x0 DatFile {max_finder_in.dat}
	dict set TopLevelPortInterface in_x0 IconText {in}
	dict set TopLevelPortInterface in_x0 Direction in
	dict set TopLevelPortInterface in_x0 Period 1
	dict set TopLevelPortInterface in_x0 Interface 0
	dict set TopLevelPortInterface in_x0 InterfaceName {}
	dict set TopLevelPortInterface in_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface in_x0 ClockDomain {max_finder}
	dict set TopLevelPortInterface in_x0 Locs {}
	dict set TopLevelPortInterface in_x0 IOStandard {}
	dict set TopLevelPortInterface trig Name {trig}
	dict set TopLevelPortInterface trig Type Bool
	dict set TopLevelPortInterface trig ArithmeticType xlUnsigned
	dict set TopLevelPortInterface trig BinaryPoint 0
	dict set TopLevelPortInterface trig Width 1
	dict set TopLevelPortInterface trig DatFile {max_finder_trig.dat}
	dict set TopLevelPortInterface trig IconText {trig}
	dict set TopLevelPortInterface trig Direction in
	dict set TopLevelPortInterface trig Period 1
	dict set TopLevelPortInterface trig Interface 0
	dict set TopLevelPortInterface trig InterfaceName {}
	dict set TopLevelPortInterface trig InterfaceString {DATA}
	dict set TopLevelPortInterface trig ClockDomain {max_finder}
	dict set TopLevelPortInterface trig Locs {}
	dict set TopLevelPortInterface trig IOStandard {}
	dict set TopLevelPortInterface out_x0 Name {out_x0}
	dict set TopLevelPortInterface out_x0 Type Fix_16_15
	dict set TopLevelPortInterface out_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface out_x0 BinaryPoint 15
	dict set TopLevelPortInterface out_x0 Width 16
	dict set TopLevelPortInterface out_x0 DatFile {max_finder_out.dat}
	dict set TopLevelPortInterface out_x0 IconText {out}
	dict set TopLevelPortInterface out_x0 Direction out
	dict set TopLevelPortInterface out_x0 Period 1
	dict set TopLevelPortInterface out_x0 Interface 0
	dict set TopLevelPortInterface out_x0 InterfaceName {}
	dict set TopLevelPortInterface out_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface out_x0 ClockDomain {max_finder}
	dict set TopLevelPortInterface out_x0 Locs {}
	dict set TopLevelPortInterface out_x0 IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {max_finder}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project