vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../ipstatic/sources_1/new/mux2.v" \
"../../../ipstatic/sources_1/new/rshifter8.v" \
"../../../ipstatic/sources_1/new/lshifter8.v" \
"../../../ipstatic/sources_1/new/barrelshifter8.v" \
"../../../../ip/barrelshifter8_0_1/sim/barrelshifter8_0.v" \


vlog -work xil_defaultlib "glbl.v"

