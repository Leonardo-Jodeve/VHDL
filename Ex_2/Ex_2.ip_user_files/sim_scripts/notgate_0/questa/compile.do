vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../ip/notgate_0/sources_1/new/notgate.v" \
"../../../../ip/notgate_0/sim/notgate_0.v" \


vlog -work xil_defaultlib "glbl.v"

