@echo off
set xv_path=F:\\Verilog\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 6a2dda086d11486bbf40e70ac861b292 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Ex_1_sim_behav xil_defaultlib.Ex_1_sim xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
