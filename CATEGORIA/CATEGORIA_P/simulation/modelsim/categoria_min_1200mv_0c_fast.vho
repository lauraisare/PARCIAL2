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

-- DATE "05/05/2024 00:38:28"

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

ENTITY 	categoria IS
    PORT (
	front_sensor : IN std_logic;
	identificacion : IN std_logic_vector(4 DOWNTO 0);
	categoria : OUT std_logic_vector(1 DOWNTO 0)
	);
END categoria;

-- Design Ports Information
-- identificacion[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[2]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[4]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF categoria IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_front_sensor : std_logic;
SIGNAL ww_identificacion : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_categoria : std_logic_vector(1 DOWNTO 0);
SIGNAL \identificacion[0]~input_o\ : std_logic;
SIGNAL \identificacion[1]~input_o\ : std_logic;
SIGNAL \identificacion[2]~input_o\ : std_logic;
SIGNAL \categoria[0]~output_o\ : std_logic;
SIGNAL \categoria[1]~output_o\ : std_logic;
SIGNAL \identificacion[3]~input_o\ : std_logic;
SIGNAL \front_sensor~input_o\ : std_logic;
SIGNAL \categoria~0_combout\ : std_logic;
SIGNAL \identificacion[4]~input_o\ : std_logic;
SIGNAL \categoria~1_combout\ : std_logic;

BEGIN

ww_front_sensor <= front_sensor;
ww_identificacion <= identificacion;
categoria <= ww_categoria;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y11_N9
\categoria[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \categoria~0_combout\,
	devoe => ww_devoe,
	o => \categoria[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\categoria[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \categoria~1_combout\,
	devoe => ww_devoe,
	o => \categoria[1]~output_o\);

-- Location: IOIBUF_X0_Y5_N1
\identificacion[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(3),
	o => \identificacion[3]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\front_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor,
	o => \front_sensor~input_o\);

-- Location: LCCOMB_X1_Y14_N16
\categoria~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \categoria~0_combout\ = (\identificacion[3]~input_o\ & \front_sensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \identificacion[3]~input_o\,
	datad => \front_sensor~input_o\,
	combout => \categoria~0_combout\);

-- Location: IOIBUF_X0_Y13_N1
\identificacion[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(4),
	o => \identificacion[4]~input_o\);

-- Location: LCCOMB_X1_Y14_N2
\categoria~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \categoria~1_combout\ = (\front_sensor~input_o\ & \identificacion[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \front_sensor~input_o\,
	datac => \identificacion[4]~input_o\,
	combout => \categoria~1_combout\);

-- Location: IOIBUF_X30_Y29_N29
\identificacion[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(0),
	o => \identificacion[0]~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\identificacion[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(1),
	o => \identificacion[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\identificacion[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(2),
	o => \identificacion[2]~input_o\);

ww_categoria(0) <= \categoria[0]~output_o\;

ww_categoria(1) <= \categoria[1]~output_o\;
END structure;


