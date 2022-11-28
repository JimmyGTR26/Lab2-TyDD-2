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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
-- CREATED		"Sun Nov 27 18:12:39 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY FA_4B2 IS 
	PORT
	(
		in_cin :  IN  STD_LOGIC;
		in_b :  IN  STD_LOGIC;
		in_a :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		o_cout :  OUT  STD_LOGIC;
		o_f :  OUT  STD_LOGIC
	);
END FA_4B2;

ARCHITECTURE bdf_type OF FA_4B2 IS 

SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_16 <= '1';



PROCESS(clk,SYNTHESIZED_WIRE_16,SYNTHESIZED_WIRE_16)
BEGIN
IF (SYNTHESIZED_WIRE_16 = '0') THEN
	SYNTHESIZED_WIRE_19 <= '0';
ELSIF (SYNTHESIZED_WIRE_16 = '0') THEN
	SYNTHESIZED_WIRE_19 <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	SYNTHESIZED_WIRE_19 <= in_cin;
END IF;
END PROCESS;


PROCESS(clk,SYNTHESIZED_WIRE_16,SYNTHESIZED_WIRE_16)
BEGIN
IF (SYNTHESIZED_WIRE_16 = '0') THEN
	SYNTHESIZED_WIRE_17 <= '0';
ELSIF (SYNTHESIZED_WIRE_16 = '0') THEN
	SYNTHESIZED_WIRE_17 <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	SYNTHESIZED_WIRE_17 <= in_b;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


PROCESS(clk,SYNTHESIZED_WIRE_16,SYNTHESIZED_WIRE_16)
BEGIN
IF (SYNTHESIZED_WIRE_16 = '0') THEN
	SYNTHESIZED_WIRE_18 <= '0';
ELSIF (SYNTHESIZED_WIRE_16 = '0') THEN
	SYNTHESIZED_WIRE_18 <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	SYNTHESIZED_WIRE_18 <= in_a;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_20 <= SYNTHESIZED_WIRE_17 XOR SYNTHESIZED_WIRE_18;


SYNTHESIZED_WIRE_11 <= SYNTHESIZED_WIRE_19 XOR SYNTHESIZED_WIRE_20;


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_18 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_19 AND SYNTHESIZED_WIRE_20;


PROCESS(clk,SYNTHESIZED_WIRE_16,SYNTHESIZED_WIRE_16)
BEGIN
IF (SYNTHESIZED_WIRE_16 = '0') THEN
	o_f <= '0';
ELSIF (SYNTHESIZED_WIRE_16 = '0') THEN
	o_f <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	o_f <= SYNTHESIZED_WIRE_11;
END IF;
END PROCESS;


PROCESS(clk,SYNTHESIZED_WIRE_16,SYNTHESIZED_WIRE_16)
BEGIN
IF (SYNTHESIZED_WIRE_16 = '0') THEN
	o_cout <= '0';
ELSIF (SYNTHESIZED_WIRE_16 = '0') THEN
	o_cout <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	o_cout <= SYNTHESIZED_WIRE_14;
END IF;
END PROCESS;



END bdf_type;