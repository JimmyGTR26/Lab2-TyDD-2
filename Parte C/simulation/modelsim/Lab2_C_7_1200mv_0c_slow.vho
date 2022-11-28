-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "11/27/2022 18:16:23"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FA_4B IS
    PORT (
	o_cout : OUT std_logic;
	clk : IN std_logic;
	in_a : IN std_logic;
	in_b : IN std_logic;
	in_cin : IN std_logic;
	o_f : OUT std_logic
	);
END FA_4B;

-- Design Ports Information
-- o_cout	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_f	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_cin	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FA_4B IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_o_cout : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_in_a : std_logic;
SIGNAL ww_in_b : std_logic;
SIGNAL ww_in_cin : std_logic;
SIGNAL ww_o_f : std_logic;
SIGNAL \o_cout~output_o\ : std_logic;
SIGNAL \o_f~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \in_cin~input_o\ : std_logic;
SIGNAL \inst~feeder_combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \in_b~input_o\ : std_logic;
SIGNAL \inst1~feeder_combout\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \in_a~input_o\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst8~q\ : std_logic;

BEGIN

o_cout <= ww_o_cout;
ww_clk <= clk;
ww_in_a <= in_a;
ww_in_b <= in_b;
ww_in_cin <= in_cin;
o_f <= ww_o_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X67_Y0_N16
\o_cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~q\,
	devoe => ww_devoe,
	o => \o_cout~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\o_f~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~q\,
	devoe => ww_devoe,
	o => \o_f~output_o\);

-- Location: IOIBUF_X56_Y0_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\in_cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_cin,
	o => \in_cin~input_o\);

-- Location: LCCOMB_X57_Y1_N26
\inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~feeder_combout\ = \in_cin~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_cin~input_o\,
	combout => \inst~feeder_combout\);

-- Location: FF_X57_Y1_N27
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: IOIBUF_X81_Y0_N22
\in_b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_b,
	o => \in_b~input_o\);

-- Location: LCCOMB_X57_Y1_N8
\inst1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1~feeder_combout\ = \in_b~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_b~input_o\,
	combout => \inst1~feeder_combout\);

-- Location: FF_X57_Y1_N9
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: IOIBUF_X85_Y0_N8
\in_a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_a,
	o => \in_a~input_o\);

-- Location: FF_X57_Y1_N29
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \in_a~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X57_Y1_N24
\inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\inst~q\ & ((\inst1~q\) # (\inst2~q\))) # (!\inst~q\ & (\inst1~q\ & \inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datac => \inst1~q\,
	datad => \inst2~q\,
	combout => \inst10~0_combout\);

-- Location: FF_X57_Y1_N25
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: LCCOMB_X57_Y1_N30
\inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = \inst~q\ $ (\inst1~q\ $ (\inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datac => \inst1~q\,
	datad => \inst2~q\,
	combout => \inst4~0_combout\);

-- Location: FF_X57_Y1_N31
inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~q\);

ww_o_cout <= \o_cout~output_o\;

ww_o_f <= \o_f~output_o\;
END structure;


