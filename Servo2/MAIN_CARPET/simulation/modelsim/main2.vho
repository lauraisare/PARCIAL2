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

-- DATE "05/15/2024 18:01:33"

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

ENTITY 	main2 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sensor : IN std_logic;
	servo2 : OUT std_logic
	);
END main2;

-- Design Ports Information
-- servo2	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main2 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_sensor : std_logic;
SIGNAL ww_servo2 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \servo2~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|count[0]~15_combout\ : std_logic;
SIGNAL \u2|pwm_reset~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \u2|pwm_reset~q\ : std_logic;
SIGNAL \u1|LessThan1~0_combout\ : std_logic;
SIGNAL \u1|LessThan1~1_combout\ : std_logic;
SIGNAL \u1|LessThan1~2_combout\ : std_logic;
SIGNAL \sensor~input_o\ : std_logic;
SIGNAL \u2|pwm_enable~feeder_combout\ : std_logic;
SIGNAL \u2|pwm_enable~q\ : std_logic;
SIGNAL \u1|count[0]~16\ : std_logic;
SIGNAL \u1|count[1]~17_combout\ : std_logic;
SIGNAL \u1|count[1]~18\ : std_logic;
SIGNAL \u1|count[2]~19_combout\ : std_logic;
SIGNAL \u1|count[2]~20\ : std_logic;
SIGNAL \u1|count[3]~21_combout\ : std_logic;
SIGNAL \u1|count[3]~22\ : std_logic;
SIGNAL \u1|count[4]~23_combout\ : std_logic;
SIGNAL \u1|count[4]~24\ : std_logic;
SIGNAL \u1|count[5]~25_combout\ : std_logic;
SIGNAL \u1|count[5]~26\ : std_logic;
SIGNAL \u1|count[6]~27_combout\ : std_logic;
SIGNAL \u1|count[6]~28\ : std_logic;
SIGNAL \u1|count[7]~29_combout\ : std_logic;
SIGNAL \u1|count[7]~30\ : std_logic;
SIGNAL \u1|count[8]~31_combout\ : std_logic;
SIGNAL \u1|count[8]~32\ : std_logic;
SIGNAL \u1|count[9]~33_combout\ : std_logic;
SIGNAL \u1|count[9]~34\ : std_logic;
SIGNAL \u1|count[10]~35_combout\ : std_logic;
SIGNAL \u1|count[10]~36\ : std_logic;
SIGNAL \u1|count[11]~37_combout\ : std_logic;
SIGNAL \u1|count[11]~38\ : std_logic;
SIGNAL \u1|count[12]~39_combout\ : std_logic;
SIGNAL \u1|count[12]~40\ : std_logic;
SIGNAL \u1|count[13]~41_combout\ : std_logic;
SIGNAL \u1|count[13]~42\ : std_logic;
SIGNAL \u1|count[14]~43_combout\ : std_logic;
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~2_combout\ : std_logic;
SIGNAL \u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u1|pwm_out~q\ : std_logic;
SIGNAL \u1|count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \u2|ALT_INV_pwm_enable~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_sensor <= sensor;
servo2 <= ww_servo2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\u2|ALT_INV_pwm_enable~q\ <= NOT \u2|pwm_enable~q\;

-- Location: IOOBUF_X35_Y0_N2
\servo2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|pwm_out~q\,
	devoe => ww_devoe,
	o => \servo2~output_o\);

-- Location: IOIBUF_X0_Y14_N1
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

-- Location: LCCOMB_X37_Y1_N2
\u1|count[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[0]~15_combout\ = \u1|count\(0) $ (VCC)
-- \u1|count[0]~16\ = CARRY(\u1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(0),
	datad => VCC,
	combout => \u1|count[0]~15_combout\,
	cout => \u1|count[0]~16\);

-- Location: LCCOMB_X36_Y1_N6
\u2|pwm_reset~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u2|pwm_reset~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u2|pwm_reset~feeder_combout\);

-- Location: IOIBUF_X0_Y14_N8
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

-- Location: FF_X36_Y1_N7
\u2|pwm_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u2|pwm_reset~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|pwm_reset~q\);

-- Location: LCCOMB_X36_Y1_N12
\u1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|LessThan1~0_combout\ = (!\u1|count\(8) & (!\u1|count\(7) & (!\u1|count\(5) & !\u1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(8),
	datab => \u1|count\(7),
	datac => \u1|count\(5),
	datad => \u1|count\(6),
	combout => \u1|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y1_N14
\u1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|LessThan1~1_combout\ = (((\u1|LessThan1~0_combout\) # (!\u1|count\(11))) # (!\u1|count\(10))) # (!\u1|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(9),
	datab => \u1|count\(10),
	datac => \u1|count\(11),
	datad => \u1|LessThan1~0_combout\,
	combout => \u1|LessThan1~1_combout\);

-- Location: LCCOMB_X37_Y1_N0
\u1|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|LessThan1~2_combout\ = (\u1|count\(14) & ((\u1|count\(13)) # ((\u1|count\(12)) # (!\u1|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(14),
	datab => \u1|count\(13),
	datac => \u1|count\(12),
	datad => \u1|LessThan1~1_combout\,
	combout => \u1|LessThan1~2_combout\);

-- Location: IOIBUF_X35_Y0_N8
\sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor,
	o => \sensor~input_o\);

-- Location: LCCOMB_X36_Y1_N16
\u2|pwm_enable~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u2|pwm_enable~feeder_combout\ = \sensor~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sensor~input_o\,
	combout => \u2|pwm_enable~feeder_combout\);

-- Location: FF_X36_Y1_N17
\u2|pwm_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u2|pwm_enable~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|pwm_enable~q\);

-- Location: FF_X37_Y1_N3
\u1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[0]~15_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(0));

-- Location: LCCOMB_X37_Y1_N4
\u1|count[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[1]~17_combout\ = (\u1|count\(1) & (!\u1|count[0]~16\)) # (!\u1|count\(1) & ((\u1|count[0]~16\) # (GND)))
-- \u1|count[1]~18\ = CARRY((!\u1|count[0]~16\) # (!\u1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(1),
	datad => VCC,
	cin => \u1|count[0]~16\,
	combout => \u1|count[1]~17_combout\,
	cout => \u1|count[1]~18\);

-- Location: FF_X37_Y1_N5
\u1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[1]~17_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(1));

-- Location: LCCOMB_X37_Y1_N6
\u1|count[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[2]~19_combout\ = (\u1|count\(2) & (\u1|count[1]~18\ $ (GND))) # (!\u1|count\(2) & (!\u1|count[1]~18\ & VCC))
-- \u1|count[2]~20\ = CARRY((\u1|count\(2) & !\u1|count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(2),
	datad => VCC,
	cin => \u1|count[1]~18\,
	combout => \u1|count[2]~19_combout\,
	cout => \u1|count[2]~20\);

-- Location: FF_X37_Y1_N7
\u1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[2]~19_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(2));

-- Location: LCCOMB_X37_Y1_N8
\u1|count[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[3]~21_combout\ = (\u1|count\(3) & (!\u1|count[2]~20\)) # (!\u1|count\(3) & ((\u1|count[2]~20\) # (GND)))
-- \u1|count[3]~22\ = CARRY((!\u1|count[2]~20\) # (!\u1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(3),
	datad => VCC,
	cin => \u1|count[2]~20\,
	combout => \u1|count[3]~21_combout\,
	cout => \u1|count[3]~22\);

-- Location: FF_X37_Y1_N9
\u1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[3]~21_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(3));

-- Location: LCCOMB_X37_Y1_N10
\u1|count[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[4]~23_combout\ = (\u1|count\(4) & (\u1|count[3]~22\ $ (GND))) # (!\u1|count\(4) & (!\u1|count[3]~22\ & VCC))
-- \u1|count[4]~24\ = CARRY((\u1|count\(4) & !\u1|count[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(4),
	datad => VCC,
	cin => \u1|count[3]~22\,
	combout => \u1|count[4]~23_combout\,
	cout => \u1|count[4]~24\);

-- Location: FF_X37_Y1_N11
\u1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[4]~23_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(4));

-- Location: LCCOMB_X37_Y1_N12
\u1|count[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[5]~25_combout\ = (\u1|count\(5) & (!\u1|count[4]~24\)) # (!\u1|count\(5) & ((\u1|count[4]~24\) # (GND)))
-- \u1|count[5]~26\ = CARRY((!\u1|count[4]~24\) # (!\u1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(5),
	datad => VCC,
	cin => \u1|count[4]~24\,
	combout => \u1|count[5]~25_combout\,
	cout => \u1|count[5]~26\);

-- Location: FF_X37_Y1_N13
\u1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[5]~25_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(5));

-- Location: LCCOMB_X37_Y1_N14
\u1|count[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[6]~27_combout\ = (\u1|count\(6) & (\u1|count[5]~26\ $ (GND))) # (!\u1|count\(6) & (!\u1|count[5]~26\ & VCC))
-- \u1|count[6]~28\ = CARRY((\u1|count\(6) & !\u1|count[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(6),
	datad => VCC,
	cin => \u1|count[5]~26\,
	combout => \u1|count[6]~27_combout\,
	cout => \u1|count[6]~28\);

-- Location: FF_X37_Y1_N15
\u1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[6]~27_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(6));

-- Location: LCCOMB_X37_Y1_N16
\u1|count[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[7]~29_combout\ = (\u1|count\(7) & (!\u1|count[6]~28\)) # (!\u1|count\(7) & ((\u1|count[6]~28\) # (GND)))
-- \u1|count[7]~30\ = CARRY((!\u1|count[6]~28\) # (!\u1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(7),
	datad => VCC,
	cin => \u1|count[6]~28\,
	combout => \u1|count[7]~29_combout\,
	cout => \u1|count[7]~30\);

-- Location: FF_X37_Y1_N17
\u1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[7]~29_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(7));

-- Location: LCCOMB_X37_Y1_N18
\u1|count[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[8]~31_combout\ = (\u1|count\(8) & (\u1|count[7]~30\ $ (GND))) # (!\u1|count\(8) & (!\u1|count[7]~30\ & VCC))
-- \u1|count[8]~32\ = CARRY((\u1|count\(8) & !\u1|count[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(8),
	datad => VCC,
	cin => \u1|count[7]~30\,
	combout => \u1|count[8]~31_combout\,
	cout => \u1|count[8]~32\);

-- Location: FF_X37_Y1_N19
\u1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[8]~31_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(8));

-- Location: LCCOMB_X37_Y1_N20
\u1|count[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[9]~33_combout\ = (\u1|count\(9) & (!\u1|count[8]~32\)) # (!\u1|count\(9) & ((\u1|count[8]~32\) # (GND)))
-- \u1|count[9]~34\ = CARRY((!\u1|count[8]~32\) # (!\u1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(9),
	datad => VCC,
	cin => \u1|count[8]~32\,
	combout => \u1|count[9]~33_combout\,
	cout => \u1|count[9]~34\);

-- Location: FF_X37_Y1_N21
\u1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[9]~33_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(9));

-- Location: LCCOMB_X37_Y1_N22
\u1|count[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[10]~35_combout\ = (\u1|count\(10) & (\u1|count[9]~34\ $ (GND))) # (!\u1|count\(10) & (!\u1|count[9]~34\ & VCC))
-- \u1|count[10]~36\ = CARRY((\u1|count\(10) & !\u1|count[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(10),
	datad => VCC,
	cin => \u1|count[9]~34\,
	combout => \u1|count[10]~35_combout\,
	cout => \u1|count[10]~36\);

-- Location: FF_X37_Y1_N23
\u1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[10]~35_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(10));

-- Location: LCCOMB_X37_Y1_N24
\u1|count[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[11]~37_combout\ = (\u1|count\(11) & (!\u1|count[10]~36\)) # (!\u1|count\(11) & ((\u1|count[10]~36\) # (GND)))
-- \u1|count[11]~38\ = CARRY((!\u1|count[10]~36\) # (!\u1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(11),
	datad => VCC,
	cin => \u1|count[10]~36\,
	combout => \u1|count[11]~37_combout\,
	cout => \u1|count[11]~38\);

-- Location: FF_X37_Y1_N25
\u1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[11]~37_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(11));

-- Location: LCCOMB_X37_Y1_N26
\u1|count[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[12]~39_combout\ = (\u1|count\(12) & (\u1|count[11]~38\ $ (GND))) # (!\u1|count\(12) & (!\u1|count[11]~38\ & VCC))
-- \u1|count[12]~40\ = CARRY((\u1|count\(12) & !\u1|count[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(12),
	datad => VCC,
	cin => \u1|count[11]~38\,
	combout => \u1|count[12]~39_combout\,
	cout => \u1|count[12]~40\);

-- Location: FF_X37_Y1_N27
\u1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[12]~39_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(12));

-- Location: LCCOMB_X37_Y1_N28
\u1|count[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[13]~41_combout\ = (\u1|count\(13) & (!\u1|count[12]~40\)) # (!\u1|count\(13) & ((\u1|count[12]~40\) # (GND)))
-- \u1|count[13]~42\ = CARRY((!\u1|count[12]~40\) # (!\u1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(13),
	datad => VCC,
	cin => \u1|count[12]~40\,
	combout => \u1|count[13]~41_combout\,
	cout => \u1|count[13]~42\);

-- Location: FF_X37_Y1_N29
\u1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[13]~41_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(13));

-- Location: LCCOMB_X37_Y1_N30
\u1|count[14]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|count[14]~43_combout\ = \u1|count\(14) $ (!\u1|count[13]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(14),
	cin => \u1|count[13]~42\,
	combout => \u1|count[14]~43_combout\);

-- Location: FF_X37_Y1_N31
\u1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|count[14]~43_combout\,
	clrn => \u2|pwm_reset~q\,
	sclr => \u1|LessThan1~2_combout\,
	ena => \u2|pwm_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(14));

-- Location: LCCOMB_X36_Y1_N20
\u1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = (((!\u1|count\(4) & !\u1|count\(3))) # (!\u1|count\(6))) # (!\u1|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(4),
	datab => \u1|count\(5),
	datac => \u1|count\(6),
	datad => \u1|count\(3),
	combout => \u1|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y1_N22
\u1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (!\u1|count\(13) & (!\u1|count\(10) & (!\u1|count\(12) & !\u1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(13),
	datab => \u1|count\(10),
	datac => \u1|count\(12),
	datad => \u1|count\(11),
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y1_N18
\u1|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|LessThan0~2_combout\ = ((!\u1|count\(8)) # (!\u1|count\(9))) # (!\u1|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(7),
	datac => \u1|count\(9),
	datad => \u1|count\(8),
	combout => \u1|LessThan0~2_combout\);

-- Location: LCCOMB_X36_Y1_N28
\u1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u1|LessThan0~3_combout\ = (!\u1|count\(14) & (\u1|LessThan0~0_combout\ & ((\u1|LessThan0~1_combout\) # (\u1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(14),
	datab => \u1|LessThan0~1_combout\,
	datac => \u1|LessThan0~0_combout\,
	datad => \u1|LessThan0~2_combout\,
	combout => \u1|LessThan0~3_combout\);

-- Location: FF_X36_Y1_N29
\u1|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|LessThan0~3_combout\,
	sclr => \u2|ALT_INV_pwm_enable~q\,
	ena => \u2|pwm_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|pwm_out~q\);

ww_servo2 <= \servo2~output_o\;
END structure;


