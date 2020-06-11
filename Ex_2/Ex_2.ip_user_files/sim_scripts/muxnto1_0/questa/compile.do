vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../ipstatic/sources_1/new/muxnto1.v" \
"../../../../ip/muxnto1_0/sim/muxnto1_0.v" \


vlog -work xil_defaultlib "glbl.v"

