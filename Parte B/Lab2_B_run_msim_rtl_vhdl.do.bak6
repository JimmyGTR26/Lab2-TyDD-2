transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Asus/Desktop/Laboratorio 2 TyDD2/proyecto/Parte B/D_FF.vhd}
vcom -93 -work work {C:/Users/Asus/Desktop/Laboratorio 2 TyDD2/proyecto/Parte B/FULL_ADDER.vhd}

vcom -93 -work work {C:/Users/Asus/Desktop/Laboratorio 2 TyDD2/proyecto/Parte B/FULL_ADDER_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  FULL_ADDER_testbench

add wave *
view structure
view signals
run -all
