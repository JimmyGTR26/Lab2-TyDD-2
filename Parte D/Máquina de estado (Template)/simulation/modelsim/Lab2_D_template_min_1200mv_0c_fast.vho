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

-- DATE "11/28/2022 15:24:00"

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

ENTITY 	electronic_dice IS
    PORT (
	clk : IN std_logic;
	x : IN std_logic;
	reset : IN std_logic;
	z : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END electronic_dice;

-- Design Ports Information
-- z[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[2]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF electronic_dice IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_z : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \z[0]~output_o\ : std_logic;
SIGNAL \z[1]~output_o\ : std_logic;
SIGNAL \z[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \state.state_bit_0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.state_bit_0~q\ : std_logic;
SIGNAL \state.state_bit_2~0_combout\ : std_logic;
SIGNAL \state.state_bit_2~q\ : std_logic;
SIGNAL \state.state_bit_1~0_combout\ : std_logic;
SIGNAL \state.state_bit_1~q\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr7~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_x <= x;
ww_reset <= reset;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_WideOr6~combout\ <= NOT \WideOr6~combout\;
\ALT_INV_WideOr7~0_combout\ <= NOT \WideOr7~0_combout\;

-- Location: IOOBUF_X0_Y15_N16
\z[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \z[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\z[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \z[1]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\z[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr6~combout\,
	devoe => ww_devoe,
	o => \z[2]~output_o\);

-- Location: IOIBUF_X0_Y36_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y15_N22
\x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X1_Y15_N28
\state.state_bit_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_0~0_combout\ = (\x~input_o\ & ((\state.state_bit_1~q\) # ((\state.state_bit_0~q\ & \state.state_bit_2~q\)))) # (!\x~input_o\ & ((\state.state_bit_0~q\) # ((\state.state_bit_1~q\ & !\state.state_bit_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \state.state_bit_1~q\,
	datac => \state.state_bit_0~q\,
	datad => \state.state_bit_2~q\,
	combout => \state.state_bit_0~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y15_N29
\state.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.state_bit_0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_0~q\);

-- Location: LCCOMB_X1_Y15_N18
\state.state_bit_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_2~0_combout\ = (\x~input_o\ & (((!\state.state_bit_1~q\ & \state.state_bit_2~q\)) # (!\state.state_bit_0~q\))) # (!\x~input_o\ & ((\state.state_bit_2~q\) # ((\state.state_bit_1~q\ & !\state.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \state.state_bit_1~q\,
	datac => \state.state_bit_2~q\,
	datad => \state.state_bit_0~q\,
	combout => \state.state_bit_2~0_combout\);

-- Location: FF_X1_Y15_N19
\state.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.state_bit_2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_2~q\);

-- Location: LCCOMB_X1_Y15_N24
\state.state_bit_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_1~0_combout\ = (\x~input_o\ & ((\state.state_bit_2~q\) # ((\state.state_bit_1~q\ & !\state.state_bit_0~q\)))) # (!\x~input_o\ & ((\state.state_bit_1~q\) # ((\state.state_bit_2~q\ & \state.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \state.state_bit_2~q\,
	datac => \state.state_bit_1~q\,
	datad => \state.state_bit_0~q\,
	combout => \state.state_bit_1~0_combout\);

-- Location: FF_X1_Y15_N25
\state.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.state_bit_1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_1~q\);

-- Location: LCCOMB_X1_Y15_N22
\WideOr8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\state.state_bit_1~q\ & ((!\state.state_bit_0~q\) # (!\state.state_bit_2~q\))) # (!\state.state_bit_1~q\ & (!\state.state_bit_2~q\ & !\state.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.state_bit_1~q\,
	datac => \state.state_bit_2~q\,
	datad => \state.state_bit_0~q\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X1_Y15_N0
\WideOr7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\state.state_bit_2~q\ & ((\state.state_bit_0~q\))) # (!\state.state_bit_2~q\ & ((\state.state_bit_1~q\) # (!\state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.state_bit_1~q\,
	datac => \state.state_bit_2~q\,
	datad => \state.state_bit_0~q\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X1_Y15_N14
WideOr6 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = ((!\state.state_bit_1~q\ & \state.state_bit_2~q\)) # (!\state.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.state_bit_1~q\,
	datac => \state.state_bit_2~q\,
	datad => \state.state_bit_0~q\,
	combout => \WideOr6~combout\);

ww_z(0) <= \z[0]~output_o\;

ww_z(1) <= \z[1]~output_o\;

ww_z(2) <= \z[2]~output_o\;
END structure;


