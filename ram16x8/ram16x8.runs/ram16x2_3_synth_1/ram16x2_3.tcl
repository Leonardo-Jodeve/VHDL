# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.cache/wt [current_project]
set_property parent.project_path C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_ip c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.srcs/sources_1/ip/ram16x2_3/ram16x2_3.xci
set_property is_locked true [get_files c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.srcs/sources_1/ip/ram16x2_3/ram16x2_3.xci]

synth_design -top ram16x2_3 -part xc7a100tcsg324-1 -mode out_of_context
rename_ref -prefix_all ram16x2_3_
write_checkpoint -noxdef ram16x2_3.dcp
catch { report_utilization -file ram16x2_3_utilization_synth.rpt -pb ram16x2_3_utilization_synth.pb }
if { [catch {
  file copy -force C:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.runs/ram16x2_3_synth_1/ram16x2_3.dcp c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.srcs/sources_1/ip/ram16x2_3/ram16x2_3.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.srcs/sources_1/ip/ram16x2_3/ram16x2_3_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.srcs/sources_1/ip/ram16x2_3/ram16x2_3_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.srcs/sources_1/ip/ram16x2_3/ram16x2_3_funcsim.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim c:/sysclassfiles/orgnization/Ex_9/ram16x8/ram16x8.srcs/sources_1/ip/ram16x2_3/ram16x2_3_funcsim.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
