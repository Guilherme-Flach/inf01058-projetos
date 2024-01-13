onerror {quit -f}
vlib work
vlog -work work PROJETO_NEANDER_RAM.vo
vlog -work work PROJETO_NEANDER_RAM.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.PROJETO_NEANDER_RAM_vlg_vec_tst
vcd file -direction PROJETO_NEANDER_RAM.msim.vcd
vcd add -internal PROJETO_NEANDER_RAM_vlg_vec_tst/*
vcd add -internal PROJETO_NEANDER_RAM_vlg_vec_tst/i1/*
add wave /*
run -all
