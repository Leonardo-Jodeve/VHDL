@echo off
set xv_path=F:\\Verilog\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto dc2166bd90674a87be166aff12115364 -m64 --debug typical --relax --mt 2 -L blk_mem_gen_v8_2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot ram16x8_sim_behav xil_defaultlib.ram16x8_sim xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
