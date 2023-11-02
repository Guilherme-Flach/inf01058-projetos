onerror {quit -f}
vlib work
vlog -work work MUX_2_1_8BITS.vo
vlog -work work MUX_2_1_8BITS.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MUX_2_1_8BITS_vlg_vec_tst
vcd file -direction MUX_2_1_8BITS.msim.vcd
vcd add -internal MUX_2_1_8BITS_vlg_vec_tst/*
vcd add -internal MUX_2_1_8BITS_vlg_vec_tst/i1/*
add wave /*
run -all
