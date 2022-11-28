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

-- DATE "11/27/2022 18:00:16"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ParteA IS
    PORT (
	sw1 : IN std_logic;
	sw2 : IN std_logic;
	LED : BUFFER std_logic
	);
END ParteA;

-- Design Ports Information
-- LED	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ParteA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw1 : std_logic;
SIGNAL ww_sw2 : std_logic;
SIGNAL ww_LED : std_logic;
SIGNAL \LED~output_o\ : std_logic;
SIGNAL \sw2~input_o\ : std_logic;
SIGNAL \sw1~input_o\ : std_logic;
SIGNAL \LED~0_combout\ : std_logic;
SIGNAL \ALT_INV_LED~0_combout\ : std_logic;

BEGIN

ww_sw1 <= sw1;
ww_sw2 <= sw2;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LED~0_combout\ <= NOT \LED~0_combout\;

-- Location: IOOBUF_X72_Y0_N9
\LED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED~0_combout\,
	devoe => ww_devoe,
	o => \LED~output_o\);

-- Location: IOIBUF_X56_Y0_N22
\sw2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2,
	o => \sw2~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\sw1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1,
	o => \sw1~input_o\);

-- Location: LCCOMB_X74_Y1_N24
\LED~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED~0_combout\ = (\sw2~input_o\) # (\sw1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw2~input_o\,
	datad => \sw1~input_o\,
	combout => \LED~0_combout\);

ww_LED <= \LED~output_o\;
END structure;


