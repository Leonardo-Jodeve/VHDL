onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mux8to1_0_opt

do {wave.do}

view wave
view structure
view signals

do {mux8to1_0.udo}

run -all

quit -force
