onerror {quit -f}
vlib work
vlog -work work CONT_UP_DOWN.vo
vlog -work work CONT_UP_DOWN.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CONT_UP_DOWN_vlg_vec_tst
vcd file -direction CONT_UP_DOWN.msim.vcd
vcd add -internal CONT_UP_DOWN_vlg_vec_tst/*
vcd add -internal CONT_UP_DOWN_vlg_vec_tst/i1/*
add wave /*
run -all
