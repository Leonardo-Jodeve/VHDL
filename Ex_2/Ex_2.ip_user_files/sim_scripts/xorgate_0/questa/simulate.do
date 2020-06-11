onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib xorgate_0_opt

do {wave.do}

view wave
view structure
view signals

do {xorgate_0.udo}

run -all

quit -force
