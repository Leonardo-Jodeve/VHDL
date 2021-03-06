# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.cache/wt [current_project]
set_property parent.project_path C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x2-2.coe
add_files c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x2-1.coe
add_files c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x2-3.coe
add_files c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x2-4.coe
add_files -quiet C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.runs/ram16x2_2_synth_1/ram16x2_2.dcp
set_property used_in_implementation false [get_files C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.runs/ram16x2_2_synth_1/ram16x2_2.dcp]
add_files -quiet C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.runs/ram16x2_1_synth_1/ram16x2_1.dcp
set_property used_in_implementation false [get_files C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.runs/ram16x2_1_synth_1/ram16x2_1.dcp]
add_files -quiet C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.runs/ram16x2_3_synth_1/ram16x2_3.dcp
set_property used_in_implementation false [get_files C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.runs/ram16x2_3_synth_1/ram16x2_3.dcp]
add_files -quiet C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.runs/ram16x2_4_synth_1/ram16x2_4.dcp
set_property used_in_implementation false [get_files C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.runs/ram16x2_4_synth_1/ram16x2_4.dcp]
read_verilog -library xil_defaultlib C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.srcs/sources_1/new/ram16x8.v
synth_design -top ram16x8 -part xc7a100tcsg324-1
write_checkpoint -noxdef ram16x8.dcp
catch { report_utilization -file ram16x8_utilization_synth.rpt -pb ram16x8_utilization_synth.pb }
