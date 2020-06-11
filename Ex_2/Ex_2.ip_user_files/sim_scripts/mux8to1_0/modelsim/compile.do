vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../ip/mux8to1_0/sources_1/new/mux8to1.v" \
"../../../../ip/mux8to1_0/sim/mux8to1_0.v" \


vlog -work xil_defaultlib "glbl.v"

