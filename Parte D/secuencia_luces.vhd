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

-- Generated by Quartus II Version 13.1.0 Build 162 10/23/2013 SJ Full Version
-- Created on Mon Nov 28 13:09:27 2022

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY secuencia_luces IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0'
    );
END secuencia_luces;

ARCHITECTURE BEHAVIOR OF secuencia_luces IS
    TYPE type_fstate IS (E1,E2,E3,E4,E5,E6,E7);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,x)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= E1;
        ELSE
            CASE fstate IS
                WHEN E1 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= E5;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= E2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= E1;
                    END IF;
                WHEN E2 =>
                    reg_fstate <= E3;
                WHEN E3 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= E7;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= E4;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= E3;
                    END IF;
                WHEN E4 =>
                    reg_fstate <= E1;
                WHEN E5 =>
                    reg_fstate <= E6;
                WHEN E6 =>
                    reg_fstate <= E3;
                WHEN E7 =>
                    reg_fstate <= E1;
                WHEN OTHERS => 
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;