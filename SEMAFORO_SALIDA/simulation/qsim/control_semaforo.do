onerror {exit -code 1}
vlib work
vlog -work work control_semaforo.vo
vlog -work work Waveform10.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.control_semaforo_vlg_vec_tst -voptargs="+acc"
vcd file -direction control_semaforo.msim.vcd
vcd add -internal control_semaforo_vlg_vec_tst/*
vcd add -internal control_semaforo_vlg_vec_tst/i1/*
run -all
quit -f
