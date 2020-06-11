@echo off
set xv_path=F:\\Verilog\\Vivado\\2015.4\\bin
call %xv_path%/xsim alu8_verilog_sim_behav -key {Behavioral:sim_1:Functional:alu8_verilog_sim} -tclbatch alu8_verilog_sim.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
