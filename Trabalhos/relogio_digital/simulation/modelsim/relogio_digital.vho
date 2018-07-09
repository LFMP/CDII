-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "07/09/2018 12:58:00"

-- 
-- Device: Altera EPM7064SLC44-7 Package PLCC44
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	relogio_digital IS
    PORT (
	entrada : IN std_logic;
	clock : IN std_logic;
	clear : IN std_logic;
	dez_min : OUT std_logic_vector(6 DOWNTO 0);
	uni_min : OUT std_logic_vector(6 DOWNTO 0);
	dez_sec : OUT std_logic_vector(6 DOWNTO 0);
	uni_sec : OUT std_logic_vector(6 DOWNTO 0)
	);
END relogio_digital;

-- Design Ports Information
-- entrada	=>  Location: PIN_2
-- clock	=>  Location: PIN_43
-- clear	=>  Location: PIN_1
-- uni_sec[5]	=>  Location: PIN_25
-- uni_sec[1]	=>  Location: PIN_27
-- uni_sec[2]	=>  Location: PIN_24
-- uni_sec[4]	=>  Location: PIN_26
-- uni_sec[6]	=>  Location: PIN_28
-- uni_sec[3]	=>  Location: PIN_29
-- uni_sec[0]	=>  Location: PIN_31
-- dez_sec[6]	=>  Location: PIN_11
-- dez_sec[3]	=>  Location: PIN_9
-- dez_sec[4]	=>  Location: PIN_12
-- dez_sec[5]	=>  Location: PIN_8
-- dez_sec[0]	=>  Location: PIN_6
-- dez_sec[1]	=>  Location: PIN_4
-- dez_sec[2]	=>  Location: PIN_5
-- uni_min[5]	=>  Location: PIN_37
-- uni_min[1]	=>  Location: PIN_40
-- uni_min[2]	=>  Location: PIN_41
-- uni_min[4]	=>  Location: PIN_39
-- uni_min[6]	=>  Location: PIN_33
-- uni_min[3]	=>  Location: PIN_34
-- uni_min[0]	=>  Location: PIN_36
-- dez_min[5]	=>  Location: PIN_21
-- dez_min[6]	=>  Location: PIN_20
-- dez_min[2]	=>  Location: PIN_18
-- dez_min[3]	=>  Location: PIN_17
-- dez_min[4]	=>  Location: PIN_19
-- dez_min[0]	=>  Location: PIN_16
-- dez_min[1]	=>  Location: PIN_14

ARCHITECTURE structure OF relogio_digital IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_entrada : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_dez_min : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_uni_min : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dez_sec : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_uni_sec : std_logic_vector(6 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk0|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk0|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk0|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk0|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk0|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk0|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk0|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk0|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk0|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk0|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk0|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk1|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk1|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk1|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk1|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk1|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk1|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk1|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk1|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk1|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk1|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk1|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk2|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk2|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk2|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk2|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk2|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk2|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk2|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk2|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk2|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk2|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk2|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk3|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk3|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk3|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk3|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk3|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk3|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk3|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk3|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk3|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk3|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_segundos|ffjk3|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk0|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk0|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk0|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk0|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk0|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk0|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk0|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk0|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk0|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk0|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk0|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[5]~21_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[5]~21_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[5]~21_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[5]~21_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[5]~21_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[5]~21_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[5]~21_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[5]~21_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[5]~21_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[5]~21_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[5]~21_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|Equal9~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|Equal9~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|Equal9~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|Equal9~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|Equal9~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|Equal9~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|Equal9~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|Equal9~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|Equal9~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|Equal9~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|Equal9~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~27_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~27_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~27_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~27_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~27_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~27_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~27_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~27_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~27_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~27_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~27_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[2]~32_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[2]~32_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[2]~32_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[2]~32_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[2]~32_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[2]~32_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[2]~32_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[2]~32_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[2]~32_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[2]~32_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[2]~32_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~36_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~36_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~36_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~36_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~36_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~36_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~36_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~36_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~36_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~36_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~36_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~43_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~43_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~43_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~43_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~43_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~43_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~43_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~43_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~43_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~43_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos~43_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk1|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk1|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk1|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk1|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk1|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk1|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk1|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk1|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk1|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk1|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk1|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[0]~49_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[0]~49_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[0]~49_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[0]~49_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[0]~49_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[0]~49_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[0]~49_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[0]~49_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[0]~49_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[0]~49_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_seg|segmentos[0]~49_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~19_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~19_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~19_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~19_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~19_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~19_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~19_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~19_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~19_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~19_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~19_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[3]~25_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[3]~25_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[3]~25_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[3]~25_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[3]~25_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[3]~25_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[3]~25_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[3]~25_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[3]~25_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[3]~25_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[3]~25_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk2|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk2|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk2|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk2|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk2|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk2|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk2|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk2|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk2|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk2|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_segundos|ffjk2|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk0|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk0|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk0|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk0|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk0|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk0|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk0|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk0|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk0|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk0|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk0|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|Equal9~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|Equal9~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|Equal9~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|Equal9~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|Equal9~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|Equal9~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|Equal9~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|Equal9~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|Equal9~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|Equal9~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|Equal9~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~28_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~28_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~28_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~28_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~28_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~28_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~28_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~28_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~28_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~28_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos~28_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[0]~33_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[0]~33_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[0]~33_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[0]~33_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[0]~33_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[0]~33_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[0]~33_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[0]~33_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[0]~33_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[0]~33_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[0]~33_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[2]~35_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[2]~35_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[2]~35_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[2]~35_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[2]~35_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[2]~35_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[2]~35_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[2]~35_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[2]~35_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[2]~35_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[2]~35_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[1]~41_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[1]~41_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[1]~41_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[1]~41_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[1]~41_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[1]~41_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[1]~41_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[1]~41_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[1]~41_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[1]~41_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_seg|segmentos[1]~41_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk1|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk1|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk1|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk1|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk1|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk1|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk1|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk1|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk1|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk1|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk1|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk2|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk2|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk2|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk2|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk2|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk2|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk2|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk2|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk2|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk2|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk2|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk3|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk3|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk3|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk3|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk3|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk3|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk3|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk3|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk3|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk3|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \unidades_minutos|ffjk3|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk0|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk0|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk0|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk0|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk0|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk0|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk0|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk0|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk0|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk0|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk0|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[5]~21_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[5]~21_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[5]~21_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[5]~21_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[5]~21_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[5]~21_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[5]~21_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[5]~21_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[5]~21_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[5]~21_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[5]~21_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|Equal9~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|Equal9~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|Equal9~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|Equal9~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|Equal9~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|Equal9~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|Equal9~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|Equal9~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|Equal9~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|Equal9~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|Equal9~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~27_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~27_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~27_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~27_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~27_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~27_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~27_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~27_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~27_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~27_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~27_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[2]~32_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[2]~32_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[2]~32_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[2]~32_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[2]~32_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[2]~32_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[2]~32_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[2]~32_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[2]~32_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[2]~32_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[2]~32_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~36_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~36_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~36_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~36_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~36_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~36_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~36_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~36_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~36_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~36_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~36_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~43_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~43_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~43_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~43_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~43_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~43_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~43_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~43_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~43_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~43_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos~43_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk2|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk2|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk2|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk2|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk2|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk2|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk2|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk2|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk2|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk2|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk2|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[0]~49_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[0]~49_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[0]~49_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[0]~49_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[0]~49_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[0]~49_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[0]~49_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[0]~49_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[0]~49_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[0]~49_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_uni_min|segmentos[0]~49_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~19_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~19_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~19_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~19_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~19_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~19_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~19_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~19_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~19_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~19_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~19_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk1|qtemp_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk1|qtemp_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk1|qtemp_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk1|qtemp_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk1|qtemp_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk1|qtemp_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk1|qtemp_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk1|qtemp_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk1|qtemp_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk1|qtemp_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \dezenas_minutos|ffjk1|qtemp_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~23_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~23_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~23_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~23_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~23_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~23_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~23_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~23_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~23_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~23_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos~23_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|Equal9~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|Equal9~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|Equal9~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|Equal9~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|Equal9~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|Equal9~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|Equal9~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|Equal9~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|Equal9~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|Equal9~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|Equal9~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[2]~26_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[2]~26_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[2]~26_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[2]~26_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[2]~26_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[2]~26_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[2]~26_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[2]~26_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[2]~26_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[2]~26_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[2]~26_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[3]~33_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[3]~33_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[3]~33_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[3]~33_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[3]~33_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[3]~33_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[3]~33_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[3]~33_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[3]~33_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[3]~33_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[3]~33_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[0]~37_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[0]~37_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[0]~37_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[0]~37_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[0]~37_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[0]~37_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[0]~37_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[0]~37_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[0]~37_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[0]~37_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[0]~37_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[1]~41_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[1]~41_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[1]~41_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[1]~41_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[1]~41_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[1]~41_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[1]~41_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[1]~41_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[1]~41_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[1]~41_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \bcd_dez_min|segmentos[1]~41_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \clock_dezenas_segundos|z~3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \clock_dezenas_minutos|z~3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \clock~dataout\ : std_logic;
SIGNAL \clear~dataout\ : std_logic;
SIGNAL \entrada~dataout\ : std_logic;
SIGNAL \unidades_segundos|ffjk0|qtemp~dataout\ : std_logic;
SIGNAL \unidades_segundos|ffjk2|qtemp~dataout\ : std_logic;
SIGNAL \unidades_segundos|ffjk3|qtemp~dataout\ : std_logic;
SIGNAL \unidades_segundos|ffjk1|qtemp~dataout\ : std_logic;
SIGNAL \bcd_uni_seg|segmentos[5]~21_dataout\ : std_logic;
SIGNAL \bcd_uni_seg|segmentos~27_dataout\ : std_logic;
SIGNAL \bcd_uni_seg|segmentos[2]~32_dataout\ : std_logic;
SIGNAL \bcd_uni_seg|Equal9~10_dataout\ : std_logic;
SIGNAL \bcd_uni_seg|segmentos~36_dataout\ : std_logic;
SIGNAL \bcd_uni_seg|segmentos~43_dataout\ : std_logic;
SIGNAL \bcd_uni_seg|segmentos[0]~49_dataout\ : std_logic;
SIGNAL \clock_dezenas_segundos|z~3_dataout\ : std_logic;
SIGNAL \dezenas_segundos|ffjk0|qtemp~dataout\ : std_logic;
SIGNAL \dezenas_segundos|ffjk1|qtemp~dataout\ : std_logic;
SIGNAL \dezenas_segundos|ffjk2|qtemp~dataout\ : std_logic;
SIGNAL \bcd_dez_seg|segmentos~19_dataout\ : std_logic;
SIGNAL \bcd_dez_seg|segmentos[3]~25_dataout\ : std_logic;
SIGNAL \bcd_dez_seg|Equal9~3_dataout\ : std_logic;
SIGNAL \bcd_dez_seg|segmentos~28_dataout\ : std_logic;
SIGNAL \bcd_dez_seg|segmentos[0]~33_dataout\ : std_logic;
SIGNAL \bcd_dez_seg|segmentos[1]~41_dataout\ : std_logic;
SIGNAL \bcd_dez_seg|segmentos[2]~35_dataout\ : std_logic;
SIGNAL \unidades_minutos|ffjk0|qtemp~dataout\ : std_logic;
SIGNAL \unidades_minutos|ffjk2|qtemp~dataout\ : std_logic;
SIGNAL \unidades_minutos|ffjk3|qtemp~dataout\ : std_logic;
SIGNAL \unidades_minutos|ffjk1|qtemp~dataout\ : std_logic;
SIGNAL \bcd_uni_min|segmentos[5]~21_dataout\ : std_logic;
SIGNAL \bcd_uni_min|segmentos~27_dataout\ : std_logic;
SIGNAL \bcd_uni_min|segmentos[2]~32_dataout\ : std_logic;
SIGNAL \bcd_uni_min|Equal9~10_dataout\ : std_logic;
SIGNAL \bcd_uni_min|segmentos~36_dataout\ : std_logic;
SIGNAL \bcd_uni_min|segmentos~43_dataout\ : std_logic;
SIGNAL \bcd_uni_min|segmentos[0]~49_dataout\ : std_logic;
SIGNAL \clock_dezenas_minutos|z~3_dataout\ : std_logic;
SIGNAL \dezenas_minutos|ffjk0|qtemp~dataout\ : std_logic;
SIGNAL \dezenas_minutos|ffjk1|qtemp~dataout\ : std_logic;
SIGNAL \dezenas_minutos|ffjk2|qtemp~dataout\ : std_logic;
SIGNAL \bcd_dez_min|segmentos~19_dataout\ : std_logic;
SIGNAL \bcd_dez_min|segmentos~23_dataout\ : std_logic;
SIGNAL \bcd_dez_min|segmentos[2]~26_dataout\ : std_logic;
SIGNAL \bcd_dez_min|segmentos[3]~33_dataout\ : std_logic;
SIGNAL \bcd_dez_min|Equal9~3_dataout\ : std_logic;
SIGNAL \bcd_dez_min|segmentos[0]~37_dataout\ : std_logic;
SIGNAL \bcd_dez_min|segmentos[1]~41_dataout\ : std_logic;
SIGNAL \unidades_segundos|ffjk0|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \unidades_segundos|ffjk1|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \unidades_segundos|ffjk2|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \unidades_segundos|ffjk3|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \dezenas_segundos|ffjk0|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \dezenas_segundos|ffjk1|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \dezenas_segundos|ffjk2|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \unidades_minutos|ffjk0|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \unidades_minutos|ffjk1|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \unidades_minutos|ffjk2|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \unidades_minutos|ffjk3|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \dezenas_minutos|ffjk0|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \dezenas_minutos|ffjk2|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \dezenas_minutos|ffjk1|ALT_INV_qtemp~dataout\ : std_logic;
SIGNAL \ALT_INV_clock~dataout\ : std_logic;
SIGNAL \ALT_INV_clear~dataout\ : std_logic;

BEGIN

ww_entrada <= entrada;
ww_clock <= clock;
ww_clear <= clear;
dez_min <= ww_dez_min;
uni_min <= ww_uni_min;
dez_sec <= ww_dez_sec;
uni_sec <= ww_uni_sec;

\unidades_segundos|ffjk0|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk0|qtemp_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk0|qtemp_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk0|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk0|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk0|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk0|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk0|qtemp_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk0|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \entrada~dataout\);

\unidades_segundos|ffjk0|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk0|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk1|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk1|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk1|qtemp~dataout\ & \unidades_segundos|ffjk0|qtemp~dataout\);

\unidades_segundos|ffjk1|qtemp_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk3|qtemp~dataout\ & \unidades_segundos|ffjk0|qtemp~dataout\);

\unidades_segundos|ffjk1|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk1|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk1|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk1|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk1|qtemp_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk1|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\unidades_segundos|ffjk1|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk1|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk2|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk2|qtemp_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk2|qtemp_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk2|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk2|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk2|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk2|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk2|qtemp_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk2|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk1|qtemp~dataout\ & \unidades_segundos|ffjk0|qtemp~dataout\);

\unidades_segundos|ffjk2|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk2|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk3|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk3|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk3|qtemp~dataout\ & \unidades_segundos|ffjk0|qtemp~dataout\);

\unidades_segundos|ffjk3|qtemp_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk2|qtemp~dataout\ & \unidades_segundos|ffjk1|qtemp~dataout\ & \unidades_segundos|ffjk0|qtemp~dataout\);

\unidades_segundos|ffjk3|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk3|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk3|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk3|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk3|qtemp_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk3|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\unidades_segundos|ffjk3|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_segundos|ffjk3|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk0|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk0|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \entrada~dataout\);

\dezenas_segundos|ffjk0|qtemp_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk0|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk0|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk0|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk0|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk0|qtemp_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clock_dezenas_segundos|z~3_dataout\);

\dezenas_segundos|ffjk0|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dezenas_segundos|ffjk0|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk0|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[5]~21_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[5]~21_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk1|qtemp~dataout\ & \unidades_segundos|ffjk0|qtemp~dataout\);

\bcd_uni_seg|segmentos[5]~21_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk1|qtemp~dataout\ & NOT \unidades_segundos|ffjk0|qtemp~dataout\);

\bcd_uni_seg|segmentos[5]~21_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk2|qtemp~dataout\);

\bcd_uni_seg|segmentos[5]~21_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk3|qtemp~dataout\);

\bcd_uni_seg|segmentos[5]~21_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[5]~21_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[5]~21_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[5]~21_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_seg|segmentos[5]~21_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[5]~21_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|Equal9~10_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|Equal9~10_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk3|qtemp~dataout\ & \unidades_segundos|ffjk1|qtemp~dataout\ & NOT \unidades_segundos|ffjk2|qtemp~dataout\ & NOT \unidades_segundos|ffjk0|qtemp~dataout\);

\bcd_uni_seg|Equal9~10_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|Equal9~10_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|Equal9~10_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|Equal9~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|Equal9~10_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|Equal9~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|Equal9~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_seg|Equal9~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|Equal9~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~27_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~27_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk1|qtemp~dataout\ & \unidades_segundos|ffjk2|qtemp~dataout\);

\bcd_uni_seg|segmentos~27_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk0|qtemp~dataout\ & \unidades_segundos|ffjk2|qtemp~dataout\);

\bcd_uni_seg|segmentos~27_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk0|qtemp~dataout\ & NOT \unidades_segundos|ffjk1|qtemp~dataout\);

\bcd_uni_seg|segmentos~27_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk3|qtemp~dataout\);

\bcd_uni_seg|segmentos~27_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~27_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~27_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~27_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_seg|segmentos~27_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~27_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[2]~32_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[2]~32_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk2|qtemp~dataout\ & NOT \unidades_segundos|ffjk1|qtemp~dataout\ & NOT \unidades_segundos|ffjk3|qtemp~dataout\);

\bcd_uni_seg|segmentos[2]~32_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk0|qtemp~dataout\ & NOT \unidades_segundos|ffjk3|qtemp~dataout\);

\bcd_uni_seg|segmentos[2]~32_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk0|qtemp~dataout\ & NOT \unidades_segundos|ffjk2|qtemp~dataout\ & NOT \unidades_segundos|ffjk1|qtemp~dataout\);

\bcd_uni_seg|segmentos[2]~32_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[2]~32_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[2]~32_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[2]~32_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[2]~32_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_seg|segmentos[2]~32_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[2]~32_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~36_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~36_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk0|qtemp~dataout\ & NOT \unidades_segundos|ffjk2|qtemp~dataout\);

\bcd_uni_seg|segmentos~36_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk0|qtemp~dataout\ & \unidades_segundos|ffjk2|qtemp~dataout\);

\bcd_uni_seg|segmentos~36_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk3|qtemp~dataout\);

\bcd_uni_seg|segmentos~36_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk1|qtemp~dataout\);

\bcd_uni_seg|segmentos~36_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~36_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~36_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~36_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_seg|segmentos~36_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~36_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~43_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk3|qtemp~dataout\);

\bcd_uni_seg|segmentos~43_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk2|qtemp~dataout\ & \unidades_segundos|ffjk1|qtemp~dataout\);

\bcd_uni_seg|segmentos~43_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk0|qtemp~dataout\ & \unidades_segundos|ffjk1|qtemp~dataout\);

\bcd_uni_seg|segmentos~43_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk0|qtemp~dataout\ & NOT \unidades_segundos|ffjk2|qtemp~dataout\);

\bcd_uni_seg|segmentos~43_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk0|qtemp~dataout\ & \unidades_segundos|ffjk2|qtemp~dataout\ & NOT \unidades_segundos|ffjk1|qtemp~dataout\);

\bcd_uni_seg|segmentos~43_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~43_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~43_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~43_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_seg|segmentos~43_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos~43_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk1|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk1|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk1|qtemp~dataout\ & \dezenas_segundos|ffjk0|qtemp~dataout\);

\dezenas_segundos|ffjk1|qtemp_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk2|qtemp~dataout\ & \dezenas_segundos|ffjk0|qtemp~dataout\);

\dezenas_segundos|ffjk1|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk1|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk1|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk1|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk1|qtemp_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clock_dezenas_segundos|z~3_dataout\);

\dezenas_segundos|ffjk1|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dezenas_segundos|ffjk1|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk1|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[0]~49_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[0]~49_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk3|qtemp~dataout\ & NOT \unidades_segundos|ffjk2|qtemp~dataout\ & NOT \unidades_segundos|ffjk1|qtemp~dataout\);

\bcd_uni_seg|segmentos[0]~49_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk3|qtemp~dataout\ & NOT \unidades_segundos|ffjk2|qtemp~dataout\ & \unidades_segundos|ffjk1|qtemp~dataout\);

\bcd_uni_seg|segmentos[0]~49_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk0|qtemp~dataout\ & NOT \unidades_segundos|ffjk3|qtemp~dataout\ & \unidades_segundos|ffjk2|qtemp~dataout\);

\bcd_uni_seg|segmentos[0]~49_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_segundos|ffjk3|qtemp~dataout\ & \unidades_segundos|ffjk2|qtemp~dataout\ & NOT \unidades_segundos|ffjk1|qtemp~dataout\);

\bcd_uni_seg|segmentos[0]~49_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[0]~49_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[0]~49_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[0]~49_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_seg|segmentos[0]~49_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_seg|segmentos[0]~49_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~19_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~19_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk2|qtemp~dataout\ & NOT \dezenas_segundos|ffjk0|qtemp~dataout\);

\bcd_dez_seg|segmentos~19_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk2|qtemp~dataout\ & \dezenas_segundos|ffjk0|qtemp~dataout\);

\bcd_dez_seg|segmentos~19_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk1|qtemp~dataout\);

\bcd_dez_seg|segmentos~19_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~19_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~19_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~19_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~19_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_seg|segmentos~19_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~19_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[3]~25_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[3]~25_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk2|qtemp~dataout\ & NOT \dezenas_segundos|ffjk0|qtemp~dataout\);

\bcd_dez_seg|segmentos[3]~25_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk1|qtemp~dataout\ & \dezenas_segundos|ffjk2|qtemp~dataout\ & \dezenas_segundos|ffjk0|qtemp~dataout\);

\bcd_dez_seg|segmentos[3]~25_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk1|qtemp~dataout\ & NOT \dezenas_segundos|ffjk0|qtemp~dataout\);

\bcd_dez_seg|segmentos[3]~25_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk1|qtemp~dataout\ & NOT \dezenas_segundos|ffjk2|qtemp~dataout\);

\bcd_dez_seg|segmentos[3]~25_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[3]~25_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[3]~25_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[3]~25_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_seg|segmentos[3]~25_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[3]~25_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk2|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk2|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk2|qtemp~dataout\ & \dezenas_segundos|ffjk0|qtemp~dataout\);

\dezenas_segundos|ffjk2|qtemp_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk1|qtemp~dataout\ & \dezenas_segundos|ffjk0|qtemp~dataout\);

\dezenas_segundos|ffjk2|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk2|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk2|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk2|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk2|qtemp_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clock_dezenas_segundos|z~3_dataout\);

\dezenas_segundos|ffjk2|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dezenas_segundos|ffjk2|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_segundos|ffjk2|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk0|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk0|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \entrada~dataout\);

\unidades_minutos|ffjk0|qtemp_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk0|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk0|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk0|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk0|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk0|qtemp_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk2|qtemp~dataout\);

\unidades_minutos|ffjk0|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\unidades_minutos|ffjk0|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk0|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|Equal9~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|Equal9~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk1|qtemp~dataout\ & NOT \dezenas_segundos|ffjk0|qtemp~dataout\ & NOT \dezenas_segundos|ffjk2|qtemp~dataout\);

\bcd_dez_seg|Equal9~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|Equal9~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|Equal9~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|Equal9~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|Equal9~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|Equal9~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|Equal9~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_seg|Equal9~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|Equal9~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~28_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~28_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk1|qtemp~dataout\ & \dezenas_segundos|ffjk0|qtemp~dataout\ & \dezenas_segundos|ffjk2|qtemp~dataout\);

\bcd_dez_seg|segmentos~28_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk1|qtemp~dataout\ & NOT \dezenas_segundos|ffjk0|qtemp~dataout\ & \dezenas_segundos|ffjk2|qtemp~dataout\);

\bcd_dez_seg|segmentos~28_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~28_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~28_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~28_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~28_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~28_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_seg|segmentos~28_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos~28_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[0]~33_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[0]~33_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk1|qtemp~dataout\ & NOT \dezenas_segundos|ffjk2|qtemp~dataout\);

\bcd_dez_seg|segmentos[0]~33_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk1|qtemp~dataout\ & \dezenas_segundos|ffjk2|qtemp~dataout\);

\bcd_dez_seg|segmentos[0]~33_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk0|qtemp~dataout\ & \dezenas_segundos|ffjk1|qtemp~dataout\);

\bcd_dez_seg|segmentos[0]~33_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[0]~33_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[0]~33_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[0]~33_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[0]~33_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_seg|segmentos[0]~33_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[0]~33_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[2]~35_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[2]~35_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk2|qtemp~dataout\ & NOT \dezenas_segundos|ffjk1|qtemp~dataout\);

\bcd_dez_seg|segmentos[2]~35_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk0|qtemp~dataout\);

\bcd_dez_seg|segmentos[2]~35_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[2]~35_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[2]~35_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[2]~35_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[2]~35_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[2]~35_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_seg|segmentos[2]~35_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[2]~35_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[1]~41_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[1]~41_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk1|qtemp~dataout\ & NOT \dezenas_segundos|ffjk0|qtemp~dataout\);

\bcd_dez_seg|segmentos[1]~41_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk2|qtemp~dataout\ & NOT \dezenas_segundos|ffjk0|qtemp~dataout\);

\bcd_dez_seg|segmentos[1]~41_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_segundos|ffjk2|qtemp~dataout\ & NOT \dezenas_segundos|ffjk1|qtemp~dataout\);

\bcd_dez_seg|segmentos[1]~41_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[1]~41_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[1]~41_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[1]~41_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[1]~41_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_seg|segmentos[1]~41_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_seg|segmentos[1]~41_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk1|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk1|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk1|qtemp~dataout\ & \unidades_minutos|ffjk0|qtemp~dataout\);

\unidades_minutos|ffjk1|qtemp_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk3|qtemp~dataout\ & \unidades_minutos|ffjk0|qtemp~dataout\);

\unidades_minutos|ffjk1|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk1|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk1|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk1|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk1|qtemp_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk2|qtemp~dataout\);

\unidades_minutos|ffjk1|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\unidades_minutos|ffjk1|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk1|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk2|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk2|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk1|qtemp~dataout\ & \unidades_minutos|ffjk0|qtemp~dataout\);

\unidades_minutos|ffjk2|qtemp_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk2|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk2|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk2|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk2|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk2|qtemp_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk2|qtemp~dataout\);

\unidades_minutos|ffjk2|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\unidades_minutos|ffjk2|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk2|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk3|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk3|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk3|qtemp~dataout\ & \unidades_minutos|ffjk0|qtemp~dataout\);

\unidades_minutos|ffjk3|qtemp_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk2|qtemp~dataout\ & \unidades_minutos|ffjk1|qtemp~dataout\ & \unidades_minutos|ffjk0|qtemp~dataout\);

\unidades_minutos|ffjk3|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk3|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk3|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk3|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk3|qtemp_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_segundos|ffjk2|qtemp~dataout\);

\unidades_minutos|ffjk3|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\unidades_minutos|ffjk3|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\unidades_minutos|ffjk3|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk0|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk0|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \entrada~dataout\);

\dezenas_minutos|ffjk0|qtemp_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk0|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk0|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk0|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk0|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk0|qtemp_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clock_dezenas_minutos|z~3_dataout\);

\dezenas_minutos|ffjk0|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dezenas_minutos|ffjk0|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk0|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[5]~21_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[5]~21_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk1|qtemp~dataout\ & \unidades_minutos|ffjk0|qtemp~dataout\);

\bcd_uni_min|segmentos[5]~21_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk1|qtemp~dataout\ & NOT \unidades_minutos|ffjk0|qtemp~dataout\);

\bcd_uni_min|segmentos[5]~21_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk2|qtemp~dataout\);

\bcd_uni_min|segmentos[5]~21_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk3|qtemp~dataout\);

\bcd_uni_min|segmentos[5]~21_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[5]~21_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[5]~21_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[5]~21_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_min|segmentos[5]~21_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[5]~21_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|Equal9~10_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|Equal9~10_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk3|qtemp~dataout\ & \unidades_minutos|ffjk1|qtemp~dataout\ & NOT \unidades_minutos|ffjk2|qtemp~dataout\ & NOT \unidades_minutos|ffjk0|qtemp~dataout\);

\bcd_uni_min|Equal9~10_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|Equal9~10_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|Equal9~10_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|Equal9~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|Equal9~10_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|Equal9~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|Equal9~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_min|Equal9~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|Equal9~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~27_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~27_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk1|qtemp~dataout\ & \unidades_minutos|ffjk2|qtemp~dataout\);

\bcd_uni_min|segmentos~27_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk0|qtemp~dataout\ & \unidades_minutos|ffjk2|qtemp~dataout\);

\bcd_uni_min|segmentos~27_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk0|qtemp~dataout\ & NOT \unidades_minutos|ffjk1|qtemp~dataout\);

\bcd_uni_min|segmentos~27_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk3|qtemp~dataout\);

\bcd_uni_min|segmentos~27_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~27_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~27_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~27_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_min|segmentos~27_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~27_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[2]~32_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[2]~32_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk2|qtemp~dataout\ & NOT \unidades_minutos|ffjk1|qtemp~dataout\ & NOT \unidades_minutos|ffjk3|qtemp~dataout\);

\bcd_uni_min|segmentos[2]~32_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk0|qtemp~dataout\ & NOT \unidades_minutos|ffjk3|qtemp~dataout\);

\bcd_uni_min|segmentos[2]~32_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk0|qtemp~dataout\ & NOT \unidades_minutos|ffjk2|qtemp~dataout\ & NOT \unidades_minutos|ffjk1|qtemp~dataout\);

\bcd_uni_min|segmentos[2]~32_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[2]~32_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[2]~32_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[2]~32_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[2]~32_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_min|segmentos[2]~32_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[2]~32_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~36_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~36_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk0|qtemp~dataout\ & NOT \unidades_minutos|ffjk2|qtemp~dataout\);

\bcd_uni_min|segmentos~36_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk0|qtemp~dataout\ & \unidades_minutos|ffjk2|qtemp~dataout\);

\bcd_uni_min|segmentos~36_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk3|qtemp~dataout\);

\bcd_uni_min|segmentos~36_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk1|qtemp~dataout\);

\bcd_uni_min|segmentos~36_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~36_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~36_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~36_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_min|segmentos~36_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~36_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~43_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk3|qtemp~dataout\);

\bcd_uni_min|segmentos~43_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk2|qtemp~dataout\ & \unidades_minutos|ffjk1|qtemp~dataout\);

\bcd_uni_min|segmentos~43_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk0|qtemp~dataout\ & \unidades_minutos|ffjk1|qtemp~dataout\);

\bcd_uni_min|segmentos~43_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk0|qtemp~dataout\ & NOT \unidades_minutos|ffjk2|qtemp~dataout\);

\bcd_uni_min|segmentos~43_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk0|qtemp~dataout\ & \unidades_minutos|ffjk2|qtemp~dataout\ & NOT \unidades_minutos|ffjk1|qtemp~dataout\);

\bcd_uni_min|segmentos~43_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~43_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~43_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~43_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_min|segmentos~43_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos~43_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk2|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk2|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk2|qtemp~dataout\ & \dezenas_minutos|ffjk0|qtemp~dataout\);

\dezenas_minutos|ffjk2|qtemp_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk1|qtemp~dataout\ & \dezenas_minutos|ffjk0|qtemp~dataout\);

\dezenas_minutos|ffjk2|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk2|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk2|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk2|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk2|qtemp_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clock_dezenas_minutos|z~3_dataout\);

\dezenas_minutos|ffjk2|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dezenas_minutos|ffjk2|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk2|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[0]~49_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[0]~49_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk3|qtemp~dataout\ & NOT \unidades_minutos|ffjk2|qtemp~dataout\ & NOT \unidades_minutos|ffjk1|qtemp~dataout\);

\bcd_uni_min|segmentos[0]~49_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk3|qtemp~dataout\ & NOT \unidades_minutos|ffjk2|qtemp~dataout\ & \unidades_minutos|ffjk1|qtemp~dataout\);

\bcd_uni_min|segmentos[0]~49_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk0|qtemp~dataout\ & NOT \unidades_minutos|ffjk3|qtemp~dataout\ & \unidades_minutos|ffjk2|qtemp~dataout\);

\bcd_uni_min|segmentos[0]~49_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \unidades_minutos|ffjk3|qtemp~dataout\ & \unidades_minutos|ffjk2|qtemp~dataout\ & NOT \unidades_minutos|ffjk1|qtemp~dataout\);

\bcd_uni_min|segmentos[0]~49_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[0]~49_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[0]~49_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[0]~49_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_uni_min|segmentos[0]~49_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_uni_min|segmentos[0]~49_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~19_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~19_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_minutos|ffjk1|qtemp~dataout\ & \dezenas_minutos|ffjk0|qtemp~dataout\ & \dezenas_minutos|ffjk2|qtemp~dataout\);

\bcd_dez_min|segmentos~19_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk1|qtemp~dataout\ & NOT \dezenas_minutos|ffjk0|qtemp~dataout\ & \dezenas_minutos|ffjk2|qtemp~dataout\);

\bcd_dez_min|segmentos~19_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~19_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~19_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~19_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~19_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~19_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_min|segmentos~19_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~19_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk1|qtemp_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk1|qtemp_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk1|qtemp~dataout\ & \dezenas_minutos|ffjk0|qtemp~dataout\);

\dezenas_minutos|ffjk1|qtemp_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_minutos|ffjk2|qtemp~dataout\ & \dezenas_minutos|ffjk0|qtemp~dataout\);

\dezenas_minutos|ffjk1|qtemp_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk1|qtemp_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk1|qtemp_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk1|qtemp_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk1|qtemp_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \clock_dezenas_minutos|z~3_dataout\);

\dezenas_minutos|ffjk1|qtemp_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\dezenas_minutos|ffjk1|qtemp_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\dezenas_minutos|ffjk1|qtemp_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~23_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~23_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_minutos|ffjk2|qtemp~dataout\ & NOT \dezenas_minutos|ffjk0|qtemp~dataout\);

\bcd_dez_min|segmentos~23_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk2|qtemp~dataout\ & \dezenas_minutos|ffjk0|qtemp~dataout\);

\bcd_dez_min|segmentos~23_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk1|qtemp~dataout\);

\bcd_dez_min|segmentos~23_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~23_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~23_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~23_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~23_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_min|segmentos~23_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos~23_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|Equal9~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|Equal9~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk1|qtemp~dataout\ & NOT \dezenas_minutos|ffjk0|qtemp~dataout\ & NOT \dezenas_minutos|ffjk2|qtemp~dataout\);

\bcd_dez_min|Equal9~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|Equal9~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|Equal9~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|Equal9~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|Equal9~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|Equal9~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|Equal9~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_min|Equal9~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|Equal9~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[2]~26_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[2]~26_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk2|qtemp~dataout\ & NOT \dezenas_minutos|ffjk1|qtemp~dataout\);

\bcd_dez_min|segmentos[2]~26_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk0|qtemp~dataout\);

\bcd_dez_min|segmentos[2]~26_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[2]~26_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[2]~26_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[2]~26_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[2]~26_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[2]~26_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_min|segmentos[2]~26_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[2]~26_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[3]~33_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[3]~33_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_minutos|ffjk2|qtemp~dataout\ & NOT \dezenas_minutos|ffjk0|qtemp~dataout\);

\bcd_dez_min|segmentos[3]~33_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_minutos|ffjk1|qtemp~dataout\ & \dezenas_minutos|ffjk2|qtemp~dataout\ & \dezenas_minutos|ffjk0|qtemp~dataout\);

\bcd_dez_min|segmentos[3]~33_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk1|qtemp~dataout\ & NOT \dezenas_minutos|ffjk0|qtemp~dataout\);

\bcd_dez_min|segmentos[3]~33_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk1|qtemp~dataout\ & NOT \dezenas_minutos|ffjk2|qtemp~dataout\);

\bcd_dez_min|segmentos[3]~33_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[3]~33_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[3]~33_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[3]~33_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_min|segmentos[3]~33_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[3]~33_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[0]~37_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[0]~37_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk1|qtemp~dataout\ & NOT \dezenas_minutos|ffjk2|qtemp~dataout\);

\bcd_dez_min|segmentos[0]~37_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_minutos|ffjk1|qtemp~dataout\ & \dezenas_minutos|ffjk2|qtemp~dataout\);

\bcd_dez_min|segmentos[0]~37_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_minutos|ffjk0|qtemp~dataout\ & \dezenas_minutos|ffjk1|qtemp~dataout\);

\bcd_dez_min|segmentos[0]~37_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[0]~37_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[0]~37_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[0]~37_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[0]~37_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_min|segmentos[0]~37_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[0]~37_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[1]~41_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[1]~41_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \dezenas_minutos|ffjk1|qtemp~dataout\ & NOT \dezenas_minutos|ffjk0|qtemp~dataout\);

\bcd_dez_min|segmentos[1]~41_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk2|qtemp~dataout\ & NOT \dezenas_minutos|ffjk0|qtemp~dataout\);

\bcd_dez_min|segmentos[1]~41_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \dezenas_minutos|ffjk2|qtemp~dataout\ & NOT \dezenas_minutos|ffjk1|qtemp~dataout\);

\bcd_dez_min|segmentos[1]~41_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[1]~41_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[1]~41_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[1]~41_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[1]~41_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\bcd_dez_min|segmentos[1]~41_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\bcd_dez_min|segmentos[1]~41_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\clock_dezenas_segundos|z~3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_segundos|ffjk3|qtemp~dataout\ & \unidades_segundos|ffjk0|qtemp~dataout\);

\clock_dezenas_minutos|z~3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \unidades_minutos|ffjk3|qtemp~dataout\ & \unidades_minutos|ffjk0|qtemp~dataout\);
\unidades_segundos|ffjk0|ALT_INV_qtemp~dataout\ <= NOT \unidades_segundos|ffjk0|qtemp~dataout\;
\unidades_segundos|ffjk1|ALT_INV_qtemp~dataout\ <= NOT \unidades_segundos|ffjk1|qtemp~dataout\;
\unidades_segundos|ffjk2|ALT_INV_qtemp~dataout\ <= NOT \unidades_segundos|ffjk2|qtemp~dataout\;
\unidades_segundos|ffjk3|ALT_INV_qtemp~dataout\ <= NOT \unidades_segundos|ffjk3|qtemp~dataout\;
\dezenas_segundos|ffjk0|ALT_INV_qtemp~dataout\ <= NOT \dezenas_segundos|ffjk0|qtemp~dataout\;
\dezenas_segundos|ffjk1|ALT_INV_qtemp~dataout\ <= NOT \dezenas_segundos|ffjk1|qtemp~dataout\;
\dezenas_segundos|ffjk2|ALT_INV_qtemp~dataout\ <= NOT \dezenas_segundos|ffjk2|qtemp~dataout\;
\unidades_minutos|ffjk0|ALT_INV_qtemp~dataout\ <= NOT \unidades_minutos|ffjk0|qtemp~dataout\;
\unidades_minutos|ffjk1|ALT_INV_qtemp~dataout\ <= NOT \unidades_minutos|ffjk1|qtemp~dataout\;
\unidades_minutos|ffjk2|ALT_INV_qtemp~dataout\ <= NOT \unidades_minutos|ffjk2|qtemp~dataout\;
\unidades_minutos|ffjk3|ALT_INV_qtemp~dataout\ <= NOT \unidades_minutos|ffjk3|qtemp~dataout\;
\dezenas_minutos|ffjk0|ALT_INV_qtemp~dataout\ <= NOT \dezenas_minutos|ffjk0|qtemp~dataout\;
\dezenas_minutos|ffjk2|ALT_INV_qtemp~dataout\ <= NOT \dezenas_minutos|ffjk2|qtemp~dataout\;
\dezenas_minutos|ffjk1|ALT_INV_qtemp~dataout\ <= NOT \dezenas_minutos|ffjk1|qtemp~dataout\;
\ALT_INV_clock~dataout\ <= NOT \clock~dataout\;
\ALT_INV_clear~dataout\ <= NOT \clear~dataout\;

-- Location: PIN_43
\clock~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock,
	dataout => \clock~dataout\);

-- Location: PIN_1
\clear~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clear,
	dataout => \clear~dataout\);

-- Location: PIN_2
\entrada~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entrada,
	dataout => \entrada~dataout\);

-- Location: LC10
\unidades_segundos|ffjk0|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~dataout\,
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \unidades_segundos|ffjk0|qtemp_pterm0_bus\,
	pterm1 => \unidades_segundos|ffjk0|qtemp_pterm1_bus\,
	pterm2 => \unidades_segundos|ffjk0|qtemp_pterm2_bus\,
	pterm3 => \unidades_segundos|ffjk0|qtemp_pterm3_bus\,
	pterm4 => \unidades_segundos|ffjk0|qtemp_pterm4_bus\,
	pterm5 => \unidades_segundos|ffjk0|qtemp_pterm5_bus\,
	pxor => \unidades_segundos|ffjk0|qtemp_pxor_bus\,
	pclk => \unidades_segundos|ffjk0|qtemp_pclk_bus\,
	papre => \unidades_segundos|ffjk0|qtemp_papre_bus\,
	paclr => \unidades_segundos|ffjk0|qtemp_paclr_bus\,
	pena => \unidades_segundos|ffjk0|qtemp_pena_bus\,
	dataout => \unidades_segundos|ffjk0|qtemp~dataout\);

-- Location: LC6
\unidades_segundos|ffjk2|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~dataout\,
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \unidades_segundos|ffjk2|qtemp_pterm0_bus\,
	pterm1 => \unidades_segundos|ffjk2|qtemp_pterm1_bus\,
	pterm2 => \unidades_segundos|ffjk2|qtemp_pterm2_bus\,
	pterm3 => \unidades_segundos|ffjk2|qtemp_pterm3_bus\,
	pterm4 => \unidades_segundos|ffjk2|qtemp_pterm4_bus\,
	pterm5 => \unidades_segundos|ffjk2|qtemp_pterm5_bus\,
	pxor => \unidades_segundos|ffjk2|qtemp_pxor_bus\,
	pclk => \unidades_segundos|ffjk2|qtemp_pclk_bus\,
	papre => \unidades_segundos|ffjk2|qtemp_papre_bus\,
	paclr => \unidades_segundos|ffjk2|qtemp_paclr_bus\,
	pena => \unidades_segundos|ffjk2|qtemp_pena_bus\,
	dataout => \unidades_segundos|ffjk2|qtemp~dataout\);

-- Location: LC38
\unidades_segundos|ffjk3|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~dataout\,
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \unidades_segundos|ffjk3|qtemp_pterm0_bus\,
	pterm1 => \unidades_segundos|ffjk3|qtemp_pterm1_bus\,
	pterm2 => \unidades_segundos|ffjk3|qtemp_pterm2_bus\,
	pterm3 => \unidades_segundos|ffjk3|qtemp_pterm3_bus\,
	pterm4 => \unidades_segundos|ffjk3|qtemp_pterm4_bus\,
	pterm5 => \unidades_segundos|ffjk3|qtemp_pterm5_bus\,
	pxor => \unidades_segundos|ffjk3|qtemp_pxor_bus\,
	pclk => \unidades_segundos|ffjk3|qtemp_pclk_bus\,
	papre => \unidades_segundos|ffjk3|qtemp_papre_bus\,
	paclr => \unidades_segundos|ffjk3|qtemp_paclr_bus\,
	pena => \unidades_segundos|ffjk3|qtemp_pena_bus\,
	dataout => \unidades_segundos|ffjk3|qtemp~dataout\);

-- Location: LC2
\unidades_segundos|ffjk1|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~dataout\,
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \unidades_segundos|ffjk1|qtemp_pterm0_bus\,
	pterm1 => \unidades_segundos|ffjk1|qtemp_pterm1_bus\,
	pterm2 => \unidades_segundos|ffjk1|qtemp_pterm2_bus\,
	pterm3 => \unidades_segundos|ffjk1|qtemp_pterm3_bus\,
	pterm4 => \unidades_segundos|ffjk1|qtemp_pterm4_bus\,
	pterm5 => \unidades_segundos|ffjk1|qtemp_pterm5_bus\,
	pxor => \unidades_segundos|ffjk1|qtemp_pxor_bus\,
	pclk => \unidades_segundos|ffjk1|qtemp_pclk_bus\,
	papre => \unidades_segundos|ffjk1|qtemp_papre_bus\,
	paclr => \unidades_segundos|ffjk1|qtemp_paclr_bus\,
	pena => \unidades_segundos|ffjk1|qtemp_pena_bus\,
	dataout => \unidades_segundos|ffjk1|qtemp~dataout\);

-- Location: LC35
\bcd_uni_seg|segmentos[5]~21\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_seg|segmentos[5]~21_pterm0_bus\,
	pterm1 => \bcd_uni_seg|segmentos[5]~21_pterm1_bus\,
	pterm2 => \bcd_uni_seg|segmentos[5]~21_pterm2_bus\,
	pterm3 => \bcd_uni_seg|segmentos[5]~21_pterm3_bus\,
	pterm4 => \bcd_uni_seg|segmentos[5]~21_pterm4_bus\,
	pterm5 => \bcd_uni_seg|segmentos[5]~21_pterm5_bus\,
	pxor => \bcd_uni_seg|segmentos[5]~21_pxor_bus\,
	pclk => \bcd_uni_seg|segmentos[5]~21_pclk_bus\,
	papre => \bcd_uni_seg|segmentos[5]~21_papre_bus\,
	paclr => \bcd_uni_seg|segmentos[5]~21_paclr_bus\,
	pena => \bcd_uni_seg|segmentos[5]~21_pena_bus\,
	dataout => \bcd_uni_seg|segmentos[5]~21_dataout\);

-- Location: LC37
\bcd_uni_seg|segmentos~27\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_seg|segmentos~27_pterm0_bus\,
	pterm1 => \bcd_uni_seg|segmentos~27_pterm1_bus\,
	pterm2 => \bcd_uni_seg|segmentos~27_pterm2_bus\,
	pterm3 => \bcd_uni_seg|segmentos~27_pterm3_bus\,
	pterm4 => \bcd_uni_seg|segmentos~27_pterm4_bus\,
	pterm5 => \bcd_uni_seg|segmentos~27_pterm5_bus\,
	pxor => \bcd_uni_seg|segmentos~27_pxor_bus\,
	pclk => \bcd_uni_seg|segmentos~27_pclk_bus\,
	papre => \bcd_uni_seg|segmentos~27_papre_bus\,
	paclr => \bcd_uni_seg|segmentos~27_paclr_bus\,
	pena => \bcd_uni_seg|segmentos~27_pena_bus\,
	dataout => \bcd_uni_seg|segmentos~27_dataout\);

-- Location: LC33
\bcd_uni_seg|segmentos[2]~32\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_seg|segmentos[2]~32_pterm0_bus\,
	pterm1 => \bcd_uni_seg|segmentos[2]~32_pterm1_bus\,
	pterm2 => \bcd_uni_seg|segmentos[2]~32_pterm2_bus\,
	pterm3 => \bcd_uni_seg|segmentos[2]~32_pterm3_bus\,
	pterm4 => \bcd_uni_seg|segmentos[2]~32_pterm4_bus\,
	pterm5 => \bcd_uni_seg|segmentos[2]~32_pterm5_bus\,
	pxor => \bcd_uni_seg|segmentos[2]~32_pxor_bus\,
	pclk => \bcd_uni_seg|segmentos[2]~32_pclk_bus\,
	papre => \bcd_uni_seg|segmentos[2]~32_papre_bus\,
	paclr => \bcd_uni_seg|segmentos[2]~32_paclr_bus\,
	pena => \bcd_uni_seg|segmentos[2]~32_pena_bus\,
	dataout => \bcd_uni_seg|segmentos[2]~32_dataout\);

-- Location: LC36
\bcd_uni_seg|Equal9~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_seg|Equal9~10_pterm0_bus\,
	pterm1 => \bcd_uni_seg|Equal9~10_pterm1_bus\,
	pterm2 => \bcd_uni_seg|Equal9~10_pterm2_bus\,
	pterm3 => \bcd_uni_seg|Equal9~10_pterm3_bus\,
	pterm4 => \bcd_uni_seg|Equal9~10_pterm4_bus\,
	pterm5 => \bcd_uni_seg|Equal9~10_pterm5_bus\,
	pxor => \bcd_uni_seg|Equal9~10_pxor_bus\,
	pclk => \bcd_uni_seg|Equal9~10_pclk_bus\,
	papre => \bcd_uni_seg|Equal9~10_papre_bus\,
	paclr => \bcd_uni_seg|Equal9~10_paclr_bus\,
	pena => \bcd_uni_seg|Equal9~10_pena_bus\,
	dataout => \bcd_uni_seg|Equal9~10_dataout\);

-- Location: LC40
\bcd_uni_seg|segmentos~36\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_seg|segmentos~36_pterm0_bus\,
	pterm1 => \bcd_uni_seg|segmentos~36_pterm1_bus\,
	pterm2 => \bcd_uni_seg|segmentos~36_pterm2_bus\,
	pterm3 => \bcd_uni_seg|segmentos~36_pterm3_bus\,
	pterm4 => \bcd_uni_seg|segmentos~36_pterm4_bus\,
	pterm5 => \bcd_uni_seg|segmentos~36_pterm5_bus\,
	pxor => \bcd_uni_seg|segmentos~36_pxor_bus\,
	pclk => \bcd_uni_seg|segmentos~36_pclk_bus\,
	papre => \bcd_uni_seg|segmentos~36_papre_bus\,
	paclr => \bcd_uni_seg|segmentos~36_paclr_bus\,
	pena => \bcd_uni_seg|segmentos~36_pena_bus\,
	dataout => \bcd_uni_seg|segmentos~36_dataout\);

-- Location: LC41
\bcd_uni_seg|segmentos~43\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_seg|segmentos~43_pterm0_bus\,
	pterm1 => \bcd_uni_seg|segmentos~43_pterm1_bus\,
	pterm2 => \bcd_uni_seg|segmentos~43_pterm2_bus\,
	pterm3 => \bcd_uni_seg|segmentos~43_pterm3_bus\,
	pterm4 => \bcd_uni_seg|segmentos~43_pterm4_bus\,
	pterm5 => \bcd_uni_seg|segmentos~43_pterm5_bus\,
	pxor => \bcd_uni_seg|segmentos~43_pxor_bus\,
	pclk => \bcd_uni_seg|segmentos~43_pclk_bus\,
	papre => \bcd_uni_seg|segmentos~43_papre_bus\,
	paclr => \bcd_uni_seg|segmentos~43_paclr_bus\,
	pena => \bcd_uni_seg|segmentos~43_pena_bus\,
	dataout => \bcd_uni_seg|segmentos~43_dataout\);

-- Location: LC46
\bcd_uni_seg|segmentos[0]~49\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_seg|segmentos[0]~49_pterm0_bus\,
	pterm1 => \bcd_uni_seg|segmentos[0]~49_pterm1_bus\,
	pterm2 => \bcd_uni_seg|segmentos[0]~49_pterm2_bus\,
	pterm3 => \bcd_uni_seg|segmentos[0]~49_pterm3_bus\,
	pterm4 => \bcd_uni_seg|segmentos[0]~49_pterm4_bus\,
	pterm5 => \bcd_uni_seg|segmentos[0]~49_pterm5_bus\,
	pxor => \bcd_uni_seg|segmentos[0]~49_pxor_bus\,
	pclk => \bcd_uni_seg|segmentos[0]~49_pclk_bus\,
	papre => \bcd_uni_seg|segmentos[0]~49_papre_bus\,
	paclr => \bcd_uni_seg|segmentos[0]~49_paclr_bus\,
	pena => \bcd_uni_seg|segmentos[0]~49_pena_bus\,
	dataout => \bcd_uni_seg|segmentos[0]~49_dataout\);

-- Location: SEXP1
\clock_dezenas_segundos|z~3\ : max_sexp
PORT MAP (
	datain => \clock_dezenas_segundos|z~3_datain_bus\,
	dataout => \clock_dezenas_segundos|z~3_dataout\);

-- Location: LC9
\dezenas_segundos|ffjk0|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \dezenas_segundos|ffjk0|qtemp_pterm0_bus\,
	pterm1 => \dezenas_segundos|ffjk0|qtemp_pterm1_bus\,
	pterm2 => \dezenas_segundos|ffjk0|qtemp_pterm2_bus\,
	pterm3 => \dezenas_segundos|ffjk0|qtemp_pterm3_bus\,
	pterm4 => \dezenas_segundos|ffjk0|qtemp_pterm4_bus\,
	pterm5 => \dezenas_segundos|ffjk0|qtemp_pterm5_bus\,
	pxor => \dezenas_segundos|ffjk0|qtemp_pxor_bus\,
	pclk => \dezenas_segundos|ffjk0|qtemp_pclk_bus\,
	papre => \dezenas_segundos|ffjk0|qtemp_papre_bus\,
	paclr => \dezenas_segundos|ffjk0|qtemp_paclr_bus\,
	pena => \dezenas_segundos|ffjk0|qtemp_pena_bus\,
	dataout => \dezenas_segundos|ffjk0|qtemp~dataout\);

-- Location: LC12
\dezenas_segundos|ffjk1|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \dezenas_segundos|ffjk1|qtemp_pterm0_bus\,
	pterm1 => \dezenas_segundos|ffjk1|qtemp_pterm1_bus\,
	pterm2 => \dezenas_segundos|ffjk1|qtemp_pterm2_bus\,
	pterm3 => \dezenas_segundos|ffjk1|qtemp_pterm3_bus\,
	pterm4 => \dezenas_segundos|ffjk1|qtemp_pterm4_bus\,
	pterm5 => \dezenas_segundos|ffjk1|qtemp_pterm5_bus\,
	pxor => \dezenas_segundos|ffjk1|qtemp_pxor_bus\,
	pclk => \dezenas_segundos|ffjk1|qtemp_pclk_bus\,
	papre => \dezenas_segundos|ffjk1|qtemp_papre_bus\,
	paclr => \dezenas_segundos|ffjk1|qtemp_paclr_bus\,
	pena => \dezenas_segundos|ffjk1|qtemp_pena_bus\,
	dataout => \dezenas_segundos|ffjk1|qtemp~dataout\);

-- Location: LC7
\dezenas_segundos|ffjk2|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \dezenas_segundos|ffjk2|qtemp_pterm0_bus\,
	pterm1 => \dezenas_segundos|ffjk2|qtemp_pterm1_bus\,
	pterm2 => \dezenas_segundos|ffjk2|qtemp_pterm2_bus\,
	pterm3 => \dezenas_segundos|ffjk2|qtemp_pterm3_bus\,
	pterm4 => \dezenas_segundos|ffjk2|qtemp_pterm4_bus\,
	pterm5 => \dezenas_segundos|ffjk2|qtemp_pterm5_bus\,
	pxor => \dezenas_segundos|ffjk2|qtemp_pxor_bus\,
	pclk => \dezenas_segundos|ffjk2|qtemp_pclk_bus\,
	papre => \dezenas_segundos|ffjk2|qtemp_papre_bus\,
	paclr => \dezenas_segundos|ffjk2|qtemp_paclr_bus\,
	pena => \dezenas_segundos|ffjk2|qtemp_pena_bus\,
	dataout => \dezenas_segundos|ffjk2|qtemp~dataout\);

-- Location: LC3
\bcd_dez_seg|segmentos~19\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_seg|segmentos~19_pterm0_bus\,
	pterm1 => \bcd_dez_seg|segmentos~19_pterm1_bus\,
	pterm2 => \bcd_dez_seg|segmentos~19_pterm2_bus\,
	pterm3 => \bcd_dez_seg|segmentos~19_pterm3_bus\,
	pterm4 => \bcd_dez_seg|segmentos~19_pterm4_bus\,
	pterm5 => \bcd_dez_seg|segmentos~19_pterm5_bus\,
	pxor => \bcd_dez_seg|segmentos~19_pxor_bus\,
	pclk => \bcd_dez_seg|segmentos~19_pclk_bus\,
	papre => \bcd_dez_seg|segmentos~19_papre_bus\,
	paclr => \bcd_dez_seg|segmentos~19_paclr_bus\,
	pena => \bcd_dez_seg|segmentos~19_pena_bus\,
	dataout => \bcd_dez_seg|segmentos~19_dataout\);

-- Location: LC4
\bcd_dez_seg|segmentos[3]~25\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_seg|segmentos[3]~25_pterm0_bus\,
	pterm1 => \bcd_dez_seg|segmentos[3]~25_pterm1_bus\,
	pterm2 => \bcd_dez_seg|segmentos[3]~25_pterm2_bus\,
	pterm3 => \bcd_dez_seg|segmentos[3]~25_pterm3_bus\,
	pterm4 => \bcd_dez_seg|segmentos[3]~25_pterm4_bus\,
	pterm5 => \bcd_dez_seg|segmentos[3]~25_pterm5_bus\,
	pxor => \bcd_dez_seg|segmentos[3]~25_pxor_bus\,
	pclk => \bcd_dez_seg|segmentos[3]~25_pclk_bus\,
	papre => \bcd_dez_seg|segmentos[3]~25_papre_bus\,
	paclr => \bcd_dez_seg|segmentos[3]~25_paclr_bus\,
	pena => \bcd_dez_seg|segmentos[3]~25_pena_bus\,
	dataout => \bcd_dez_seg|segmentos[3]~25_dataout\);

-- Location: LC1
\bcd_dez_seg|Equal9~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_seg|Equal9~3_pterm0_bus\,
	pterm1 => \bcd_dez_seg|Equal9~3_pterm1_bus\,
	pterm2 => \bcd_dez_seg|Equal9~3_pterm2_bus\,
	pterm3 => \bcd_dez_seg|Equal9~3_pterm3_bus\,
	pterm4 => \bcd_dez_seg|Equal9~3_pterm4_bus\,
	pterm5 => \bcd_dez_seg|Equal9~3_pterm5_bus\,
	pxor => \bcd_dez_seg|Equal9~3_pxor_bus\,
	pclk => \bcd_dez_seg|Equal9~3_pclk_bus\,
	papre => \bcd_dez_seg|Equal9~3_papre_bus\,
	paclr => \bcd_dez_seg|Equal9~3_paclr_bus\,
	pena => \bcd_dez_seg|Equal9~3_pena_bus\,
	dataout => \bcd_dez_seg|Equal9~3_dataout\);

-- Location: LC5
\bcd_dez_seg|segmentos~28\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_seg|segmentos~28_pterm0_bus\,
	pterm1 => \bcd_dez_seg|segmentos~28_pterm1_bus\,
	pterm2 => \bcd_dez_seg|segmentos~28_pterm2_bus\,
	pterm3 => \bcd_dez_seg|segmentos~28_pterm3_bus\,
	pterm4 => \bcd_dez_seg|segmentos~28_pterm4_bus\,
	pterm5 => \bcd_dez_seg|segmentos~28_pterm5_bus\,
	pxor => \bcd_dez_seg|segmentos~28_pxor_bus\,
	pclk => \bcd_dez_seg|segmentos~28_pclk_bus\,
	papre => \bcd_dez_seg|segmentos~28_papre_bus\,
	paclr => \bcd_dez_seg|segmentos~28_paclr_bus\,
	pena => \bcd_dez_seg|segmentos~28_pena_bus\,
	dataout => \bcd_dez_seg|segmentos~28_dataout\);

-- Location: LC11
\bcd_dez_seg|segmentos[0]~33\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_seg|segmentos[0]~33_pterm0_bus\,
	pterm1 => \bcd_dez_seg|segmentos[0]~33_pterm1_bus\,
	pterm2 => \bcd_dez_seg|segmentos[0]~33_pterm2_bus\,
	pterm3 => \bcd_dez_seg|segmentos[0]~33_pterm3_bus\,
	pterm4 => \bcd_dez_seg|segmentos[0]~33_pterm4_bus\,
	pterm5 => \bcd_dez_seg|segmentos[0]~33_pterm5_bus\,
	pxor => \bcd_dez_seg|segmentos[0]~33_pxor_bus\,
	pclk => \bcd_dez_seg|segmentos[0]~33_pclk_bus\,
	papre => \bcd_dez_seg|segmentos[0]~33_papre_bus\,
	paclr => \bcd_dez_seg|segmentos[0]~33_paclr_bus\,
	pena => \bcd_dez_seg|segmentos[0]~33_pena_bus\,
	dataout => \bcd_dez_seg|segmentos[0]~33_dataout\);

-- Location: LC16
\bcd_dez_seg|segmentos[1]~41\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_seg|segmentos[1]~41_pterm0_bus\,
	pterm1 => \bcd_dez_seg|segmentos[1]~41_pterm1_bus\,
	pterm2 => \bcd_dez_seg|segmentos[1]~41_pterm2_bus\,
	pterm3 => \bcd_dez_seg|segmentos[1]~41_pterm3_bus\,
	pterm4 => \bcd_dez_seg|segmentos[1]~41_pterm4_bus\,
	pterm5 => \bcd_dez_seg|segmentos[1]~41_pterm5_bus\,
	pxor => \bcd_dez_seg|segmentos[1]~41_pxor_bus\,
	pclk => \bcd_dez_seg|segmentos[1]~41_pclk_bus\,
	papre => \bcd_dez_seg|segmentos[1]~41_papre_bus\,
	paclr => \bcd_dez_seg|segmentos[1]~41_paclr_bus\,
	pena => \bcd_dez_seg|segmentos[1]~41_pena_bus\,
	dataout => \bcd_dez_seg|segmentos[1]~41_dataout\);

-- Location: LC14
\bcd_dez_seg|segmentos[2]~35\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_seg|segmentos[2]~35_pterm0_bus\,
	pterm1 => \bcd_dez_seg|segmentos[2]~35_pterm1_bus\,
	pterm2 => \bcd_dez_seg|segmentos[2]~35_pterm2_bus\,
	pterm3 => \bcd_dez_seg|segmentos[2]~35_pterm3_bus\,
	pterm4 => \bcd_dez_seg|segmentos[2]~35_pterm4_bus\,
	pterm5 => \bcd_dez_seg|segmentos[2]~35_pterm5_bus\,
	pxor => \bcd_dez_seg|segmentos[2]~35_pxor_bus\,
	pclk => \bcd_dez_seg|segmentos[2]~35_pclk_bus\,
	papre => \bcd_dez_seg|segmentos[2]~35_papre_bus\,
	paclr => \bcd_dez_seg|segmentos[2]~35_paclr_bus\,
	pena => \bcd_dez_seg|segmentos[2]~35_pena_bus\,
	dataout => \bcd_dez_seg|segmentos[2]~35_dataout\);

-- Location: LC8
\unidades_minutos|ffjk0|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \unidades_minutos|ffjk0|qtemp_pterm0_bus\,
	pterm1 => \unidades_minutos|ffjk0|qtemp_pterm1_bus\,
	pterm2 => \unidades_minutos|ffjk0|qtemp_pterm2_bus\,
	pterm3 => \unidades_minutos|ffjk0|qtemp_pterm3_bus\,
	pterm4 => \unidades_minutos|ffjk0|qtemp_pterm4_bus\,
	pterm5 => \unidades_minutos|ffjk0|qtemp_pterm5_bus\,
	pxor => \unidades_minutos|ffjk0|qtemp_pxor_bus\,
	pclk => \unidades_minutos|ffjk0|qtemp_pclk_bus\,
	papre => \unidades_minutos|ffjk0|qtemp_papre_bus\,
	paclr => \unidades_minutos|ffjk0|qtemp_paclr_bus\,
	pena => \unidades_minutos|ffjk0|qtemp_pena_bus\,
	dataout => \unidades_minutos|ffjk0|qtemp~dataout\);

-- Location: LC23
\unidades_minutos|ffjk2|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \unidades_minutos|ffjk2|qtemp_pterm0_bus\,
	pterm1 => \unidades_minutos|ffjk2|qtemp_pterm1_bus\,
	pterm2 => \unidades_minutos|ffjk2|qtemp_pterm2_bus\,
	pterm3 => \unidades_minutos|ffjk2|qtemp_pterm3_bus\,
	pterm4 => \unidades_minutos|ffjk2|qtemp_pterm4_bus\,
	pterm5 => \unidades_minutos|ffjk2|qtemp_pterm5_bus\,
	pxor => \unidades_minutos|ffjk2|qtemp_pxor_bus\,
	pclk => \unidades_minutos|ffjk2|qtemp_pclk_bus\,
	papre => \unidades_minutos|ffjk2|qtemp_papre_bus\,
	paclr => \unidades_minutos|ffjk2|qtemp_paclr_bus\,
	pena => \unidades_minutos|ffjk2|qtemp_pena_bus\,
	dataout => \unidades_minutos|ffjk2|qtemp~dataout\);

-- Location: LC28
\unidades_minutos|ffjk3|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \unidades_minutos|ffjk3|qtemp_pterm0_bus\,
	pterm1 => \unidades_minutos|ffjk3|qtemp_pterm1_bus\,
	pterm2 => \unidades_minutos|ffjk3|qtemp_pterm2_bus\,
	pterm3 => \unidades_minutos|ffjk3|qtemp_pterm3_bus\,
	pterm4 => \unidades_minutos|ffjk3|qtemp_pterm4_bus\,
	pterm5 => \unidades_minutos|ffjk3|qtemp_pterm5_bus\,
	pxor => \unidades_minutos|ffjk3|qtemp_pxor_bus\,
	pclk => \unidades_minutos|ffjk3|qtemp_pclk_bus\,
	papre => \unidades_minutos|ffjk3|qtemp_papre_bus\,
	paclr => \unidades_minutos|ffjk3|qtemp_paclr_bus\,
	pena => \unidades_minutos|ffjk3|qtemp_pena_bus\,
	dataout => \unidades_minutos|ffjk3|qtemp~dataout\);

-- Location: LC18
\unidades_minutos|ffjk1|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \unidades_minutos|ffjk1|qtemp_pterm0_bus\,
	pterm1 => \unidades_minutos|ffjk1|qtemp_pterm1_bus\,
	pterm2 => \unidades_minutos|ffjk1|qtemp_pterm2_bus\,
	pterm3 => \unidades_minutos|ffjk1|qtemp_pterm3_bus\,
	pterm4 => \unidades_minutos|ffjk1|qtemp_pterm4_bus\,
	pterm5 => \unidades_minutos|ffjk1|qtemp_pterm5_bus\,
	pxor => \unidades_minutos|ffjk1|qtemp_pxor_bus\,
	pclk => \unidades_minutos|ffjk1|qtemp_pclk_bus\,
	papre => \unidades_minutos|ffjk1|qtemp_papre_bus\,
	paclr => \unidades_minutos|ffjk1|qtemp_paclr_bus\,
	pena => \unidades_minutos|ffjk1|qtemp_pena_bus\,
	dataout => \unidades_minutos|ffjk1|qtemp~dataout\);

-- Location: LC53
\bcd_uni_min|segmentos[5]~21\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_min|segmentos[5]~21_pterm0_bus\,
	pterm1 => \bcd_uni_min|segmentos[5]~21_pterm1_bus\,
	pterm2 => \bcd_uni_min|segmentos[5]~21_pterm2_bus\,
	pterm3 => \bcd_uni_min|segmentos[5]~21_pterm3_bus\,
	pterm4 => \bcd_uni_min|segmentos[5]~21_pterm4_bus\,
	pterm5 => \bcd_uni_min|segmentos[5]~21_pterm5_bus\,
	pxor => \bcd_uni_min|segmentos[5]~21_pxor_bus\,
	pclk => \bcd_uni_min|segmentos[5]~21_pclk_bus\,
	papre => \bcd_uni_min|segmentos[5]~21_papre_bus\,
	paclr => \bcd_uni_min|segmentos[5]~21_paclr_bus\,
	pena => \bcd_uni_min|segmentos[5]~21_pena_bus\,
	dataout => \bcd_uni_min|segmentos[5]~21_dataout\);

-- Location: LC62
\bcd_uni_min|segmentos~27\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_min|segmentos~27_pterm0_bus\,
	pterm1 => \bcd_uni_min|segmentos~27_pterm1_bus\,
	pterm2 => \bcd_uni_min|segmentos~27_pterm2_bus\,
	pterm3 => \bcd_uni_min|segmentos~27_pterm3_bus\,
	pterm4 => \bcd_uni_min|segmentos~27_pterm4_bus\,
	pterm5 => \bcd_uni_min|segmentos~27_pterm5_bus\,
	pxor => \bcd_uni_min|segmentos~27_pxor_bus\,
	pclk => \bcd_uni_min|segmentos~27_pclk_bus\,
	papre => \bcd_uni_min|segmentos~27_papre_bus\,
	paclr => \bcd_uni_min|segmentos~27_paclr_bus\,
	pena => \bcd_uni_min|segmentos~27_pena_bus\,
	dataout => \bcd_uni_min|segmentos~27_dataout\);

-- Location: LC64
\bcd_uni_min|segmentos[2]~32\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_min|segmentos[2]~32_pterm0_bus\,
	pterm1 => \bcd_uni_min|segmentos[2]~32_pterm1_bus\,
	pterm2 => \bcd_uni_min|segmentos[2]~32_pterm2_bus\,
	pterm3 => \bcd_uni_min|segmentos[2]~32_pterm3_bus\,
	pterm4 => \bcd_uni_min|segmentos[2]~32_pterm4_bus\,
	pterm5 => \bcd_uni_min|segmentos[2]~32_pterm5_bus\,
	pxor => \bcd_uni_min|segmentos[2]~32_pxor_bus\,
	pclk => \bcd_uni_min|segmentos[2]~32_pclk_bus\,
	papre => \bcd_uni_min|segmentos[2]~32_papre_bus\,
	paclr => \bcd_uni_min|segmentos[2]~32_paclr_bus\,
	pena => \bcd_uni_min|segmentos[2]~32_pena_bus\,
	dataout => \bcd_uni_min|segmentos[2]~32_dataout\);

-- Location: LC57
\bcd_uni_min|Equal9~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_min|Equal9~10_pterm0_bus\,
	pterm1 => \bcd_uni_min|Equal9~10_pterm1_bus\,
	pterm2 => \bcd_uni_min|Equal9~10_pterm2_bus\,
	pterm3 => \bcd_uni_min|Equal9~10_pterm3_bus\,
	pterm4 => \bcd_uni_min|Equal9~10_pterm4_bus\,
	pterm5 => \bcd_uni_min|Equal9~10_pterm5_bus\,
	pxor => \bcd_uni_min|Equal9~10_pxor_bus\,
	pclk => \bcd_uni_min|Equal9~10_pclk_bus\,
	papre => \bcd_uni_min|Equal9~10_papre_bus\,
	paclr => \bcd_uni_min|Equal9~10_paclr_bus\,
	pena => \bcd_uni_min|Equal9~10_pena_bus\,
	dataout => \bcd_uni_min|Equal9~10_dataout\);

-- Location: LC49
\bcd_uni_min|segmentos~36\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_min|segmentos~36_pterm0_bus\,
	pterm1 => \bcd_uni_min|segmentos~36_pterm1_bus\,
	pterm2 => \bcd_uni_min|segmentos~36_pterm2_bus\,
	pterm3 => \bcd_uni_min|segmentos~36_pterm3_bus\,
	pterm4 => \bcd_uni_min|segmentos~36_pterm4_bus\,
	pterm5 => \bcd_uni_min|segmentos~36_pterm5_bus\,
	pxor => \bcd_uni_min|segmentos~36_pxor_bus\,
	pclk => \bcd_uni_min|segmentos~36_pclk_bus\,
	papre => \bcd_uni_min|segmentos~36_papre_bus\,
	paclr => \bcd_uni_min|segmentos~36_paclr_bus\,
	pena => \bcd_uni_min|segmentos~36_pena_bus\,
	dataout => \bcd_uni_min|segmentos~36_dataout\);

-- Location: LC51
\bcd_uni_min|segmentos~43\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_min|segmentos~43_pterm0_bus\,
	pterm1 => \bcd_uni_min|segmentos~43_pterm1_bus\,
	pterm2 => \bcd_uni_min|segmentos~43_pterm2_bus\,
	pterm3 => \bcd_uni_min|segmentos~43_pterm3_bus\,
	pterm4 => \bcd_uni_min|segmentos~43_pterm4_bus\,
	pterm5 => \bcd_uni_min|segmentos~43_pterm5_bus\,
	pxor => \bcd_uni_min|segmentos~43_pxor_bus\,
	pclk => \bcd_uni_min|segmentos~43_pclk_bus\,
	papre => \bcd_uni_min|segmentos~43_papre_bus\,
	paclr => \bcd_uni_min|segmentos~43_paclr_bus\,
	pena => \bcd_uni_min|segmentos~43_pena_bus\,
	dataout => \bcd_uni_min|segmentos~43_dataout\);

-- Location: LC52
\bcd_uni_min|segmentos[0]~49\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_uni_min|segmentos[0]~49_pterm0_bus\,
	pterm1 => \bcd_uni_min|segmentos[0]~49_pterm1_bus\,
	pterm2 => \bcd_uni_min|segmentos[0]~49_pterm2_bus\,
	pterm3 => \bcd_uni_min|segmentos[0]~49_pterm3_bus\,
	pterm4 => \bcd_uni_min|segmentos[0]~49_pterm4_bus\,
	pterm5 => \bcd_uni_min|segmentos[0]~49_pterm5_bus\,
	pxor => \bcd_uni_min|segmentos[0]~49_pxor_bus\,
	pclk => \bcd_uni_min|segmentos[0]~49_pclk_bus\,
	papre => \bcd_uni_min|segmentos[0]~49_papre_bus\,
	paclr => \bcd_uni_min|segmentos[0]~49_paclr_bus\,
	pena => \bcd_uni_min|segmentos[0]~49_pena_bus\,
	dataout => \bcd_uni_min|segmentos[0]~49_dataout\);

-- Location: SEXP17
\clock_dezenas_minutos|z~3\ : max_sexp
PORT MAP (
	datain => \clock_dezenas_minutos|z~3_datain_bus\,
	dataout => \clock_dezenas_minutos|z~3_dataout\);

-- Location: LC29
\dezenas_minutos|ffjk0|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \dezenas_minutos|ffjk0|qtemp_pterm0_bus\,
	pterm1 => \dezenas_minutos|ffjk0|qtemp_pterm1_bus\,
	pterm2 => \dezenas_minutos|ffjk0|qtemp_pterm2_bus\,
	pterm3 => \dezenas_minutos|ffjk0|qtemp_pterm3_bus\,
	pterm4 => \dezenas_minutos|ffjk0|qtemp_pterm4_bus\,
	pterm5 => \dezenas_minutos|ffjk0|qtemp_pterm5_bus\,
	pxor => \dezenas_minutos|ffjk0|qtemp_pxor_bus\,
	pclk => \dezenas_minutos|ffjk0|qtemp_pclk_bus\,
	papre => \dezenas_minutos|ffjk0|qtemp_papre_bus\,
	paclr => \dezenas_minutos|ffjk0|qtemp_paclr_bus\,
	pena => \dezenas_minutos|ffjk0|qtemp_pena_bus\,
	dataout => \dezenas_minutos|ffjk0|qtemp~dataout\);

-- Location: LC26
\dezenas_minutos|ffjk1|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \dezenas_minutos|ffjk1|qtemp_pterm0_bus\,
	pterm1 => \dezenas_minutos|ffjk1|qtemp_pterm1_bus\,
	pterm2 => \dezenas_minutos|ffjk1|qtemp_pterm2_bus\,
	pterm3 => \dezenas_minutos|ffjk1|qtemp_pterm3_bus\,
	pterm4 => \dezenas_minutos|ffjk1|qtemp_pterm4_bus\,
	pterm5 => \dezenas_minutos|ffjk1|qtemp_pterm5_bus\,
	pxor => \dezenas_minutos|ffjk1|qtemp_pxor_bus\,
	pclk => \dezenas_minutos|ffjk1|qtemp_pclk_bus\,
	papre => \dezenas_minutos|ffjk1|qtemp_papre_bus\,
	paclr => \dezenas_minutos|ffjk1|qtemp_paclr_bus\,
	pena => \dezenas_minutos|ffjk1|qtemp_pena_bus\,
	dataout => \dezenas_minutos|ffjk1|qtemp~dataout\);

-- Location: LC27
\dezenas_minutos|ffjk2|qtemp\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_clear~dataout\,
	pterm0 => \dezenas_minutos|ffjk2|qtemp_pterm0_bus\,
	pterm1 => \dezenas_minutos|ffjk2|qtemp_pterm1_bus\,
	pterm2 => \dezenas_minutos|ffjk2|qtemp_pterm2_bus\,
	pterm3 => \dezenas_minutos|ffjk2|qtemp_pterm3_bus\,
	pterm4 => \dezenas_minutos|ffjk2|qtemp_pterm4_bus\,
	pterm5 => \dezenas_minutos|ffjk2|qtemp_pterm5_bus\,
	pxor => \dezenas_minutos|ffjk2|qtemp_pxor_bus\,
	pclk => \dezenas_minutos|ffjk2|qtemp_pclk_bus\,
	papre => \dezenas_minutos|ffjk2|qtemp_papre_bus\,
	paclr => \dezenas_minutos|ffjk2|qtemp_paclr_bus\,
	pena => \dezenas_minutos|ffjk2|qtemp_pena_bus\,
	dataout => \dezenas_minutos|ffjk2|qtemp~dataout\);

-- Location: LC17
\bcd_dez_min|segmentos~19\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_min|segmentos~19_pterm0_bus\,
	pterm1 => \bcd_dez_min|segmentos~19_pterm1_bus\,
	pterm2 => \bcd_dez_min|segmentos~19_pterm2_bus\,
	pterm3 => \bcd_dez_min|segmentos~19_pterm3_bus\,
	pterm4 => \bcd_dez_min|segmentos~19_pterm4_bus\,
	pterm5 => \bcd_dez_min|segmentos~19_pterm5_bus\,
	pxor => \bcd_dez_min|segmentos~19_pxor_bus\,
	pclk => \bcd_dez_min|segmentos~19_pclk_bus\,
	papre => \bcd_dez_min|segmentos~19_papre_bus\,
	paclr => \bcd_dez_min|segmentos~19_paclr_bus\,
	pena => \bcd_dez_min|segmentos~19_pena_bus\,
	dataout => \bcd_dez_min|segmentos~19_dataout\);

-- Location: LC19
\bcd_dez_min|segmentos~23\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_min|segmentos~23_pterm0_bus\,
	pterm1 => \bcd_dez_min|segmentos~23_pterm1_bus\,
	pterm2 => \bcd_dez_min|segmentos~23_pterm2_bus\,
	pterm3 => \bcd_dez_min|segmentos~23_pterm3_bus\,
	pterm4 => \bcd_dez_min|segmentos~23_pterm4_bus\,
	pterm5 => \bcd_dez_min|segmentos~23_pterm5_bus\,
	pxor => \bcd_dez_min|segmentos~23_pxor_bus\,
	pclk => \bcd_dez_min|segmentos~23_pclk_bus\,
	papre => \bcd_dez_min|segmentos~23_papre_bus\,
	paclr => \bcd_dez_min|segmentos~23_paclr_bus\,
	pena => \bcd_dez_min|segmentos~23_pena_bus\,
	dataout => \bcd_dez_min|segmentos~23_dataout\);

-- Location: LC21
\bcd_dez_min|segmentos[2]~26\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_min|segmentos[2]~26_pterm0_bus\,
	pterm1 => \bcd_dez_min|segmentos[2]~26_pterm1_bus\,
	pterm2 => \bcd_dez_min|segmentos[2]~26_pterm2_bus\,
	pterm3 => \bcd_dez_min|segmentos[2]~26_pterm3_bus\,
	pterm4 => \bcd_dez_min|segmentos[2]~26_pterm4_bus\,
	pterm5 => \bcd_dez_min|segmentos[2]~26_pterm5_bus\,
	pxor => \bcd_dez_min|segmentos[2]~26_pxor_bus\,
	pclk => \bcd_dez_min|segmentos[2]~26_pclk_bus\,
	papre => \bcd_dez_min|segmentos[2]~26_papre_bus\,
	paclr => \bcd_dez_min|segmentos[2]~26_paclr_bus\,
	pena => \bcd_dez_min|segmentos[2]~26_pena_bus\,
	dataout => \bcd_dez_min|segmentos[2]~26_dataout\);

-- Location: LC24
\bcd_dez_min|segmentos[3]~33\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_min|segmentos[3]~33_pterm0_bus\,
	pterm1 => \bcd_dez_min|segmentos[3]~33_pterm1_bus\,
	pterm2 => \bcd_dez_min|segmentos[3]~33_pterm2_bus\,
	pterm3 => \bcd_dez_min|segmentos[3]~33_pterm3_bus\,
	pterm4 => \bcd_dez_min|segmentos[3]~33_pterm4_bus\,
	pterm5 => \bcd_dez_min|segmentos[3]~33_pterm5_bus\,
	pxor => \bcd_dez_min|segmentos[3]~33_pxor_bus\,
	pclk => \bcd_dez_min|segmentos[3]~33_pclk_bus\,
	papre => \bcd_dez_min|segmentos[3]~33_papre_bus\,
	paclr => \bcd_dez_min|segmentos[3]~33_paclr_bus\,
	pena => \bcd_dez_min|segmentos[3]~33_pena_bus\,
	dataout => \bcd_dez_min|segmentos[3]~33_dataout\);

-- Location: LC20
\bcd_dez_min|Equal9~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_min|Equal9~3_pterm0_bus\,
	pterm1 => \bcd_dez_min|Equal9~3_pterm1_bus\,
	pterm2 => \bcd_dez_min|Equal9~3_pterm2_bus\,
	pterm3 => \bcd_dez_min|Equal9~3_pterm3_bus\,
	pterm4 => \bcd_dez_min|Equal9~3_pterm4_bus\,
	pterm5 => \bcd_dez_min|Equal9~3_pterm5_bus\,
	pxor => \bcd_dez_min|Equal9~3_pxor_bus\,
	pclk => \bcd_dez_min|Equal9~3_pclk_bus\,
	papre => \bcd_dez_min|Equal9~3_papre_bus\,
	paclr => \bcd_dez_min|Equal9~3_paclr_bus\,
	pena => \bcd_dez_min|Equal9~3_pena_bus\,
	dataout => \bcd_dez_min|Equal9~3_dataout\);

-- Location: LC25
\bcd_dez_min|segmentos[0]~37\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_min|segmentos[0]~37_pterm0_bus\,
	pterm1 => \bcd_dez_min|segmentos[0]~37_pterm1_bus\,
	pterm2 => \bcd_dez_min|segmentos[0]~37_pterm2_bus\,
	pterm3 => \bcd_dez_min|segmentos[0]~37_pterm3_bus\,
	pterm4 => \bcd_dez_min|segmentos[0]~37_pterm4_bus\,
	pterm5 => \bcd_dez_min|segmentos[0]~37_pterm5_bus\,
	pxor => \bcd_dez_min|segmentos[0]~37_pxor_bus\,
	pclk => \bcd_dez_min|segmentos[0]~37_pclk_bus\,
	papre => \bcd_dez_min|segmentos[0]~37_papre_bus\,
	paclr => \bcd_dez_min|segmentos[0]~37_paclr_bus\,
	pena => \bcd_dez_min|segmentos[0]~37_pena_bus\,
	dataout => \bcd_dez_min|segmentos[0]~37_dataout\);

-- Location: LC30
\bcd_dez_min|segmentos[1]~41\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \bcd_dez_min|segmentos[1]~41_pterm0_bus\,
	pterm1 => \bcd_dez_min|segmentos[1]~41_pterm1_bus\,
	pterm2 => \bcd_dez_min|segmentos[1]~41_pterm2_bus\,
	pterm3 => \bcd_dez_min|segmentos[1]~41_pterm3_bus\,
	pterm4 => \bcd_dez_min|segmentos[1]~41_pterm4_bus\,
	pterm5 => \bcd_dez_min|segmentos[1]~41_pterm5_bus\,
	pxor => \bcd_dez_min|segmentos[1]~41_pxor_bus\,
	pclk => \bcd_dez_min|segmentos[1]~41_pclk_bus\,
	papre => \bcd_dez_min|segmentos[1]~41_papre_bus\,
	paclr => \bcd_dez_min|segmentos[1]~41_paclr_bus\,
	pena => \bcd_dez_min|segmentos[1]~41_pena_bus\,
	dataout => \bcd_dez_min|segmentos[1]~41_dataout\);

-- Location: PIN_25
\uni_sec[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_seg|segmentos[5]~21_dataout\,
	oe => VCC,
	padio => ww_uni_sec(5));

-- Location: PIN_27
\uni_sec[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_seg|segmentos~27_dataout\,
	oe => VCC,
	padio => ww_uni_sec(1));

-- Location: PIN_24
\uni_sec[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_seg|segmentos[2]~32_dataout\,
	oe => VCC,
	padio => ww_uni_sec(2));

-- Location: PIN_26
\uni_sec[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_seg|Equal9~10_dataout\,
	oe => VCC,
	padio => ww_uni_sec(4));

-- Location: PIN_28
\uni_sec[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_seg|segmentos~36_dataout\,
	oe => VCC,
	padio => ww_uni_sec(6));

-- Location: PIN_29
\uni_sec[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_seg|segmentos~43_dataout\,
	oe => VCC,
	padio => ww_uni_sec(3));

-- Location: PIN_31
\uni_sec[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_seg|segmentos[0]~49_dataout\,
	oe => VCC,
	padio => ww_uni_sec(0));

-- Location: PIN_11
\dez_sec[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_seg|segmentos~19_dataout\,
	oe => VCC,
	padio => ww_dez_sec(6));

-- Location: PIN_9
\dez_sec[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_seg|segmentos[3]~25_dataout\,
	oe => VCC,
	padio => ww_dez_sec(3));

-- Location: PIN_12
\dez_sec[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_seg|Equal9~3_dataout\,
	oe => VCC,
	padio => ww_dez_sec(4));

-- Location: PIN_8
\dez_sec[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_seg|segmentos~28_dataout\,
	oe => VCC,
	padio => ww_dez_sec(5));

-- Location: PIN_6
\dez_sec[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_seg|segmentos[0]~33_dataout\,
	oe => VCC,
	padio => ww_dez_sec(0));

-- Location: PIN_4
\dez_sec[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_seg|segmentos[1]~41_dataout\,
	oe => VCC,
	padio => ww_dez_sec(1));

-- Location: PIN_5
\dez_sec[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_seg|segmentos[2]~35_dataout\,
	oe => VCC,
	padio => ww_dez_sec(2));

-- Location: PIN_37
\uni_min[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_min|segmentos[5]~21_dataout\,
	oe => VCC,
	padio => ww_uni_min(5));

-- Location: PIN_40
\uni_min[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_min|segmentos~27_dataout\,
	oe => VCC,
	padio => ww_uni_min(1));

-- Location: PIN_41
\uni_min[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_min|segmentos[2]~32_dataout\,
	oe => VCC,
	padio => ww_uni_min(2));

-- Location: PIN_39
\uni_min[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_min|Equal9~10_dataout\,
	oe => VCC,
	padio => ww_uni_min(4));

-- Location: PIN_33
\uni_min[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_min|segmentos~36_dataout\,
	oe => VCC,
	padio => ww_uni_min(6));

-- Location: PIN_34
\uni_min[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_min|segmentos~43_dataout\,
	oe => VCC,
	padio => ww_uni_min(3));

-- Location: PIN_36
\uni_min[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_uni_min|segmentos[0]~49_dataout\,
	oe => VCC,
	padio => ww_uni_min(0));

-- Location: PIN_21
\dez_min[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_min|segmentos~19_dataout\,
	oe => VCC,
	padio => ww_dez_min(5));

-- Location: PIN_20
\dez_min[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_min|segmentos~23_dataout\,
	oe => VCC,
	padio => ww_dez_min(6));

-- Location: PIN_18
\dez_min[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_min|segmentos[2]~26_dataout\,
	oe => VCC,
	padio => ww_dez_min(2));

-- Location: PIN_17
\dez_min[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_min|segmentos[3]~33_dataout\,
	oe => VCC,
	padio => ww_dez_min(3));

-- Location: PIN_19
\dez_min[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_min|Equal9~3_dataout\,
	oe => VCC,
	padio => ww_dez_min(4));

-- Location: PIN_16
\dez_min[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_min|segmentos[0]~37_dataout\,
	oe => VCC,
	padio => ww_dez_min(0));

-- Location: PIN_14
\dez_min[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \bcd_dez_min|segmentos[1]~41_dataout\,
	oe => VCC,
	padio => ww_dez_min(1));
END structure;


