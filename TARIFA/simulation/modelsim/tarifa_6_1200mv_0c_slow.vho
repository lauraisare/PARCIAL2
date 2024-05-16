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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/05/2024 17:03:32"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tarifa IS
    PORT (
	Categoria : IN std_logic_vector(1 DOWNTO 0);
	Tarifa : OUT std_logic_vector(6 DOWNTO 0)
	);
END tarifa;

-- Design Ports Information
-- Tarifa[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tarifa[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tarifa[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tarifa[3]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tarifa[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tarifa[5]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tarifa[6]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Categoria[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Categoria[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tarifa IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Categoria : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Tarifa : std_logic_vector(6 DOWNTO 0);
SIGNAL \Tarifa[0]~output_o\ : std_logic;
SIGNAL \Tarifa[1]~output_o\ : std_logic;
SIGNAL \Tarifa[2]~output_o\ : std_logic;
SIGNAL \Tarifa[3]~output_o\ : std_logic;
SIGNAL \Tarifa[4]~output_o\ : std_logic;
SIGNAL \Tarifa[5]~output_o\ : std_logic;
SIGNAL \Tarifa[6]~output_o\ : std_logic;
SIGNAL \Categoria[0]~input_o\ : std_logic;
SIGNAL \Categoria[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Categoria[1]~input_o\ : std_logic;

BEGIN

ww_Categoria <= Categoria;
Tarifa <= ww_Tarifa;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Categoria[1]~input_o\ <= NOT \Categoria[1]~input_o\;

-- Location: IOOBUF_X0_Y26_N23
\Tarifa[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Categoria[0]~input_o\,
	devoe => ww_devoe,
	o => \Tarifa[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\Tarifa[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Tarifa[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\Tarifa[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Tarifa[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\Tarifa[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Categoria[0]~input_o\,
	devoe => ww_devoe,
	o => \Tarifa[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\Tarifa[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Categoria[0]~input_o\,
	devoe => ww_devoe,
	o => \Tarifa[4]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\Tarifa[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Tarifa[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\Tarifa[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Categoria[1]~input_o\,
	devoe => ww_devoe,
	o => \Tarifa[6]~output_o\);

-- Location: IOIBUF_X0_Y21_N1
\Categoria[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Categoria(0),
	o => \Categoria[0]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\Categoria[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Categoria(1),
	o => \Categoria[1]~input_o\);

-- Location: LCCOMB_X1_Y12_N0
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Categoria[1]~input_o\ & !\Categoria[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Categoria[1]~input_o\,
	datac => \Categoria[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y12_N2
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = \Categoria[1]~input_o\ $ (\Categoria[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Categoria[1]~input_o\,
	datac => \Categoria[0]~input_o\,
	combout => \Mux0~1_combout\);

ww_Tarifa(0) <= \Tarifa[0]~output_o\;

ww_Tarifa(1) <= \Tarifa[1]~output_o\;

ww_Tarifa(2) <= \Tarifa[2]~output_o\;

ww_Tarifa(3) <= \Tarifa[3]~output_o\;

ww_Tarifa(4) <= \Tarifa[4]~output_o\;

ww_Tarifa(5) <= \Tarifa[5]~output_o\;

ww_Tarifa(6) <= \Tarifa[6]~output_o\;
END structure;


