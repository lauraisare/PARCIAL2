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

-- DATE "05/05/2024 22:27:17"

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

ENTITY 	control_semaforo IS
    PORT (
	Sensor1 : IN std_logic;
	RGB : OUT std_logic_vector(2 DOWNTO 0)
	);
END control_semaforo;

-- Design Ports Information
-- RGB[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RGB[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor1	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_semaforo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sensor1 : std_logic;
SIGNAL ww_RGB : std_logic_vector(2 DOWNTO 0);
SIGNAL \RGB[0]~output_o\ : std_logic;
SIGNAL \RGB[1]~output_o\ : std_logic;
SIGNAL \RGB[2]~output_o\ : std_logic;
SIGNAL \Sensor1~input_o\ : std_logic;
SIGNAL \ALT_INV_Sensor1~input_o\ : std_logic;

BEGIN

ww_Sensor1 <= Sensor1;
RGB <= ww_RGB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Sensor1~input_o\ <= NOT \Sensor1~input_o\;

-- Location: IOOBUF_X9_Y0_N23
\RGB[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RGB[0]~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\RGB[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Sensor1~input_o\,
	devoe => ww_devoe,
	o => \RGB[1]~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\RGB[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor1~input_o\,
	devoe => ww_devoe,
	o => \RGB[2]~output_o\);

-- Location: IOIBUF_X3_Y29_N22
\Sensor1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor1,
	o => \Sensor1~input_o\);

ww_RGB(0) <= \RGB[0]~output_o\;

ww_RGB(1) <= \RGB[1]~output_o\;

ww_RGB(2) <= \RGB[2]~output_o\;
END structure;


