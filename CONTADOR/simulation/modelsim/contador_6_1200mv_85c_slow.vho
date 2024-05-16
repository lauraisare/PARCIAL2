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

-- DATE "05/05/2024 21:09:44"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	contador IS
    PORT (
	clock : IN std_logic;
	address : IN std_logic_vector(3 DOWNTO 0);
	back_sensor : IN std_logic;
	display : OUT std_logic_vector(6 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- address[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_back_sensor : std_logic;
SIGNAL ww_display : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \display[0]~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \display[4]~output_o\ : std_logic;
SIGNAL \display[5]~output_o\ : std_logic;
SIGNAL \display[6]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \vehiculo_count[0]~7_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \tiempo~4_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \tiempo~5_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \tiempo~6_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \tiempo~0_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \tiempo~1_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \tiempo~2_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \tiempo~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \back_sensor~input_o\ : std_logic;
SIGNAL \vehiculo_count[0]~9_combout\ : std_logic;
SIGNAL \RW~60feeder_combout\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \RW~105_combout\ : std_logic;
SIGNAL \RW~60_q\ : std_logic;
SIGNAL \RW~102_combout\ : std_logic;
SIGNAL \RW~46_q\ : std_logic;
SIGNAL \RW~104_combout\ : std_logic;
SIGNAL \RW~39_q\ : std_logic;
SIGNAL \RW~53feeder_combout\ : std_logic;
SIGNAL \RW~103_combout\ : std_logic;
SIGNAL \RW~53_q\ : std_logic;
SIGNAL \RW~67_combout\ : std_logic;
SIGNAL \RW~68_combout\ : std_logic;
SIGNAL \RW~32feeder_combout\ : std_logic;
SIGNAL \RW~109_combout\ : std_logic;
SIGNAL \RW~32_q\ : std_logic;
SIGNAL \RW~25feeder_combout\ : std_logic;
SIGNAL \RW~106_combout\ : std_logic;
SIGNAL \RW~25_q\ : std_logic;
SIGNAL \RW~108_combout\ : std_logic;
SIGNAL \RW~11_q\ : std_logic;
SIGNAL \RW~18feeder_combout\ : std_logic;
SIGNAL \RW~107_combout\ : std_logic;
SIGNAL \RW~18_q\ : std_logic;
SIGNAL \RW~69_combout\ : std_logic;
SIGNAL \RW~70_combout\ : std_logic;
SIGNAL \RW~71_combout\ : std_logic;
SIGNAL \display[0]~reg0_q\ : std_logic;
SIGNAL \vehiculo_count[0]~8\ : std_logic;
SIGNAL \vehiculo_count[1]~10_combout\ : std_logic;
SIGNAL \RW~33feeder_combout\ : std_logic;
SIGNAL \RW~33_q\ : std_logic;
SIGNAL \RW~26_q\ : std_logic;
SIGNAL \RW~12_q\ : std_logic;
SIGNAL \RW~19feeder_combout\ : std_logic;
SIGNAL \RW~19_q\ : std_logic;
SIGNAL \RW~74_combout\ : std_logic;
SIGNAL \RW~75_combout\ : std_logic;
SIGNAL \RW~61feeder_combout\ : std_logic;
SIGNAL \RW~61_q\ : std_logic;
SIGNAL \RW~47_q\ : std_logic;
SIGNAL \RW~54feeder_combout\ : std_logic;
SIGNAL \RW~54_q\ : std_logic;
SIGNAL \RW~40_q\ : std_logic;
SIGNAL \RW~72_combout\ : std_logic;
SIGNAL \RW~73_combout\ : std_logic;
SIGNAL \RW~76_combout\ : std_logic;
SIGNAL \display[1]~reg0_q\ : std_logic;
SIGNAL \vehiculo_count[1]~11\ : std_logic;
SIGNAL \vehiculo_count[2]~12_combout\ : std_logic;
SIGNAL \RW~62feeder_combout\ : std_logic;
SIGNAL \RW~62_q\ : std_logic;
SIGNAL \RW~48_q\ : std_logic;
SIGNAL \RW~55feeder_combout\ : std_logic;
SIGNAL \RW~55_q\ : std_logic;
SIGNAL \RW~41_q\ : std_logic;
SIGNAL \RW~77_combout\ : std_logic;
SIGNAL \RW~78_combout\ : std_logic;
SIGNAL \RW~34feeder_combout\ : std_logic;
SIGNAL \RW~34_q\ : std_logic;
SIGNAL \RW~27_q\ : std_logic;
SIGNAL \RW~13_q\ : std_logic;
SIGNAL \RW~20feeder_combout\ : std_logic;
SIGNAL \RW~20_q\ : std_logic;
SIGNAL \RW~79_combout\ : std_logic;
SIGNAL \RW~80_combout\ : std_logic;
SIGNAL \RW~81_combout\ : std_logic;
SIGNAL \display[2]~reg0_q\ : std_logic;
SIGNAL \vehiculo_count[2]~13\ : std_logic;
SIGNAL \vehiculo_count[3]~14_combout\ : std_logic;
SIGNAL \RW~35feeder_combout\ : std_logic;
SIGNAL \RW~35_q\ : std_logic;
SIGNAL \RW~14_q\ : std_logic;
SIGNAL \RW~21feeder_combout\ : std_logic;
SIGNAL \RW~21_q\ : std_logic;
SIGNAL \RW~84_combout\ : std_logic;
SIGNAL \RW~28feeder_combout\ : std_logic;
SIGNAL \RW~28_q\ : std_logic;
SIGNAL \RW~85_combout\ : std_logic;
SIGNAL \RW~42_q\ : std_logic;
SIGNAL \RW~56feeder_combout\ : std_logic;
SIGNAL \RW~56_q\ : std_logic;
SIGNAL \RW~82_combout\ : std_logic;
SIGNAL \RW~49_q\ : std_logic;
SIGNAL \RW~63feeder_combout\ : std_logic;
SIGNAL \RW~63_q\ : std_logic;
SIGNAL \RW~83_combout\ : std_logic;
SIGNAL \RW~86_combout\ : std_logic;
SIGNAL \display[3]~reg0_q\ : std_logic;
SIGNAL \vehiculo_count[3]~15\ : std_logic;
SIGNAL \vehiculo_count[4]~16_combout\ : std_logic;
SIGNAL \RW~57feeder_combout\ : std_logic;
SIGNAL \RW~57_q\ : std_logic;
SIGNAL \RW~43_q\ : std_logic;
SIGNAL \RW~87_combout\ : std_logic;
SIGNAL \RW~50_q\ : std_logic;
SIGNAL \RW~64feeder_combout\ : std_logic;
SIGNAL \RW~64_q\ : std_logic;
SIGNAL \RW~88_combout\ : std_logic;
SIGNAL \RW~29feeder_combout\ : std_logic;
SIGNAL \RW~29_q\ : std_logic;
SIGNAL \RW~15_q\ : std_logic;
SIGNAL \RW~22feeder_combout\ : std_logic;
SIGNAL \RW~22_q\ : std_logic;
SIGNAL \RW~89_combout\ : std_logic;
SIGNAL \RW~36feeder_combout\ : std_logic;
SIGNAL \RW~36_q\ : std_logic;
SIGNAL \RW~90_combout\ : std_logic;
SIGNAL \RW~91_combout\ : std_logic;
SIGNAL \display[4]~reg0_q\ : std_logic;
SIGNAL \vehiculo_count[4]~17\ : std_logic;
SIGNAL \vehiculo_count[5]~18_combout\ : std_logic;
SIGNAL \RW~30feeder_combout\ : std_logic;
SIGNAL \RW~30_q\ : std_logic;
SIGNAL \RW~37feeder_combout\ : std_logic;
SIGNAL \RW~37_q\ : std_logic;
SIGNAL \RW~16_q\ : std_logic;
SIGNAL \RW~23feeder_combout\ : std_logic;
SIGNAL \RW~23_q\ : std_logic;
SIGNAL \RW~94_combout\ : std_logic;
SIGNAL \RW~95_combout\ : std_logic;
SIGNAL \RW~65feeder_combout\ : std_logic;
SIGNAL \RW~65_q\ : std_logic;
SIGNAL \RW~51_q\ : std_logic;
SIGNAL \RW~58feeder_combout\ : std_logic;
SIGNAL \RW~58_q\ : std_logic;
SIGNAL \RW~44_q\ : std_logic;
SIGNAL \RW~92_combout\ : std_logic;
SIGNAL \RW~93_combout\ : std_logic;
SIGNAL \RW~96_combout\ : std_logic;
SIGNAL \display[5]~reg0_q\ : std_logic;
SIGNAL \vehiculo_count[5]~19\ : std_logic;
SIGNAL \vehiculo_count[6]~20_combout\ : std_logic;
SIGNAL \RW~59feeder_combout\ : std_logic;
SIGNAL \RW~59_q\ : std_logic;
SIGNAL \RW~45_q\ : std_logic;
SIGNAL \RW~97_combout\ : std_logic;
SIGNAL \RW~52_q\ : std_logic;
SIGNAL \RW~66feeder_combout\ : std_logic;
SIGNAL \RW~66_q\ : std_logic;
SIGNAL \RW~98_combout\ : std_logic;
SIGNAL \RW~38feeder_combout\ : std_logic;
SIGNAL \RW~38_q\ : std_logic;
SIGNAL \RW~31feeder_combout\ : std_logic;
SIGNAL \RW~31_q\ : std_logic;
SIGNAL \RW~24feeder_combout\ : std_logic;
SIGNAL \RW~24_q\ : std_logic;
SIGNAL \RW~17_q\ : std_logic;
SIGNAL \RW~99_combout\ : std_logic;
SIGNAL \RW~100_combout\ : std_logic;
SIGNAL \RW~101_combout\ : std_logic;
SIGNAL \display[6]~reg0_q\ : std_logic;
SIGNAL vehiculo_count : std_logic_vector(6 DOWNTO 0);
SIGNAL tiempo : std_logic_vector(19 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_address <= address;
ww_back_sensor <= back_sensor;
display <= ww_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X26_Y29_N9
\display[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display[0]~reg0_q\,
	devoe => ww_devoe,
	o => \display[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\display[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display[1]~reg0_q\,
	devoe => ww_devoe,
	o => \display[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\display[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display[2]~reg0_q\,
	devoe => ww_devoe,
	o => \display[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\display[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display[3]~reg0_q\,
	devoe => ww_devoe,
	o => \display[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\display[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display[4]~reg0_q\,
	devoe => ww_devoe,
	o => \display[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\display[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display[5]~reg0_q\,
	devoe => ww_devoe,
	o => \display[5]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\display[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display[6]~reg0_q\,
	devoe => ww_devoe,
	o => \display[6]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X28_Y29_N1
\address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: LCCOMB_X29_Y23_N4
\vehiculo_count[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehiculo_count[0]~7_combout\ = vehiculo_count(0) $ (VCC)
-- \vehiculo_count[0]~8\ = CARRY(vehiculo_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vehiculo_count(0),
	datad => VCC,
	combout => \vehiculo_count[0]~7_combout\,
	cout => \vehiculo_count[0]~8\);

-- Location: LCCOMB_X28_Y24_N12
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = tiempo(0) $ (VCC)
-- \Add1~1\ = CARRY(tiempo(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X28_Y24_N13
\tiempo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(0));

-- Location: LCCOMB_X28_Y24_N14
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (tiempo(1) & (!\Add1~1\)) # (!tiempo(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!tiempo(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X28_Y24_N15
\tiempo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(1));

-- Location: LCCOMB_X28_Y24_N16
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (tiempo(2) & (\Add1~3\ $ (GND))) # (!tiempo(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((tiempo(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X28_Y24_N17
\tiempo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(2));

-- Location: LCCOMB_X28_Y24_N18
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (tiempo(3) & (!\Add1~5\)) # (!tiempo(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!tiempo(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X28_Y24_N19
\tiempo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(3));

-- Location: LCCOMB_X28_Y24_N20
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (tiempo(4) & (\Add1~7\ $ (GND))) # (!tiempo(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((tiempo(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X28_Y24_N21
\tiempo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(4));

-- Location: LCCOMB_X28_Y24_N22
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (tiempo(5) & (!\Add1~9\)) # (!tiempo(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!tiempo(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X28_Y24_N23
\tiempo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(5));

-- Location: LCCOMB_X28_Y24_N24
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (tiempo(6) & (\Add1~11\ $ (GND))) # (!tiempo(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((tiempo(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X27_Y24_N20
\tiempo~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tiempo~4_combout\ = (\Add1~12_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add1~12_combout\,
	combout => \tiempo~4_combout\);

-- Location: FF_X27_Y24_N21
\tiempo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tiempo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(6));

-- Location: LCCOMB_X28_Y24_N26
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (tiempo(7) & (!\Add1~13\)) # (!tiempo(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!tiempo(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X28_Y24_N27
\tiempo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(7));

-- Location: LCCOMB_X28_Y24_N28
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (tiempo(8) & (\Add1~15\ $ (GND))) # (!tiempo(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((tiempo(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X28_Y24_N29
\tiempo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(8));

-- Location: LCCOMB_X28_Y24_N30
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (tiempo(9) & (!\Add1~17\)) # (!tiempo(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!tiempo(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X27_Y24_N30
\tiempo~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tiempo~5_combout\ = (\Add1~18_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add1~18_combout\,
	combout => \tiempo~5_combout\);

-- Location: FF_X27_Y24_N31
\tiempo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tiempo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(9));

-- Location: LCCOMB_X28_Y23_N0
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (tiempo(10) & (\Add1~19\ $ (GND))) # (!tiempo(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((tiempo(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X28_Y23_N1
\tiempo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(10));

-- Location: LCCOMB_X28_Y23_N2
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (tiempo(11) & (!\Add1~21\)) # (!tiempo(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!tiempo(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X28_Y23_N3
\tiempo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(11));

-- Location: LCCOMB_X28_Y23_N22
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!tiempo(10) & (!tiempo(11) & (tiempo(9) & !tiempo(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(10),
	datab => tiempo(11),
	datac => tiempo(9),
	datad => tiempo(8),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X28_Y23_N20
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (tiempo(0) & (!tiempo(7) & (tiempo(1) & !tiempo(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(0),
	datab => tiempo(7),
	datac => tiempo(1),
	datad => tiempo(6),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X28_Y23_N4
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (tiempo(12) & (\Add1~23\ $ (GND))) # (!tiempo(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((tiempo(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X28_Y23_N5
\tiempo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(12));

-- Location: LCCOMB_X28_Y23_N6
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (tiempo(13) & (!\Add1~25\)) # (!tiempo(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!tiempo(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X28_Y23_N7
\tiempo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(13));

-- Location: LCCOMB_X28_Y23_N8
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (tiempo(14) & (\Add1~27\ $ (GND))) # (!tiempo(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((tiempo(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X28_Y23_N24
\tiempo~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tiempo~6_combout\ = (\Add1~28_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Add1~28_combout\,
	datad => \Equal0~5_combout\,
	combout => \tiempo~6_combout\);

-- Location: FF_X28_Y23_N25
\tiempo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tiempo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(14));

-- Location: LCCOMB_X28_Y23_N10
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (tiempo(15) & (!\Add1~29\)) # (!tiempo(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!tiempo(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X28_Y23_N11
\tiempo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(15));

-- Location: LCCOMB_X28_Y23_N26
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!tiempo(15) & (!tiempo(12) & (!tiempo(13) & tiempo(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(15),
	datab => tiempo(12),
	datac => tiempo(13),
	datad => tiempo(14),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X28_Y24_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (tiempo(5) & (tiempo(3) & (tiempo(4) & tiempo(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(5),
	datab => tiempo(3),
	datac => tiempo(4),
	datad => tiempo(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X28_Y23_N28
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~4_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X28_Y23_N12
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (tiempo(16) & (\Add1~31\ $ (GND))) # (!tiempo(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((tiempo(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X28_Y24_N0
\tiempo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tiempo~0_combout\ = (\Add1~32_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add1~32_combout\,
	combout => \tiempo~0_combout\);

-- Location: FF_X28_Y24_N1
\tiempo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tiempo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(16));

-- Location: LCCOMB_X28_Y23_N14
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (tiempo(17) & (!\Add1~33\)) # (!tiempo(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!tiempo(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X28_Y24_N6
\tiempo~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tiempo~1_combout\ = (\Add1~34_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add1~34_combout\,
	combout => \tiempo~1_combout\);

-- Location: FF_X28_Y24_N7
\tiempo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tiempo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(17));

-- Location: LCCOMB_X28_Y23_N16
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (tiempo(18) & (\Add1~35\ $ (GND))) # (!tiempo(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((tiempo(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tiempo(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X28_Y24_N4
\tiempo~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tiempo~2_combout\ = (\Add1~36_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add1~36_combout\,
	combout => \tiempo~2_combout\);

-- Location: FF_X28_Y24_N5
\tiempo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tiempo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(18));

-- Location: LCCOMB_X28_Y23_N18
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = \Add1~37\ $ (tiempo(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tiempo(19),
	cin => \Add1~37\,
	combout => \Add1~38_combout\);

-- Location: LCCOMB_X28_Y24_N10
\tiempo~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tiempo~3_combout\ = (\Add1~38_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add1~38_combout\,
	combout => \tiempo~3_combout\);

-- Location: FF_X28_Y24_N11
\tiempo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tiempo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tiempo(19));

-- Location: LCCOMB_X28_Y24_N8
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (tiempo(17) & (tiempo(16) & (tiempo(18) & tiempo(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tiempo(17),
	datab => tiempo(16),
	datac => tiempo(18),
	datad => tiempo(19),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y23_N30
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~0_combout\ & \Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: IOIBUF_X30_Y29_N8
\back_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_back_sensor,
	o => \back_sensor~input_o\);

-- Location: LCCOMB_X29_Y23_N30
\vehiculo_count[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehiculo_count[0]~9_combout\ = (\back_sensor~input_o\) # ((\Equal0~0_combout\ & \Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \back_sensor~input_o\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \vehiculo_count[0]~9_combout\);

-- Location: FF_X29_Y23_N5
\vehiculo_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \vehiculo_count[0]~7_combout\,
	sclr => \Equal0~6_combout\,
	ena => \vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vehiculo_count(0));

-- Location: LCCOMB_X26_Y23_N8
\RW~60feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~60feeder_combout\ = vehiculo_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(0),
	combout => \RW~60feeder_combout\);

-- Location: IOIBUF_X28_Y29_N15
\address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X26_Y23_N10
\RW~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~105_combout\ = (\address[2]~input_o\ & (\address[1]~input_o\ & (\address[0]~input_o\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \Equal0~6_combout\,
	combout => \RW~105_combout\);

-- Location: FF_X26_Y23_N9
\RW~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~60feeder_combout\,
	ena => \RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~60_q\);

-- Location: LCCOMB_X27_Y23_N20
\RW~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~102_combout\ = (!\address[1]~input_o\ & (\address[0]~input_o\ & (\Equal0~6_combout\ & \address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \Equal0~6_combout\,
	datad => \address[2]~input_o\,
	combout => \RW~102_combout\);

-- Location: FF_X27_Y23_N1
\RW~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(0),
	sload => VCC,
	ena => \RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~46_q\);

-- Location: LCCOMB_X27_Y23_N14
\RW~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~104_combout\ = (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\Equal0~6_combout\ & \address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \Equal0~6_combout\,
	datad => \address[2]~input_o\,
	combout => \RW~104_combout\);

-- Location: FF_X27_Y23_N11
\RW~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(0),
	sload => VCC,
	ena => \RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~39_q\);

-- Location: LCCOMB_X29_Y23_N28
\RW~53feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~53feeder_combout\ = vehiculo_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(0),
	combout => \RW~53feeder_combout\);

-- Location: LCCOMB_X29_Y23_N0
\RW~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~103_combout\ = (!\address[0]~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \Equal0~6_combout\,
	combout => \RW~103_combout\);

-- Location: FF_X29_Y23_N29
\RW~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~53feeder_combout\,
	ena => \RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~53_q\);

-- Location: LCCOMB_X27_Y23_N10
\RW~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~67_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\RW~53_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\RW~39_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \RW~39_q\,
	datad => \RW~53_q\,
	combout => \RW~67_combout\);

-- Location: LCCOMB_X27_Y23_N0
\RW~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~68_combout\ = (\address[0]~input_o\ & ((\RW~67_combout\ & (\RW~60_q\)) # (!\RW~67_combout\ & ((\RW~46_q\))))) # (!\address[0]~input_o\ & (((\RW~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~60_q\,
	datab => \address[0]~input_o\,
	datac => \RW~46_q\,
	datad => \RW~67_combout\,
	combout => \RW~68_combout\);

-- Location: LCCOMB_X28_Y22_N26
\RW~32feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~32feeder_combout\ = vehiculo_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(0),
	combout => \RW~32feeder_combout\);

-- Location: LCCOMB_X28_Y22_N2
\RW~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~109_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\ & (\Equal0~6_combout\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \Equal0~6_combout\,
	datad => \address[2]~input_o\,
	combout => \RW~109_combout\);

-- Location: FF_X28_Y22_N27
\RW~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~32feeder_combout\,
	ena => \RW~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~32_q\);

-- Location: LCCOMB_X27_Y22_N28
\RW~25feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~25feeder_combout\ = vehiculo_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(0),
	combout => \RW~25feeder_combout\);

-- Location: LCCOMB_X27_Y22_N6
\RW~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~106_combout\ = (!\address[0]~input_o\ & (!\address[2]~input_o\ & (\Equal0~6_combout\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \Equal0~6_combout\,
	datad => \address[1]~input_o\,
	combout => \RW~106_combout\);

-- Location: FF_X27_Y22_N29
\RW~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~25feeder_combout\,
	ena => \RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~25_q\);

-- Location: LCCOMB_X29_Y22_N22
\RW~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~108_combout\ = (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\Equal0~6_combout\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \Equal0~6_combout\,
	datad => \address[2]~input_o\,
	combout => \RW~108_combout\);

-- Location: FF_X29_Y22_N7
\RW~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(0),
	sload => VCC,
	ena => \RW~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~11_q\);

-- Location: LCCOMB_X29_Y22_N20
\RW~18feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~18feeder_combout\ = vehiculo_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(0),
	combout => \RW~18feeder_combout\);

-- Location: LCCOMB_X29_Y22_N4
\RW~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~107_combout\ = (!\address[1]~input_o\ & (\address[0]~input_o\ & (\Equal0~6_combout\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \Equal0~6_combout\,
	datad => \address[2]~input_o\,
	combout => \RW~107_combout\);

-- Location: FF_X29_Y22_N21
\RW~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~18feeder_combout\,
	ena => \RW~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~18_q\);

-- Location: LCCOMB_X29_Y22_N6
\RW~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~69_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\RW~18_q\))) # (!\address[0]~input_o\ & (\RW~11_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \RW~11_q\,
	datad => \RW~18_q\,
	combout => \RW~69_combout\);

-- Location: LCCOMB_X28_Y22_N4
\RW~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~70_combout\ = (\address[1]~input_o\ & ((\RW~69_combout\ & (\RW~32_q\)) # (!\RW~69_combout\ & ((\RW~25_q\))))) # (!\address[1]~input_o\ & (((\RW~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~32_q\,
	datab => \RW~25_q\,
	datac => \address[1]~input_o\,
	datad => \RW~69_combout\,
	combout => \RW~70_combout\);

-- Location: LCCOMB_X27_Y22_N0
\RW~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~71_combout\ = (\address[2]~input_o\ & (\RW~68_combout\)) # (!\address[2]~input_o\ & ((\RW~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \RW~68_combout\,
	datad => \RW~70_combout\,
	combout => \RW~71_combout\);

-- Location: FF_X27_Y22_N1
\display[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[0]~reg0_q\);

-- Location: LCCOMB_X29_Y23_N6
\vehiculo_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehiculo_count[1]~10_combout\ = (vehiculo_count(1) & (!\vehiculo_count[0]~8\)) # (!vehiculo_count(1) & ((\vehiculo_count[0]~8\) # (GND)))
-- \vehiculo_count[1]~11\ = CARRY((!\vehiculo_count[0]~8\) # (!vehiculo_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vehiculo_count(1),
	datad => VCC,
	cin => \vehiculo_count[0]~8\,
	combout => \vehiculo_count[1]~10_combout\,
	cout => \vehiculo_count[1]~11\);

-- Location: FF_X29_Y23_N7
\vehiculo_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \vehiculo_count[1]~10_combout\,
	sclr => \Equal0~6_combout\,
	ena => \vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vehiculo_count(1));

-- Location: LCCOMB_X28_Y22_N6
\RW~33feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~33feeder_combout\ = vehiculo_count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(1),
	combout => \RW~33feeder_combout\);

-- Location: FF_X28_Y22_N7
\RW~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~33feeder_combout\,
	ena => \RW~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~33_q\);

-- Location: FF_X27_Y22_N27
\RW~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(1),
	sload => VCC,
	ena => \RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~26_q\);

-- Location: FF_X29_Y22_N19
\RW~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(1),
	sload => VCC,
	ena => \RW~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~12_q\);

-- Location: LCCOMB_X29_Y22_N0
\RW~19feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~19feeder_combout\ = vehiculo_count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(1),
	combout => \RW~19feeder_combout\);

-- Location: FF_X29_Y22_N1
\RW~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~19feeder_combout\,
	ena => \RW~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~19_q\);

-- Location: LCCOMB_X29_Y22_N18
\RW~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~74_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\RW~19_q\))) # (!\address[0]~input_o\ & (\RW~12_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \RW~12_q\,
	datad => \RW~19_q\,
	combout => \RW~74_combout\);

-- Location: LCCOMB_X27_Y22_N26
\RW~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~75_combout\ = (\address[1]~input_o\ & ((\RW~74_combout\ & (\RW~33_q\)) # (!\RW~74_combout\ & ((\RW~26_q\))))) # (!\address[1]~input_o\ & (((\RW~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~33_q\,
	datab => \address[1]~input_o\,
	datac => \RW~26_q\,
	datad => \RW~74_combout\,
	combout => \RW~75_combout\);

-- Location: LCCOMB_X26_Y23_N14
\RW~61feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~61feeder_combout\ = vehiculo_count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(1),
	combout => \RW~61feeder_combout\);

-- Location: FF_X26_Y23_N15
\RW~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~61feeder_combout\,
	ena => \RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~61_q\);

-- Location: FF_X27_Y23_N5
\RW~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(1),
	sload => VCC,
	ena => \RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~47_q\);

-- Location: LCCOMB_X29_Y23_N22
\RW~54feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~54feeder_combout\ = vehiculo_count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(1),
	combout => \RW~54feeder_combout\);

-- Location: FF_X29_Y23_N23
\RW~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~54feeder_combout\,
	ena => \RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~54_q\);

-- Location: FF_X27_Y23_N7
\RW~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(1),
	sload => VCC,
	ena => \RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~40_q\);

-- Location: LCCOMB_X27_Y23_N6
\RW~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~72_combout\ = (\address[1]~input_o\ & ((\RW~54_q\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\RW~40_q\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~54_q\,
	datab => \address[1]~input_o\,
	datac => \RW~40_q\,
	datad => \address[0]~input_o\,
	combout => \RW~72_combout\);

-- Location: LCCOMB_X27_Y23_N4
\RW~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~73_combout\ = (\address[0]~input_o\ & ((\RW~72_combout\ & (\RW~61_q\)) # (!\RW~72_combout\ & ((\RW~47_q\))))) # (!\address[0]~input_o\ & (((\RW~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~61_q\,
	datab => \address[0]~input_o\,
	datac => \RW~47_q\,
	datad => \RW~72_combout\,
	combout => \RW~73_combout\);

-- Location: LCCOMB_X27_Y22_N18
\RW~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~76_combout\ = (\address[2]~input_o\ & ((\RW~73_combout\))) # (!\address[2]~input_o\ & (\RW~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \RW~75_combout\,
	datad => \RW~73_combout\,
	combout => \RW~76_combout\);

-- Location: FF_X27_Y22_N19
\display[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[1]~reg0_q\);

-- Location: LCCOMB_X29_Y23_N8
\vehiculo_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehiculo_count[2]~12_combout\ = (vehiculo_count(2) & (\vehiculo_count[1]~11\ $ (GND))) # (!vehiculo_count(2) & (!\vehiculo_count[1]~11\ & VCC))
-- \vehiculo_count[2]~13\ = CARRY((vehiculo_count(2) & !\vehiculo_count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vehiculo_count(2),
	datad => VCC,
	cin => \vehiculo_count[1]~11\,
	combout => \vehiculo_count[2]~12_combout\,
	cout => \vehiculo_count[2]~13\);

-- Location: FF_X29_Y23_N9
\vehiculo_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \vehiculo_count[2]~12_combout\,
	sclr => \Equal0~6_combout\,
	ena => \vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vehiculo_count(2));

-- Location: LCCOMB_X26_Y23_N12
\RW~62feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~62feeder_combout\ = vehiculo_count(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(2),
	combout => \RW~62feeder_combout\);

-- Location: FF_X26_Y23_N13
\RW~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~62feeder_combout\,
	ena => \RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~62_q\);

-- Location: FF_X27_Y23_N17
\RW~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(2),
	sload => VCC,
	ena => \RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~48_q\);

-- Location: LCCOMB_X29_Y23_N2
\RW~55feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~55feeder_combout\ = vehiculo_count(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(2),
	combout => \RW~55feeder_combout\);

-- Location: FF_X29_Y23_N3
\RW~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~55feeder_combout\,
	ena => \RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~55_q\);

-- Location: FF_X27_Y23_N19
\RW~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(2),
	sload => VCC,
	ena => \RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~41_q\);

-- Location: LCCOMB_X27_Y23_N18
\RW~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~77_combout\ = (\address[1]~input_o\ & ((\RW~55_q\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\RW~41_q\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~55_q\,
	datab => \address[1]~input_o\,
	datac => \RW~41_q\,
	datad => \address[0]~input_o\,
	combout => \RW~77_combout\);

-- Location: LCCOMB_X27_Y23_N16
\RW~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~78_combout\ = (\address[0]~input_o\ & ((\RW~77_combout\ & (\RW~62_q\)) # (!\RW~77_combout\ & ((\RW~48_q\))))) # (!\address[0]~input_o\ & (((\RW~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~62_q\,
	datab => \address[0]~input_o\,
	datac => \RW~48_q\,
	datad => \RW~77_combout\,
	combout => \RW~78_combout\);

-- Location: LCCOMB_X28_Y22_N20
\RW~34feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~34feeder_combout\ = vehiculo_count(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(2),
	combout => \RW~34feeder_combout\);

-- Location: FF_X28_Y22_N21
\RW~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~34feeder_combout\,
	ena => \RW~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~34_q\);

-- Location: FF_X27_Y22_N25
\RW~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(2),
	sload => VCC,
	ena => \RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~27_q\);

-- Location: FF_X29_Y22_N11
\RW~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(2),
	sload => VCC,
	ena => \RW~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~13_q\);

-- Location: LCCOMB_X29_Y22_N24
\RW~20feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~20feeder_combout\ = vehiculo_count(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(2),
	combout => \RW~20feeder_combout\);

-- Location: FF_X29_Y22_N25
\RW~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~20feeder_combout\,
	ena => \RW~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~20_q\);

-- Location: LCCOMB_X29_Y22_N10
\RW~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~79_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\RW~20_q\))) # (!\address[0]~input_o\ & (\RW~13_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \RW~13_q\,
	datad => \RW~20_q\,
	combout => \RW~79_combout\);

-- Location: LCCOMB_X27_Y22_N24
\RW~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~80_combout\ = (\address[1]~input_o\ & ((\RW~79_combout\ & (\RW~34_q\)) # (!\RW~79_combout\ & ((\RW~27_q\))))) # (!\address[1]~input_o\ & (((\RW~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~34_q\,
	datab => \address[1]~input_o\,
	datac => \RW~27_q\,
	datad => \RW~79_combout\,
	combout => \RW~80_combout\);

-- Location: LCCOMB_X27_Y22_N12
\RW~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~81_combout\ = (\address[2]~input_o\ & (\RW~78_combout\)) # (!\address[2]~input_o\ & ((\RW~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \RW~78_combout\,
	datad => \RW~80_combout\,
	combout => \RW~81_combout\);

-- Location: FF_X27_Y22_N13
\display[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[2]~reg0_q\);

-- Location: LCCOMB_X29_Y23_N10
\vehiculo_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehiculo_count[3]~14_combout\ = (vehiculo_count(3) & (!\vehiculo_count[2]~13\)) # (!vehiculo_count(3) & ((\vehiculo_count[2]~13\) # (GND)))
-- \vehiculo_count[3]~15\ = CARRY((!\vehiculo_count[2]~13\) # (!vehiculo_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vehiculo_count(3),
	datad => VCC,
	cin => \vehiculo_count[2]~13\,
	combout => \vehiculo_count[3]~14_combout\,
	cout => \vehiculo_count[3]~15\);

-- Location: FF_X29_Y23_N11
\vehiculo_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \vehiculo_count[3]~14_combout\,
	sclr => \Equal0~6_combout\,
	ena => \vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vehiculo_count(3));

-- Location: LCCOMB_X28_Y22_N14
\RW~35feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~35feeder_combout\ = vehiculo_count(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(3),
	combout => \RW~35feeder_combout\);

-- Location: FF_X28_Y22_N15
\RW~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~35feeder_combout\,
	ena => \RW~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~35_q\);

-- Location: FF_X29_Y22_N15
\RW~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(3),
	sload => VCC,
	ena => \RW~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~14_q\);

-- Location: LCCOMB_X29_Y22_N28
\RW~21feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~21feeder_combout\ = vehiculo_count(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(3),
	combout => \RW~21feeder_combout\);

-- Location: FF_X29_Y22_N29
\RW~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~21feeder_combout\,
	ena => \RW~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~21_q\);

-- Location: LCCOMB_X29_Y22_N14
\RW~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~84_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\RW~21_q\))) # (!\address[0]~input_o\ & (\RW~14_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \RW~14_q\,
	datad => \RW~21_q\,
	combout => \RW~84_combout\);

-- Location: LCCOMB_X27_Y22_N10
\RW~28feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~28feeder_combout\ = vehiculo_count(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(3),
	combout => \RW~28feeder_combout\);

-- Location: FF_X27_Y22_N11
\RW~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~28feeder_combout\,
	ena => \RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~28_q\);

-- Location: LCCOMB_X28_Y22_N8
\RW~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~85_combout\ = (\address[1]~input_o\ & ((\RW~84_combout\ & (\RW~35_q\)) # (!\RW~84_combout\ & ((\RW~28_q\))))) # (!\address[1]~input_o\ & (((\RW~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \RW~35_q\,
	datac => \RW~84_combout\,
	datad => \RW~28_q\,
	combout => \RW~85_combout\);

-- Location: FF_X27_Y23_N27
\RW~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(3),
	sload => VCC,
	ena => \RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~42_q\);

-- Location: LCCOMB_X29_Y23_N24
\RW~56feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~56feeder_combout\ = vehiculo_count(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(3),
	combout => \RW~56feeder_combout\);

-- Location: FF_X29_Y23_N25
\RW~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~56feeder_combout\,
	ena => \RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~56_q\);

-- Location: LCCOMB_X27_Y23_N26
\RW~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~82_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\RW~56_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\RW~42_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \RW~42_q\,
	datad => \RW~56_q\,
	combout => \RW~82_combout\);

-- Location: FF_X27_Y23_N9
\RW~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(3),
	sload => VCC,
	ena => \RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~49_q\);

-- Location: LCCOMB_X26_Y23_N30
\RW~63feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~63feeder_combout\ = vehiculo_count(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(3),
	combout => \RW~63feeder_combout\);

-- Location: FF_X26_Y23_N31
\RW~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~63feeder_combout\,
	ena => \RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~63_q\);

-- Location: LCCOMB_X27_Y23_N8
\RW~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~83_combout\ = (\RW~82_combout\ & (((\RW~63_q\)) # (!\address[0]~input_o\))) # (!\RW~82_combout\ & (\address[0]~input_o\ & (\RW~49_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~82_combout\,
	datab => \address[0]~input_o\,
	datac => \RW~49_q\,
	datad => \RW~63_q\,
	combout => \RW~83_combout\);

-- Location: LCCOMB_X27_Y22_N14
\RW~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~86_combout\ = (\address[2]~input_o\ & ((\RW~83_combout\))) # (!\address[2]~input_o\ & (\RW~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \RW~85_combout\,
	datad => \RW~83_combout\,
	combout => \RW~86_combout\);

-- Location: FF_X27_Y22_N15
\display[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[3]~reg0_q\);

-- Location: LCCOMB_X29_Y23_N12
\vehiculo_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehiculo_count[4]~16_combout\ = (vehiculo_count(4) & (\vehiculo_count[3]~15\ $ (GND))) # (!vehiculo_count(4) & (!\vehiculo_count[3]~15\ & VCC))
-- \vehiculo_count[4]~17\ = CARRY((vehiculo_count(4) & !\vehiculo_count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vehiculo_count(4),
	datad => VCC,
	cin => \vehiculo_count[3]~15\,
	combout => \vehiculo_count[4]~16_combout\,
	cout => \vehiculo_count[4]~17\);

-- Location: FF_X29_Y23_N13
\vehiculo_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \vehiculo_count[4]~16_combout\,
	sclr => \Equal0~6_combout\,
	ena => \vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vehiculo_count(4));

-- Location: LCCOMB_X29_Y23_N26
\RW~57feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~57feeder_combout\ = vehiculo_count(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(4),
	combout => \RW~57feeder_combout\);

-- Location: FF_X29_Y23_N27
\RW~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~57feeder_combout\,
	ena => \RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~57_q\);

-- Location: FF_X27_Y23_N23
\RW~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(4),
	sload => VCC,
	ena => \RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~43_q\);

-- Location: LCCOMB_X27_Y23_N22
\RW~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~87_combout\ = (\address[1]~input_o\ & ((\RW~57_q\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\RW~43_q\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~57_q\,
	datab => \address[1]~input_o\,
	datac => \RW~43_q\,
	datad => \address[0]~input_o\,
	combout => \RW~87_combout\);

-- Location: FF_X27_Y23_N13
\RW~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(4),
	sload => VCC,
	ena => \RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~50_q\);

-- Location: LCCOMB_X26_Y23_N20
\RW~64feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~64feeder_combout\ = vehiculo_count(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(4),
	combout => \RW~64feeder_combout\);

-- Location: FF_X26_Y23_N21
\RW~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~64feeder_combout\,
	ena => \RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~64_q\);

-- Location: LCCOMB_X27_Y23_N12
\RW~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~88_combout\ = (\RW~87_combout\ & (((\RW~64_q\)) # (!\address[0]~input_o\))) # (!\RW~87_combout\ & (\address[0]~input_o\ & (\RW~50_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~87_combout\,
	datab => \address[0]~input_o\,
	datac => \RW~50_q\,
	datad => \RW~64_q\,
	combout => \RW~88_combout\);

-- Location: LCCOMB_X27_Y22_N20
\RW~29feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~29feeder_combout\ = vehiculo_count(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(4),
	combout => \RW~29feeder_combout\);

-- Location: FF_X27_Y22_N21
\RW~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~29feeder_combout\,
	ena => \RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~29_q\);

-- Location: FF_X29_Y22_N31
\RW~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(4),
	sload => VCC,
	ena => \RW~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~15_q\);

-- Location: LCCOMB_X29_Y22_N12
\RW~22feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~22feeder_combout\ = vehiculo_count(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(4),
	combout => \RW~22feeder_combout\);

-- Location: FF_X29_Y22_N13
\RW~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~22feeder_combout\,
	ena => \RW~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~22_q\);

-- Location: LCCOMB_X29_Y22_N30
\RW~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~89_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\RW~22_q\))) # (!\address[0]~input_o\ & (\RW~15_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \RW~15_q\,
	datad => \RW~22_q\,
	combout => \RW~89_combout\);

-- Location: LCCOMB_X28_Y22_N18
\RW~36feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~36feeder_combout\ = vehiculo_count(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(4),
	combout => \RW~36feeder_combout\);

-- Location: FF_X28_Y22_N19
\RW~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~36feeder_combout\,
	ena => \RW~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~36_q\);

-- Location: LCCOMB_X28_Y22_N24
\RW~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~90_combout\ = (\address[1]~input_o\ & ((\RW~89_combout\ & ((\RW~36_q\))) # (!\RW~89_combout\ & (\RW~29_q\)))) # (!\address[1]~input_o\ & (((\RW~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \RW~29_q\,
	datac => \RW~89_combout\,
	datad => \RW~36_q\,
	combout => \RW~90_combout\);

-- Location: LCCOMB_X27_Y22_N16
\RW~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~91_combout\ = (\address[2]~input_o\ & (\RW~88_combout\)) # (!\address[2]~input_o\ & ((\RW~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \RW~88_combout\,
	datad => \RW~90_combout\,
	combout => \RW~91_combout\);

-- Location: FF_X27_Y22_N17
\display[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[4]~reg0_q\);

-- Location: LCCOMB_X29_Y23_N14
\vehiculo_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehiculo_count[5]~18_combout\ = (vehiculo_count(5) & (!\vehiculo_count[4]~17\)) # (!vehiculo_count(5) & ((\vehiculo_count[4]~17\) # (GND)))
-- \vehiculo_count[5]~19\ = CARRY((!\vehiculo_count[4]~17\) # (!vehiculo_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vehiculo_count(5),
	datad => VCC,
	cin => \vehiculo_count[4]~17\,
	combout => \vehiculo_count[5]~18_combout\,
	cout => \vehiculo_count[5]~19\);

-- Location: FF_X29_Y23_N15
\vehiculo_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \vehiculo_count[5]~18_combout\,
	sclr => \Equal0~6_combout\,
	ena => \vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vehiculo_count(5));

-- Location: LCCOMB_X27_Y22_N22
\RW~30feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~30feeder_combout\ = vehiculo_count(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(5),
	combout => \RW~30feeder_combout\);

-- Location: FF_X27_Y22_N23
\RW~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~30feeder_combout\,
	ena => \RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~30_q\);

-- Location: LCCOMB_X28_Y22_N30
\RW~37feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~37feeder_combout\ = vehiculo_count(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(5),
	combout => \RW~37feeder_combout\);

-- Location: FF_X28_Y22_N31
\RW~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~37feeder_combout\,
	ena => \RW~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~37_q\);

-- Location: FF_X29_Y22_N27
\RW~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(5),
	sload => VCC,
	ena => \RW~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~16_q\);

-- Location: LCCOMB_X29_Y22_N16
\RW~23feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~23feeder_combout\ = vehiculo_count(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(5),
	combout => \RW~23feeder_combout\);

-- Location: FF_X29_Y22_N17
\RW~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~23feeder_combout\,
	ena => \RW~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~23_q\);

-- Location: LCCOMB_X29_Y22_N26
\RW~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~94_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\RW~23_q\))) # (!\address[0]~input_o\ & (\RW~16_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \RW~16_q\,
	datad => \RW~23_q\,
	combout => \RW~94_combout\);

-- Location: LCCOMB_X28_Y22_N12
\RW~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~95_combout\ = (\address[1]~input_o\ & ((\RW~94_combout\ & ((\RW~37_q\))) # (!\RW~94_combout\ & (\RW~30_q\)))) # (!\address[1]~input_o\ & (((\RW~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \RW~30_q\,
	datac => \RW~37_q\,
	datad => \RW~94_combout\,
	combout => \RW~95_combout\);

-- Location: LCCOMB_X26_Y23_N2
\RW~65feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~65feeder_combout\ = vehiculo_count(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(5),
	combout => \RW~65feeder_combout\);

-- Location: FF_X26_Y23_N3
\RW~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~65feeder_combout\,
	ena => \RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~65_q\);

-- Location: FF_X27_Y23_N29
\RW~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(5),
	sload => VCC,
	ena => \RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~51_q\);

-- Location: LCCOMB_X29_Y23_N20
\RW~58feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~58feeder_combout\ = vehiculo_count(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(5),
	combout => \RW~58feeder_combout\);

-- Location: FF_X29_Y23_N21
\RW~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~58feeder_combout\,
	ena => \RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~58_q\);

-- Location: FF_X27_Y23_N3
\RW~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(5),
	sload => VCC,
	ena => \RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~44_q\);

-- Location: LCCOMB_X27_Y23_N2
\RW~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~92_combout\ = (\address[1]~input_o\ & ((\RW~58_q\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\RW~44_q\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~58_q\,
	datab => \address[1]~input_o\,
	datac => \RW~44_q\,
	datad => \address[0]~input_o\,
	combout => \RW~92_combout\);

-- Location: LCCOMB_X27_Y23_N28
\RW~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~93_combout\ = (\address[0]~input_o\ & ((\RW~92_combout\ & (\RW~65_q\)) # (!\RW~92_combout\ & ((\RW~51_q\))))) # (!\address[0]~input_o\ & (((\RW~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~65_q\,
	datab => \address[0]~input_o\,
	datac => \RW~51_q\,
	datad => \RW~92_combout\,
	combout => \RW~93_combout\);

-- Location: LCCOMB_X27_Y22_N2
\RW~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~96_combout\ = (\address[2]~input_o\ & ((\RW~93_combout\))) # (!\address[2]~input_o\ & (\RW~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \RW~95_combout\,
	datad => \RW~93_combout\,
	combout => \RW~96_combout\);

-- Location: FF_X27_Y22_N3
\display[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[5]~reg0_q\);

-- Location: LCCOMB_X29_Y23_N16
\vehiculo_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehiculo_count[6]~20_combout\ = \vehiculo_count[5]~19\ $ (!vehiculo_count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(6),
	cin => \vehiculo_count[5]~19\,
	combout => \vehiculo_count[6]~20_combout\);

-- Location: FF_X29_Y23_N17
\vehiculo_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \vehiculo_count[6]~20_combout\,
	sclr => \Equal0~6_combout\,
	ena => \vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vehiculo_count(6));

-- Location: LCCOMB_X29_Y23_N18
\RW~59feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~59feeder_combout\ = vehiculo_count(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(6),
	combout => \RW~59feeder_combout\);

-- Location: FF_X29_Y23_N19
\RW~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~59feeder_combout\,
	ena => \RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~59_q\);

-- Location: FF_X27_Y23_N31
\RW~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(6),
	sload => VCC,
	ena => \RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~45_q\);

-- Location: LCCOMB_X27_Y23_N30
\RW~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~97_combout\ = (\address[1]~input_o\ & ((\RW~59_q\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\RW~45_q\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~59_q\,
	datab => \address[1]~input_o\,
	datac => \RW~45_q\,
	datad => \address[0]~input_o\,
	combout => \RW~97_combout\);

-- Location: FF_X27_Y23_N25
\RW~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(6),
	sload => VCC,
	ena => \RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~52_q\);

-- Location: LCCOMB_X26_Y23_N28
\RW~66feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~66feeder_combout\ = vehiculo_count(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(6),
	combout => \RW~66feeder_combout\);

-- Location: FF_X26_Y23_N29
\RW~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~66feeder_combout\,
	ena => \RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~66_q\);

-- Location: LCCOMB_X27_Y23_N24
\RW~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~98_combout\ = (\RW~97_combout\ & (((\RW~66_q\)) # (!\address[0]~input_o\))) # (!\RW~97_combout\ & (\address[0]~input_o\ & (\RW~52_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~97_combout\,
	datab => \address[0]~input_o\,
	datac => \RW~52_q\,
	datad => \RW~66_q\,
	combout => \RW~98_combout\);

-- Location: LCCOMB_X28_Y22_N10
\RW~38feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~38feeder_combout\ = vehiculo_count(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(6),
	combout => \RW~38feeder_combout\);

-- Location: FF_X28_Y22_N11
\RW~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~38feeder_combout\,
	ena => \RW~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~38_q\);

-- Location: LCCOMB_X27_Y22_N4
\RW~31feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~31feeder_combout\ = vehiculo_count(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => vehiculo_count(6),
	combout => \RW~31feeder_combout\);

-- Location: FF_X27_Y22_N5
\RW~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~31feeder_combout\,
	ena => \RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~31_q\);

-- Location: LCCOMB_X29_Y22_N8
\RW~24feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~24feeder_combout\ = vehiculo_count(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => vehiculo_count(6),
	combout => \RW~24feeder_combout\);

-- Location: FF_X29_Y22_N9
\RW~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~24feeder_combout\,
	ena => \RW~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~24_q\);

-- Location: FF_X29_Y22_N3
\RW~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => vehiculo_count(6),
	sload => VCC,
	ena => \RW~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RW~17_q\);

-- Location: LCCOMB_X29_Y22_N2
\RW~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~99_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\RW~24_q\)) # (!\address[0]~input_o\ & ((\RW~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \RW~24_q\,
	datac => \RW~17_q\,
	datad => \address[0]~input_o\,
	combout => \RW~99_combout\);

-- Location: LCCOMB_X28_Y22_N16
\RW~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~100_combout\ = (\address[1]~input_o\ & ((\RW~99_combout\ & (\RW~38_q\)) # (!\RW~99_combout\ & ((\RW~31_q\))))) # (!\address[1]~input_o\ & (((\RW~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RW~38_q\,
	datab => \RW~31_q\,
	datac => \address[1]~input_o\,
	datad => \RW~99_combout\,
	combout => \RW~100_combout\);

-- Location: LCCOMB_X28_Y22_N0
\RW~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RW~101_combout\ = (\address[2]~input_o\ & (\RW~98_combout\)) # (!\address[2]~input_o\ & ((\RW~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datac => \RW~98_combout\,
	datad => \RW~100_combout\,
	combout => \RW~101_combout\);

-- Location: FF_X28_Y22_N1
\display[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RW~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display[6]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N22
\address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

ww_display(0) <= \display[0]~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(3) <= \display[3]~output_o\;

ww_display(4) <= \display[4]~output_o\;

ww_display(5) <= \display[5]~output_o\;

ww_display(6) <= \display[6]~output_o\;
END structure;


