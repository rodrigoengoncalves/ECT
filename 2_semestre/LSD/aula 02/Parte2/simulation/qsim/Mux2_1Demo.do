onerror {exit -code 1}
vlib work
vcom -work work Mux2_1Demo.vho
vcom -work work Waveform.vwf.vht
vsim -voptargs="+acc" -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Mux2_1_vhd_vec_tst
vcd file -direction Mux2_1Demo.msim.vcd
vcd add -internal Mux2_1_vhd_vec_tst/*
vcd add -internal Mux2_1_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
