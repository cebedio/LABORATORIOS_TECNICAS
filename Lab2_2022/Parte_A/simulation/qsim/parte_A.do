onerror {quit -f}
vlib work
vlog -work work parte_A.vo
vlog -work work parte_A.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.parte_A_vlg_vec_tst
vcd file -direction parte_A.msim.vcd
vcd add -internal parte_A_vlg_vec_tst/*
vcd add -internal parte_A_vlg_vec_tst/i1/*
add wave /*
run -all
