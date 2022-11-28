transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Lab2_A_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/Asus/Desktop/Laboratorio 2 TyDD2/proyecto/Parte A/ParteA_testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=Lab2_A_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  ParteA_testbench

add wave *
view structure
view signals
run 100 ns
