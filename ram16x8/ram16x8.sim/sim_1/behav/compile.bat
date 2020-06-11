@echo off
set xv_path=F:\\Verilog\\Vivado\\2015.4\\bin
echo "xvlog -m64 --relax -prj ram16x8_sim_vlog.prj"
call %xv_path%/xvlog  -m64 --relax -prj ram16x8_sim_vlog.prj -log xvlog.log
call type xvlog.log > compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
