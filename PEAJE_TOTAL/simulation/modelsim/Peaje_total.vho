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

-- DATE "05/15/2024 18:17:38"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
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

ENTITY 	Peaje_total IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	front_sensor : IN std_logic;
	id : IN std_logic;
	identificacion : IN std_logic_vector(4 DOWNTO 0);
	back_sensor : IN std_logic;
	tx : IN std_logic;
	address : IN std_logic_vector(3 DOWNTO 0);
	semaforo_entrada : OUT std_logic_vector(2 DOWNTO 0);
	semaforo_final : OUT std_logic_vector(2 DOWNTO 0);
	talanquera_inicial : OUT std_logic;
	talanquera_final : OUT std_logic;
	led_verde : OUT std_logic;
	led_rojo : OUT std_logic;
	alarm : OUT std_logic;
	categoria_vehiculo : OUT std_logic_vector(1 DOWNTO 0);
	tarifa_peaje : OUT std_logic_vector(6 DOWNTO 0);
	vehiculos : OUT std_logic_vector(6 DOWNTO 0)
	);
END Peaje_total;

-- Design Ports Information
-- identificacion[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_entrada[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_entrada[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_entrada[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_final[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_final[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_final[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- talanquera_inicial	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- talanquera_final	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_verde	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_rojo	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria_vehiculo[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa_peaje[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculos[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculos[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculos[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculos[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculos[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculos[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehiculos[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Peaje_total IS
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
SIGNAL ww_front_sensor : std_logic;
SIGNAL ww_id : std_logic;
SIGNAL ww_identificacion : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_back_sensor : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_semaforo_entrada : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_semaforo_final : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_talanquera_inicial : std_logic;
SIGNAL ww_talanquera_final : std_logic;
SIGNAL ww_led_verde : std_logic;
SIGNAL ww_led_rojo : std_logic;
SIGNAL ww_alarm : std_logic;
SIGNAL ww_categoria_vehiculo : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_tarifa_peaje : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_vehiculos : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \identificacion[0]~input_o\ : std_logic;
SIGNAL \identificacion[1]~input_o\ : std_logic;
SIGNAL \identificacion[2]~input_o\ : std_logic;
SIGNAL \tx~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \semaforo_entrada[0]~output_o\ : std_logic;
SIGNAL \semaforo_entrada[1]~output_o\ : std_logic;
SIGNAL \semaforo_entrada[2]~output_o\ : std_logic;
SIGNAL \semaforo_final[0]~output_o\ : std_logic;
SIGNAL \semaforo_final[1]~output_o\ : std_logic;
SIGNAL \semaforo_final[2]~output_o\ : std_logic;
SIGNAL \talanquera_inicial~output_o\ : std_logic;
SIGNAL \talanquera_final~output_o\ : std_logic;
SIGNAL \led_verde~output_o\ : std_logic;
SIGNAL \led_rojo~output_o\ : std_logic;
SIGNAL \alarm~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[0]~output_o\ : std_logic;
SIGNAL \categoria_vehiculo[1]~output_o\ : std_logic;
SIGNAL \tarifa_peaje[0]~output_o\ : std_logic;
SIGNAL \tarifa_peaje[1]~output_o\ : std_logic;
SIGNAL \tarifa_peaje[2]~output_o\ : std_logic;
SIGNAL \tarifa_peaje[3]~output_o\ : std_logic;
SIGNAL \tarifa_peaje[4]~output_o\ : std_logic;
SIGNAL \tarifa_peaje[5]~output_o\ : std_logic;
SIGNAL \tarifa_peaje[6]~output_o\ : std_logic;
SIGNAL \vehiculos[0]~output_o\ : std_logic;
SIGNAL \vehiculos[1]~output_o\ : std_logic;
SIGNAL \vehiculos[2]~output_o\ : std_logic;
SIGNAL \vehiculos[3]~output_o\ : std_logic;
SIGNAL \vehiculos[4]~output_o\ : std_logic;
SIGNAL \vehiculos[5]~output_o\ : std_logic;
SIGNAL \vehiculos[6]~output_o\ : std_logic;
SIGNAL \front_sensor~input_o\ : std_logic;
SIGNAL \back_sensor~input_o\ : std_logic;
SIGNAL \id~input_o\ : std_logic;
SIGNAL \A0|RGB[1]~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \A4|estado_siguiente.reinicio_sistema~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \A4|estado_presente.reinicio_sistema~q\ : std_logic;
SIGNAL \A4|Selector0~0_combout\ : std_logic;
SIGNAL \A4|estado_presente.inicio~q\ : std_logic;
SIGNAL \A4|estado_siguiente.vehiculo_detectado~0_combout\ : std_logic;
SIGNAL \A4|estado_presente.vehiculo_detectado~q\ : std_logic;
SIGNAL \A4|Selector2~0_combout\ : std_logic;
SIGNAL \A4|estado_presente.salida_noaprobada~q\ : std_logic;
SIGNAL \A4|Selector1~0_combout\ : std_logic;
SIGNAL \A4|Selector1~1_combout\ : std_logic;
SIGNAL \A4|estado_presente.salida_aprobada~q\ : std_logic;
SIGNAL \A4|led_verde~combout\ : std_logic;
SIGNAL \identificacion[3]~input_o\ : std_logic;
SIGNAL \A2|categoria[0]~0_combout\ : std_logic;
SIGNAL \identificacion[4]~input_o\ : std_logic;
SIGNAL \A2|categoria[1]~1_combout\ : std_logic;
SIGNAL \A5|Mux0~0_combout\ : std_logic;
SIGNAL \A5|Mux0~1_combout\ : std_logic;
SIGNAL \A3|vehiculo_count[0]~7_combout\ : std_logic;
SIGNAL \A3|Add1~0_combout\ : std_logic;
SIGNAL \A3|Add1~1\ : std_logic;
SIGNAL \A3|Add1~2_combout\ : std_logic;
SIGNAL \A3|Add1~3\ : std_logic;
SIGNAL \A3|Add1~4_combout\ : std_logic;
SIGNAL \A3|Add1~5\ : std_logic;
SIGNAL \A3|Add1~6_combout\ : std_logic;
SIGNAL \A3|Equal0~0_combout\ : std_logic;
SIGNAL \A3|Add1~7\ : std_logic;
SIGNAL \A3|Add1~8_combout\ : std_logic;
SIGNAL \A3|Add1~9\ : std_logic;
SIGNAL \A3|Add1~10_combout\ : std_logic;
SIGNAL \A3|Add1~11\ : std_logic;
SIGNAL \A3|Add1~12_combout\ : std_logic;
SIGNAL \A3|tiempo~6_combout\ : std_logic;
SIGNAL \A3|Add1~13\ : std_logic;
SIGNAL \A3|Add1~14_combout\ : std_logic;
SIGNAL \A3|Add1~15\ : std_logic;
SIGNAL \A3|Add1~16_combout\ : std_logic;
SIGNAL \A3|Add1~17\ : std_logic;
SIGNAL \A3|Add1~18_combout\ : std_logic;
SIGNAL \A3|tiempo~5_combout\ : std_logic;
SIGNAL \A3|Add1~19\ : std_logic;
SIGNAL \A3|Add1~20_combout\ : std_logic;
SIGNAL \A3|Add1~21\ : std_logic;
SIGNAL \A3|Add1~22_combout\ : std_logic;
SIGNAL \A3|Add1~23\ : std_logic;
SIGNAL \A3|Add1~24_combout\ : std_logic;
SIGNAL \A3|Add1~25\ : std_logic;
SIGNAL \A3|Add1~26_combout\ : std_logic;
SIGNAL \A3|Add1~27\ : std_logic;
SIGNAL \A3|Add1~28_combout\ : std_logic;
SIGNAL \A3|tiempo~4_combout\ : std_logic;
SIGNAL \A3|Add1~29\ : std_logic;
SIGNAL \A3|Add1~30_combout\ : std_logic;
SIGNAL \A3|Add1~31\ : std_logic;
SIGNAL \A3|Add1~32_combout\ : std_logic;
SIGNAL \A3|tiempo~3_combout\ : std_logic;
SIGNAL \A3|Add1~33\ : std_logic;
SIGNAL \A3|Add1~34_combout\ : std_logic;
SIGNAL \A3|tiempo~2_combout\ : std_logic;
SIGNAL \A3|Add1~35\ : std_logic;
SIGNAL \A3|Add1~36_combout\ : std_logic;
SIGNAL \A3|tiempo~1_combout\ : std_logic;
SIGNAL \A3|Add1~37\ : std_logic;
SIGNAL \A3|Add1~38_combout\ : std_logic;
SIGNAL \A3|tiempo~0_combout\ : std_logic;
SIGNAL \A3|Equal0~1_combout\ : std_logic;
SIGNAL \A3|Equal0~2_combout\ : std_logic;
SIGNAL \A3|Equal0~3_combout\ : std_logic;
SIGNAL \A3|Equal0~4_combout\ : std_logic;
SIGNAL \A3|Equal0~5_combout\ : std_logic;
SIGNAL \A3|Equal0~6_combout\ : std_logic;
SIGNAL \A3|vehiculo_count[0]~9_combout\ : std_logic;
SIGNAL \A3|vehiculo_count[0]~8\ : std_logic;
SIGNAL \A3|vehiculo_count[1]~10_combout\ : std_logic;
SIGNAL \A3|vehiculo_count[1]~11\ : std_logic;
SIGNAL \A3|vehiculo_count[2]~12_combout\ : std_logic;
SIGNAL \A3|vehiculo_count[2]~13\ : std_logic;
SIGNAL \A3|vehiculo_count[3]~14_combout\ : std_logic;
SIGNAL \A3|vehiculo_count[3]~15\ : std_logic;
SIGNAL \A3|vehiculo_count[4]~16_combout\ : std_logic;
SIGNAL \A3|vehiculo_count[4]~17\ : std_logic;
SIGNAL \A3|vehiculo_count[5]~18_combout\ : std_logic;
SIGNAL \A3|vehiculo_count[5]~19\ : std_logic;
SIGNAL \A3|vehiculo_count[6]~20_combout\ : std_logic;
SIGNAL \A3|RW~31feeder_combout\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \A3|RW~103_combout\ : std_logic;
SIGNAL \A3|RW~31_q\ : std_logic;
SIGNAL \A3|RW~106_combout\ : std_logic;
SIGNAL \A3|RW~38_q\ : std_logic;
SIGNAL \A3|RW~105_combout\ : std_logic;
SIGNAL \A3|RW~17_q\ : std_logic;
SIGNAL \A3|RW~24feeder_combout\ : std_logic;
SIGNAL \A3|RW~104_combout\ : std_logic;
SIGNAL \A3|RW~24_q\ : std_logic;
SIGNAL \A3|RW~91_combout\ : std_logic;
SIGNAL \A3|RW~92_combout\ : std_logic;
SIGNAL \A3|RW~51feeder_combout\ : std_logic;
SIGNAL \A3|RW~99_combout\ : std_logic;
SIGNAL \A3|RW~51_q\ : std_logic;
SIGNAL \A3|RW~102_combout\ : std_logic;
SIGNAL \A3|RW~65_q\ : std_logic;
SIGNAL \A3|RW~101_combout\ : std_logic;
SIGNAL \A3|RW~44_q\ : std_logic;
SIGNAL \A3|RW~58feeder_combout\ : std_logic;
SIGNAL \A3|RW~100_combout\ : std_logic;
SIGNAL \A3|RW~58_q\ : std_logic;
SIGNAL \A3|RW~89_combout\ : std_logic;
SIGNAL \A3|RW~90_combout\ : std_logic;
SIGNAL \A3|RW~52feeder_combout\ : std_logic;
SIGNAL \A3|RW~52_q\ : std_logic;
SIGNAL \A3|RW~66_q\ : std_logic;
SIGNAL \A3|RW~45_q\ : std_logic;
SIGNAL \A3|RW~59feeder_combout\ : std_logic;
SIGNAL \A3|RW~59_q\ : std_logic;
SIGNAL \A3|RW~87_combout\ : std_logic;
SIGNAL \A3|RW~88_combout\ : std_logic;
SIGNAL \A3|Mux4~0_combout\ : std_logic;
SIGNAL \A3|RW~29feeder_combout\ : std_logic;
SIGNAL \A3|RW~29_q\ : std_logic;
SIGNAL \A3|RW~36_q\ : std_logic;
SIGNAL \A3|RW~15_q\ : std_logic;
SIGNAL \A3|RW~22feeder_combout\ : std_logic;
SIGNAL \A3|RW~22_q\ : std_logic;
SIGNAL \A3|RW~95_combout\ : std_logic;
SIGNAL \A3|RW~96_combout\ : std_logic;
SIGNAL \A3|RW~30feeder_combout\ : std_logic;
SIGNAL \A3|RW~30_q\ : std_logic;
SIGNAL \A3|RW~37_q\ : std_logic;
SIGNAL \A3|RW~16_q\ : std_logic;
SIGNAL \A3|RW~23feeder_combout\ : std_logic;
SIGNAL \A3|RW~23_q\ : std_logic;
SIGNAL \A3|RW~93_combout\ : std_logic;
SIGNAL \A3|RW~94_combout\ : std_logic;
SIGNAL \A3|RW~50feeder_combout\ : std_logic;
SIGNAL \A3|RW~50_q\ : std_logic;
SIGNAL \A3|RW~64_q\ : std_logic;
SIGNAL \A3|RW~43_q\ : std_logic;
SIGNAL \A3|RW~57feeder_combout\ : std_logic;
SIGNAL \A3|RW~57_q\ : std_logic;
SIGNAL \A3|RW~97_combout\ : std_logic;
SIGNAL \A3|RW~98_combout\ : std_logic;
SIGNAL \A3|Mux4~1_combout\ : std_logic;
SIGNAL \A3|RW~49feeder_combout\ : std_logic;
SIGNAL \A3|RW~49_q\ : std_logic;
SIGNAL \A3|RW~63_q\ : std_logic;
SIGNAL \A3|RW~42_q\ : std_logic;
SIGNAL \A3|RW~56feeder_combout\ : std_logic;
SIGNAL \A3|RW~56_q\ : std_logic;
SIGNAL \A3|RW~82_combout\ : std_logic;
SIGNAL \A3|RW~83_combout\ : std_logic;
SIGNAL \A3|RW~28feeder_combout\ : std_logic;
SIGNAL \A3|RW~28_q\ : std_logic;
SIGNAL \A3|RW~35_q\ : std_logic;
SIGNAL \A3|RW~14_q\ : std_logic;
SIGNAL \A3|RW~21feeder_combout\ : std_logic;
SIGNAL \A3|RW~21_q\ : std_logic;
SIGNAL \A3|RW~84_combout\ : std_logic;
SIGNAL \A3|RW~85_combout\ : std_logic;
SIGNAL \A3|RW~86_combout\ : std_logic;
SIGNAL \A3|RW~62_q\ : std_logic;
SIGNAL \A3|RW~48_q\ : std_logic;
SIGNAL \A3|RW~41_q\ : std_logic;
SIGNAL \A3|RW~55feeder_combout\ : std_logic;
SIGNAL \A3|RW~55_q\ : std_logic;
SIGNAL \A3|RW~77_combout\ : std_logic;
SIGNAL \A3|RW~78_combout\ : std_logic;
SIGNAL \A3|RW~34feeder_combout\ : std_logic;
SIGNAL \A3|RW~34_q\ : std_logic;
SIGNAL \A3|RW~27_q\ : std_logic;
SIGNAL \A3|RW~13_q\ : std_logic;
SIGNAL \A3|RW~20feeder_combout\ : std_logic;
SIGNAL \A3|RW~20_q\ : std_logic;
SIGNAL \A3|RW~79_combout\ : std_logic;
SIGNAL \A3|RW~80_combout\ : std_logic;
SIGNAL \A3|RW~81_combout\ : std_logic;
SIGNAL \A3|RW~46feeder_combout\ : std_logic;
SIGNAL \A3|RW~46_q\ : std_logic;
SIGNAL \A3|RW~60_q\ : std_logic;
SIGNAL \A3|RW~39_q\ : std_logic;
SIGNAL \A3|RW~53feeder_combout\ : std_logic;
SIGNAL \A3|RW~53_q\ : std_logic;
SIGNAL \A3|RW~67_combout\ : std_logic;
SIGNAL \A3|RW~68_combout\ : std_logic;
SIGNAL \A3|RW~32_q\ : std_logic;
SIGNAL \A3|RW~25_q\ : std_logic;
SIGNAL \A3|RW~11_q\ : std_logic;
SIGNAL \A3|RW~18feeder_combout\ : std_logic;
SIGNAL \A3|RW~18_q\ : std_logic;
SIGNAL \A3|RW~69_combout\ : std_logic;
SIGNAL \A3|RW~70_combout\ : std_logic;
SIGNAL \A3|RW~71_combout\ : std_logic;
SIGNAL \A3|RW~26feeder_combout\ : std_logic;
SIGNAL \A3|RW~26_q\ : std_logic;
SIGNAL \A3|RW~33_q\ : std_logic;
SIGNAL \A3|RW~12_q\ : std_logic;
SIGNAL \A3|RW~19feeder_combout\ : std_logic;
SIGNAL \A3|RW~19_q\ : std_logic;
SIGNAL \A3|RW~74_combout\ : std_logic;
SIGNAL \A3|RW~75_combout\ : std_logic;
SIGNAL \A3|RW~47feeder_combout\ : std_logic;
SIGNAL \A3|RW~47_q\ : std_logic;
SIGNAL \A3|RW~61_q\ : std_logic;
SIGNAL \A3|RW~40_q\ : std_logic;
SIGNAL \A3|RW~54feeder_combout\ : std_logic;
SIGNAL \A3|RW~54_q\ : std_logic;
SIGNAL \A3|RW~72_combout\ : std_logic;
SIGNAL \A3|RW~73_combout\ : std_logic;
SIGNAL \A3|RW~76_combout\ : std_logic;
SIGNAL \A3|Mux6~0_combout\ : std_logic;
SIGNAL \A3|Mux6~1_combout\ : std_logic;
SIGNAL \A3|Mux5~0_combout\ : std_logic;
SIGNAL \A3|Mux5~1_combout\ : std_logic;
SIGNAL \A3|Mux4~2_combout\ : std_logic;
SIGNAL \A3|Mux4~3_combout\ : std_logic;
SIGNAL \A3|Mux3~0_combout\ : std_logic;
SIGNAL \A3|Mux3~1_combout\ : std_logic;
SIGNAL \A3|Mux2~0_combout\ : std_logic;
SIGNAL \A3|Mux2~1_combout\ : std_logic;
SIGNAL \A3|Mux1~0_combout\ : std_logic;
SIGNAL \A3|Mux1~1_combout\ : std_logic;
SIGNAL \A3|Mux0~0_combout\ : std_logic;
SIGNAL \A3|Mux0~1_combout\ : std_logic;
SIGNAL \A3|display\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \A3|vehiculo_count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \A3|tiempo\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \A5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \A2|ALT_INV_categoria[1]~1_combout\ : std_logic;
SIGNAL \A0|ALT_INV_RGB[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_front_sensor~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_front_sensor <= front_sensor;
ww_id <= id;
ww_identificacion <= identificacion;
ww_back_sensor <= back_sensor;
ww_tx <= tx;
ww_address <= address;
semaforo_entrada <= ww_semaforo_entrada;
semaforo_final <= ww_semaforo_final;
talanquera_inicial <= ww_talanquera_inicial;
talanquera_final <= ww_talanquera_final;
led_verde <= ww_led_verde;
led_rojo <= ww_led_rojo;
alarm <= ww_alarm;
categoria_vehiculo <= ww_categoria_vehiculo;
tarifa_peaje <= ww_tarifa_peaje;
vehiculos <= ww_vehiculos;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\A5|ALT_INV_Mux0~0_combout\ <= NOT \A5|Mux0~0_combout\;
\A2|ALT_INV_categoria[1]~1_combout\ <= NOT \A2|categoria[1]~1_combout\;
\A0|ALT_INV_RGB[1]~0_combout\ <= NOT \A0|RGB[1]~0_combout\;
\ALT_INV_front_sensor~input_o\ <= NOT \front_sensor~input_o\;

-- Location: IOOBUF_X30_Y0_N23
\semaforo_entrada[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_entrada[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\semaforo_entrada[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_front_sensor~input_o\,
	devoe => ww_devoe,
	o => \semaforo_entrada[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\semaforo_entrada[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \front_sensor~input_o\,
	devoe => ww_devoe,
	o => \semaforo_entrada[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\semaforo_final[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_final[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\semaforo_final[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|RGB[1]~0_combout\,
	devoe => ww_devoe,
	o => \semaforo_final[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\semaforo_final[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|ALT_INV_RGB[1]~0_combout\,
	devoe => ww_devoe,
	o => \semaforo_final[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\talanquera_inicial~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \talanquera_inicial~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\talanquera_final~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \talanquera_final~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\led_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A4|led_verde~combout\,
	devoe => ww_devoe,
	o => \led_verde~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\led_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A4|estado_presente.salida_noaprobada~q\,
	devoe => ww_devoe,
	o => \led_rojo~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\alarm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alarm~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\categoria_vehiculo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|categoria[0]~0_combout\,
	devoe => ww_devoe,
	o => \categoria_vehiculo[0]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\categoria_vehiculo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|categoria[1]~1_combout\,
	devoe => ww_devoe,
	o => \categoria_vehiculo[1]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\tarifa_peaje[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|categoria[0]~0_combout\,
	devoe => ww_devoe,
	o => \tarifa_peaje[0]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\tarifa_peaje[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tarifa_peaje[1]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\tarifa_peaje[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \tarifa_peaje[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\tarifa_peaje[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|categoria[0]~0_combout\,
	devoe => ww_devoe,
	o => \tarifa_peaje[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\tarifa_peaje[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|categoria[0]~0_combout\,
	devoe => ww_devoe,
	o => \tarifa_peaje[4]~output_o\);

-- Location: IOOBUF_X34_Y16_N9
\tarifa_peaje[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A5|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \tarifa_peaje[5]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\tarifa_peaje[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_categoria[1]~1_combout\,
	devoe => ww_devoe,
	o => \tarifa_peaje[6]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\vehiculos[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|display\(0),
	devoe => ww_devoe,
	o => \vehiculos[0]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\vehiculos[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|display\(1),
	devoe => ww_devoe,
	o => \vehiculos[1]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\vehiculos[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|display\(2),
	devoe => ww_devoe,
	o => \vehiculos[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\vehiculos[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|display\(3),
	devoe => ww_devoe,
	o => \vehiculos[3]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\vehiculos[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|display\(4),
	devoe => ww_devoe,
	o => \vehiculos[4]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\vehiculos[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|display\(5),
	devoe => ww_devoe,
	o => \vehiculos[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\vehiculos[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|display\(6),
	devoe => ww_devoe,
	o => \vehiculos[6]~output_o\);

-- Location: IOIBUF_X34_Y9_N15
\front_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor,
	o => \front_sensor~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\back_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_back_sensor,
	o => \back_sensor~input_o\);

-- Location: IOIBUF_X34_Y16_N1
\id~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_id,
	o => \id~input_o\);

-- Location: LCCOMB_X33_Y15_N24
\A0|RGB[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|RGB[1]~0_combout\ = (!\back_sensor~input_o\ & \id~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datad => \id~input_o\,
	combout => \A0|RGB[1]~0_combout\);

-- Location: IOIBUF_X0_Y11_N1
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

-- Location: LCCOMB_X33_Y15_N20
\A4|estado_siguiente.reinicio_sistema~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|estado_siguiente.reinicio_sistema~0_combout\ = (\back_sensor~input_o\ & ((\A4|estado_presente.salida_aprobada~q\) # (\A4|estado_presente.reinicio_sistema~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datab => \A4|estado_presente.salida_aprobada~q\,
	datac => \A4|estado_presente.reinicio_sistema~q\,
	combout => \A4|estado_siguiente.reinicio_sistema~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
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

-- Location: FF_X33_Y15_N21
\A4|estado_presente.reinicio_sistema\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A4|estado_siguiente.reinicio_sistema~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A4|estado_presente.reinicio_sistema~q\);

-- Location: LCCOMB_X33_Y15_N22
\A4|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|Selector0~0_combout\ = (\back_sensor~input_o\ & ((\front_sensor~input_o\) # ((\A4|estado_presente.inicio~q\)))) # (!\back_sensor~input_o\ & (!\A4|estado_presente.reinicio_sistema~q\ & ((\front_sensor~input_o\) # (\A4|estado_presente.inicio~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datab => \front_sensor~input_o\,
	datac => \A4|estado_presente.inicio~q\,
	datad => \A4|estado_presente.reinicio_sistema~q\,
	combout => \A4|Selector0~0_combout\);

-- Location: FF_X33_Y15_N23
\A4|estado_presente.inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A4|Selector0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A4|estado_presente.inicio~q\);

-- Location: LCCOMB_X33_Y15_N8
\A4|estado_siguiente.vehiculo_detectado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|estado_siguiente.vehiculo_detectado~0_combout\ = (\front_sensor~input_o\ & !\A4|estado_presente.inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \front_sensor~input_o\,
	datac => \A4|estado_presente.inicio~q\,
	combout => \A4|estado_siguiente.vehiculo_detectado~0_combout\);

-- Location: FF_X33_Y15_N9
\A4|estado_presente.vehiculo_detectado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A4|estado_siguiente.vehiculo_detectado~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A4|estado_presente.vehiculo_detectado~q\);

-- Location: LCCOMB_X33_Y15_N12
\A4|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|Selector2~0_combout\ = (!\id~input_o\ & ((\A4|estado_presente.vehiculo_detectado~q\) # (\A4|estado_presente.salida_noaprobada~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A4|estado_presente.vehiculo_detectado~q\,
	datac => \A4|estado_presente.salida_noaprobada~q\,
	datad => \id~input_o\,
	combout => \A4|Selector2~0_combout\);

-- Location: FF_X33_Y15_N13
\A4|estado_presente.salida_noaprobada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A4|Selector2~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A4|estado_presente.salida_noaprobada~q\);

-- Location: LCCOMB_X33_Y15_N6
\A4|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|Selector1~0_combout\ = (!\back_sensor~input_o\ & \A4|estado_presente.salida_aprobada~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datad => \A4|estado_presente.salida_aprobada~q\,
	combout => \A4|Selector1~0_combout\);

-- Location: LCCOMB_X33_Y15_N10
\A4|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|Selector1~1_combout\ = (\A4|Selector1~0_combout\) # ((\id~input_o\ & ((\A4|estado_presente.salida_noaprobada~q\) # (\A4|estado_presente.vehiculo_detectado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|estado_presente.salida_noaprobada~q\,
	datab => \id~input_o\,
	datac => \A4|estado_presente.vehiculo_detectado~q\,
	datad => \A4|Selector1~0_combout\,
	combout => \A4|Selector1~1_combout\);

-- Location: FF_X33_Y15_N11
\A4|estado_presente.salida_aprobada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A4|Selector1~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A4|estado_presente.salida_aprobada~q\);

-- Location: LCCOMB_X33_Y15_N18
\A4|led_verde\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|led_verde~combout\ = (\A4|estado_presente.salida_aprobada~q\) # (\A4|estado_presente.reinicio_sistema~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A4|estado_presente.salida_aprobada~q\,
	datad => \A4|estado_presente.reinicio_sistema~q\,
	combout => \A4|led_verde~combout\);

-- Location: IOIBUF_X34_Y11_N1
\identificacion[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(3),
	o => \identificacion[3]~input_o\);

-- Location: LCCOMB_X33_Y15_N26
\A2|categoria[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|categoria[0]~0_combout\ = (\identificacion[3]~input_o\ & \front_sensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificacion[3]~input_o\,
	datac => \front_sensor~input_o\,
	combout => \A2|categoria[0]~0_combout\);

-- Location: IOIBUF_X34_Y17_N1
\identificacion[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(4),
	o => \identificacion[4]~input_o\);

-- Location: LCCOMB_X33_Y15_N4
\A2|categoria[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|categoria[1]~1_combout\ = (\front_sensor~input_o\ & \identificacion[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \front_sensor~input_o\,
	datad => \identificacion[4]~input_o\,
	combout => \A2|categoria[1]~1_combout\);

-- Location: LCCOMB_X33_Y15_N14
\A5|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mux0~0_combout\ = (\identificacion[3]~input_o\) # ((!\identificacion[4]~input_o\) # (!\front_sensor~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificacion[3]~input_o\,
	datac => \front_sensor~input_o\,
	datad => \identificacion[4]~input_o\,
	combout => \A5|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y15_N16
\A5|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mux0~1_combout\ = (\front_sensor~input_o\ & (\identificacion[3]~input_o\ $ (\identificacion[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificacion[3]~input_o\,
	datac => \front_sensor~input_o\,
	datad => \identificacion[4]~input_o\,
	combout => \A5|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y13_N0
\A3|vehiculo_count[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|vehiculo_count[0]~7_combout\ = \A3|vehiculo_count\(0) $ (VCC)
-- \A3|vehiculo_count[0]~8\ = CARRY(\A3|vehiculo_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3|vehiculo_count\(0),
	datad => VCC,
	combout => \A3|vehiculo_count[0]~7_combout\,
	cout => \A3|vehiculo_count[0]~8\);

-- Location: LCCOMB_X30_Y14_N12
\A3|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~0_combout\ = \A3|tiempo\(0) $ (VCC)
-- \A3|Add1~1\ = CARRY(\A3|tiempo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(0),
	datad => VCC,
	combout => \A3|Add1~0_combout\,
	cout => \A3|Add1~1\);

-- Location: FF_X30_Y14_N13
\A3|tiempo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(0));

-- Location: LCCOMB_X30_Y14_N14
\A3|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~2_combout\ = (\A3|tiempo\(1) & (!\A3|Add1~1\)) # (!\A3|tiempo\(1) & ((\A3|Add1~1\) # (GND)))
-- \A3|Add1~3\ = CARRY((!\A3|Add1~1\) # (!\A3|tiempo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|tiempo\(1),
	datad => VCC,
	cin => \A3|Add1~1\,
	combout => \A3|Add1~2_combout\,
	cout => \A3|Add1~3\);

-- Location: FF_X30_Y14_N15
\A3|tiempo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(1));

-- Location: LCCOMB_X30_Y14_N16
\A3|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~4_combout\ = (\A3|tiempo\(2) & (\A3|Add1~3\ $ (GND))) # (!\A3|tiempo\(2) & (!\A3|Add1~3\ & VCC))
-- \A3|Add1~5\ = CARRY((\A3|tiempo\(2) & !\A3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|tiempo\(2),
	datad => VCC,
	cin => \A3|Add1~3\,
	combout => \A3|Add1~4_combout\,
	cout => \A3|Add1~5\);

-- Location: FF_X30_Y14_N17
\A3|tiempo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(2));

-- Location: LCCOMB_X30_Y14_N18
\A3|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~6_combout\ = (\A3|tiempo\(3) & (!\A3|Add1~5\)) # (!\A3|tiempo\(3) & ((\A3|Add1~5\) # (GND)))
-- \A3|Add1~7\ = CARRY((!\A3|Add1~5\) # (!\A3|tiempo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|tiempo\(3),
	datad => VCC,
	cin => \A3|Add1~5\,
	combout => \A3|Add1~6_combout\,
	cout => \A3|Add1~7\);

-- Location: FF_X30_Y14_N19
\A3|tiempo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(3));

-- Location: LCCOMB_X30_Y14_N8
\A3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Equal0~0_combout\ = (\A3|tiempo\(0) & (\A3|tiempo\(2) & (\A3|tiempo\(1) & \A3|tiempo\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(0),
	datab => \A3|tiempo\(2),
	datac => \A3|tiempo\(1),
	datad => \A3|tiempo\(3),
	combout => \A3|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y14_N20
\A3|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~8_combout\ = (\A3|tiempo\(4) & (\A3|Add1~7\ $ (GND))) # (!\A3|tiempo\(4) & (!\A3|Add1~7\ & VCC))
-- \A3|Add1~9\ = CARRY((\A3|tiempo\(4) & !\A3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|tiempo\(4),
	datad => VCC,
	cin => \A3|Add1~7\,
	combout => \A3|Add1~8_combout\,
	cout => \A3|Add1~9\);

-- Location: FF_X30_Y14_N21
\A3|tiempo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(4));

-- Location: LCCOMB_X30_Y14_N22
\A3|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~10_combout\ = (\A3|tiempo\(5) & (!\A3|Add1~9\)) # (!\A3|tiempo\(5) & ((\A3|Add1~9\) # (GND)))
-- \A3|Add1~11\ = CARRY((!\A3|Add1~9\) # (!\A3|tiempo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(5),
	datad => VCC,
	cin => \A3|Add1~9\,
	combout => \A3|Add1~10_combout\,
	cout => \A3|Add1~11\);

-- Location: FF_X30_Y14_N23
\A3|tiempo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(5));

-- Location: LCCOMB_X30_Y14_N24
\A3|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~12_combout\ = (\A3|tiempo\(6) & (\A3|Add1~11\ $ (GND))) # (!\A3|tiempo\(6) & (!\A3|Add1~11\ & VCC))
-- \A3|Add1~13\ = CARRY((\A3|tiempo\(6) & !\A3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|tiempo\(6),
	datad => VCC,
	cin => \A3|Add1~11\,
	combout => \A3|Add1~12_combout\,
	cout => \A3|Add1~13\);

-- Location: LCCOMB_X30_Y14_N0
\A3|tiempo~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|tiempo~6_combout\ = (\A3|Add1~12_combout\ & ((!\A3|Equal0~5_combout\) # (!\A3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3|Add1~12_combout\,
	datac => \A3|Equal0~0_combout\,
	datad => \A3|Equal0~5_combout\,
	combout => \A3|tiempo~6_combout\);

-- Location: FF_X30_Y14_N1
\A3|tiempo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|tiempo~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(6));

-- Location: LCCOMB_X30_Y14_N26
\A3|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~14_combout\ = (\A3|tiempo\(7) & (!\A3|Add1~13\)) # (!\A3|tiempo\(7) & ((\A3|Add1~13\) # (GND)))
-- \A3|Add1~15\ = CARRY((!\A3|Add1~13\) # (!\A3|tiempo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(7),
	datad => VCC,
	cin => \A3|Add1~13\,
	combout => \A3|Add1~14_combout\,
	cout => \A3|Add1~15\);

-- Location: FF_X30_Y14_N27
\A3|tiempo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(7));

-- Location: LCCOMB_X30_Y14_N28
\A3|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~16_combout\ = (\A3|tiempo\(8) & (\A3|Add1~15\ $ (GND))) # (!\A3|tiempo\(8) & (!\A3|Add1~15\ & VCC))
-- \A3|Add1~17\ = CARRY((\A3|tiempo\(8) & !\A3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|tiempo\(8),
	datad => VCC,
	cin => \A3|Add1~15\,
	combout => \A3|Add1~16_combout\,
	cout => \A3|Add1~17\);

-- Location: FF_X30_Y14_N29
\A3|tiempo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(8));

-- Location: LCCOMB_X30_Y14_N30
\A3|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~18_combout\ = (\A3|tiempo\(9) & (!\A3|Add1~17\)) # (!\A3|tiempo\(9) & ((\A3|Add1~17\) # (GND)))
-- \A3|Add1~19\ = CARRY((!\A3|Add1~17\) # (!\A3|tiempo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(9),
	datad => VCC,
	cin => \A3|Add1~17\,
	combout => \A3|Add1~18_combout\,
	cout => \A3|Add1~19\);

-- Location: LCCOMB_X30_Y14_N10
\A3|tiempo~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|tiempo~5_combout\ = (\A3|Add1~18_combout\ & ((!\A3|Equal0~5_combout\) # (!\A3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3|Equal0~0_combout\,
	datac => \A3|Add1~18_combout\,
	datad => \A3|Equal0~5_combout\,
	combout => \A3|tiempo~5_combout\);

-- Location: FF_X30_Y14_N11
\A3|tiempo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|tiempo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(9));

-- Location: LCCOMB_X30_Y13_N0
\A3|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~20_combout\ = (\A3|tiempo\(10) & (\A3|Add1~19\ $ (GND))) # (!\A3|tiempo\(10) & (!\A3|Add1~19\ & VCC))
-- \A3|Add1~21\ = CARRY((\A3|tiempo\(10) & !\A3|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|tiempo\(10),
	datad => VCC,
	cin => \A3|Add1~19\,
	combout => \A3|Add1~20_combout\,
	cout => \A3|Add1~21\);

-- Location: FF_X30_Y13_N1
\A3|tiempo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(10));

-- Location: LCCOMB_X30_Y13_N2
\A3|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~22_combout\ = (\A3|tiempo\(11) & (!\A3|Add1~21\)) # (!\A3|tiempo\(11) & ((\A3|Add1~21\) # (GND)))
-- \A3|Add1~23\ = CARRY((!\A3|Add1~21\) # (!\A3|tiempo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|tiempo\(11),
	datad => VCC,
	cin => \A3|Add1~21\,
	combout => \A3|Add1~22_combout\,
	cout => \A3|Add1~23\);

-- Location: FF_X30_Y13_N3
\A3|tiempo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(11));

-- Location: LCCOMB_X30_Y13_N4
\A3|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~24_combout\ = (\A3|tiempo\(12) & (\A3|Add1~23\ $ (GND))) # (!\A3|tiempo\(12) & (!\A3|Add1~23\ & VCC))
-- \A3|Add1~25\ = CARRY((\A3|tiempo\(12) & !\A3|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|tiempo\(12),
	datad => VCC,
	cin => \A3|Add1~23\,
	combout => \A3|Add1~24_combout\,
	cout => \A3|Add1~25\);

-- Location: FF_X30_Y13_N5
\A3|tiempo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(12));

-- Location: LCCOMB_X30_Y13_N6
\A3|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~26_combout\ = (\A3|tiempo\(13) & (!\A3|Add1~25\)) # (!\A3|tiempo\(13) & ((\A3|Add1~25\) # (GND)))
-- \A3|Add1~27\ = CARRY((!\A3|Add1~25\) # (!\A3|tiempo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(13),
	datad => VCC,
	cin => \A3|Add1~25\,
	combout => \A3|Add1~26_combout\,
	cout => \A3|Add1~27\);

-- Location: FF_X30_Y13_N7
\A3|tiempo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(13));

-- Location: LCCOMB_X30_Y13_N8
\A3|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~28_combout\ = (\A3|tiempo\(14) & (\A3|Add1~27\ $ (GND))) # (!\A3|tiempo\(14) & (!\A3|Add1~27\ & VCC))
-- \A3|Add1~29\ = CARRY((\A3|tiempo\(14) & !\A3|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|tiempo\(14),
	datad => VCC,
	cin => \A3|Add1~27\,
	combout => \A3|Add1~28_combout\,
	cout => \A3|Add1~29\);

-- Location: LCCOMB_X30_Y13_N24
\A3|tiempo~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|tiempo~4_combout\ = (\A3|Add1~28_combout\ & ((!\A3|Equal0~5_combout\) # (!\A3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Equal0~0_combout\,
	datac => \A3|Add1~28_combout\,
	datad => \A3|Equal0~5_combout\,
	combout => \A3|tiempo~4_combout\);

-- Location: FF_X30_Y13_N25
\A3|tiempo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|tiempo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(14));

-- Location: LCCOMB_X30_Y13_N10
\A3|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~30_combout\ = (\A3|tiempo\(15) & (!\A3|Add1~29\)) # (!\A3|tiempo\(15) & ((\A3|Add1~29\) # (GND)))
-- \A3|Add1~31\ = CARRY((!\A3|Add1~29\) # (!\A3|tiempo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(15),
	datad => VCC,
	cin => \A3|Add1~29\,
	combout => \A3|Add1~30_combout\,
	cout => \A3|Add1~31\);

-- Location: FF_X30_Y13_N11
\A3|tiempo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(15));

-- Location: LCCOMB_X30_Y13_N12
\A3|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~32_combout\ = (\A3|tiempo\(16) & (\A3|Add1~31\ $ (GND))) # (!\A3|tiempo\(16) & (!\A3|Add1~31\ & VCC))
-- \A3|Add1~33\ = CARRY((\A3|tiempo\(16) & !\A3|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(16),
	datad => VCC,
	cin => \A3|Add1~31\,
	combout => \A3|Add1~32_combout\,
	cout => \A3|Add1~33\);

-- Location: LCCOMB_X30_Y13_N30
\A3|tiempo~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|tiempo~3_combout\ = (\A3|Add1~32_combout\ & ((!\A3|Equal0~0_combout\) # (!\A3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3|Equal0~5_combout\,
	datac => \A3|Equal0~0_combout\,
	datad => \A3|Add1~32_combout\,
	combout => \A3|tiempo~3_combout\);

-- Location: FF_X30_Y13_N31
\A3|tiempo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|tiempo~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(16));

-- Location: LCCOMB_X30_Y13_N14
\A3|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~34_combout\ = (\A3|tiempo\(17) & (!\A3|Add1~33\)) # (!\A3|tiempo\(17) & ((\A3|Add1~33\) # (GND)))
-- \A3|Add1~35\ = CARRY((!\A3|Add1~33\) # (!\A3|tiempo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|tiempo\(17),
	datad => VCC,
	cin => \A3|Add1~33\,
	combout => \A3|Add1~34_combout\,
	cout => \A3|Add1~35\);

-- Location: LCCOMB_X30_Y13_N20
\A3|tiempo~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|tiempo~2_combout\ = (\A3|Add1~34_combout\ & ((!\A3|Equal0~5_combout\) # (!\A3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Equal0~0_combout\,
	datac => \A3|Add1~34_combout\,
	datad => \A3|Equal0~5_combout\,
	combout => \A3|tiempo~2_combout\);

-- Location: FF_X30_Y13_N21
\A3|tiempo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|tiempo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(17));

-- Location: LCCOMB_X30_Y13_N16
\A3|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~36_combout\ = (\A3|tiempo\(18) & (\A3|Add1~35\ $ (GND))) # (!\A3|tiempo\(18) & (!\A3|Add1~35\ & VCC))
-- \A3|Add1~37\ = CARRY((\A3|tiempo\(18) & !\A3|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(18),
	datad => VCC,
	cin => \A3|Add1~35\,
	combout => \A3|Add1~36_combout\,
	cout => \A3|Add1~37\);

-- Location: LCCOMB_X30_Y13_N26
\A3|tiempo~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|tiempo~1_combout\ = (\A3|Add1~36_combout\ & ((!\A3|Equal0~0_combout\) # (!\A3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3|Equal0~5_combout\,
	datac => \A3|Equal0~0_combout\,
	datad => \A3|Add1~36_combout\,
	combout => \A3|tiempo~1_combout\);

-- Location: FF_X30_Y13_N27
\A3|tiempo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|tiempo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(18));

-- Location: LCCOMB_X30_Y13_N18
\A3|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Add1~38_combout\ = \A3|Add1~37\ $ (\A3|tiempo\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A3|tiempo\(19),
	cin => \A3|Add1~37\,
	combout => \A3|Add1~38_combout\);

-- Location: LCCOMB_X30_Y13_N28
\A3|tiempo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|tiempo~0_combout\ = (\A3|Add1~38_combout\ & ((!\A3|Equal0~0_combout\) # (!\A3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3|Equal0~5_combout\,
	datac => \A3|Equal0~0_combout\,
	datad => \A3|Add1~38_combout\,
	combout => \A3|tiempo~0_combout\);

-- Location: FF_X30_Y13_N29
\A3|tiempo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|tiempo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|tiempo\(19));

-- Location: LCCOMB_X29_Y13_N26
\A3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Equal0~1_combout\ = (\A3|tiempo\(16) & (\A3|tiempo\(18) & (\A3|tiempo\(17) & \A3|tiempo\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(16),
	datab => \A3|tiempo\(18),
	datac => \A3|tiempo\(17),
	datad => \A3|tiempo\(19),
	combout => \A3|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y13_N22
\A3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Equal0~2_combout\ = (!\A3|tiempo\(15) & (\A3|tiempo\(14) & (!\A3|tiempo\(12) & !\A3|tiempo\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(15),
	datab => \A3|tiempo\(14),
	datac => \A3|tiempo\(12),
	datad => \A3|tiempo\(13),
	combout => \A3|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y13_N28
\A3|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Equal0~3_combout\ = (!\A3|tiempo\(11) & (!\A3|tiempo\(10) & (!\A3|tiempo\(8) & \A3|tiempo\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(11),
	datab => \A3|tiempo\(10),
	datac => \A3|tiempo\(8),
	datad => \A3|tiempo\(9),
	combout => \A3|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y14_N6
\A3|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Equal0~4_combout\ = (\A3|tiempo\(5) & (\A3|tiempo\(4) & (!\A3|tiempo\(7) & !\A3|tiempo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|tiempo\(5),
	datab => \A3|tiempo\(4),
	datac => \A3|tiempo\(7),
	datad => \A3|tiempo\(6),
	combout => \A3|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y13_N18
\A3|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Equal0~5_combout\ = (\A3|Equal0~1_combout\ & (\A3|Equal0~2_combout\ & (\A3|Equal0~3_combout\ & \A3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Equal0~1_combout\,
	datab => \A3|Equal0~2_combout\,
	datac => \A3|Equal0~3_combout\,
	datad => \A3|Equal0~4_combout\,
	combout => \A3|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y13_N24
\A3|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Equal0~6_combout\ = (\A3|Equal0~0_combout\ & \A3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|Equal0~0_combout\,
	datad => \A3|Equal0~5_combout\,
	combout => \A3|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y13_N22
\A3|vehiculo_count[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|vehiculo_count[0]~9_combout\ = (\back_sensor~input_o\) # ((\A3|Equal0~0_combout\ & \A3|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \back_sensor~input_o\,
	datac => \A3|Equal0~0_combout\,
	datad => \A3|Equal0~5_combout\,
	combout => \A3|vehiculo_count[0]~9_combout\);

-- Location: FF_X29_Y13_N1
\A3|vehiculo_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|vehiculo_count[0]~7_combout\,
	sclr => \A3|Equal0~6_combout\,
	ena => \A3|vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|vehiculo_count\(0));

-- Location: LCCOMB_X29_Y13_N2
\A3|vehiculo_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|vehiculo_count[1]~10_combout\ = (\A3|vehiculo_count\(1) & (!\A3|vehiculo_count[0]~8\)) # (!\A3|vehiculo_count\(1) & ((\A3|vehiculo_count[0]~8\) # (GND)))
-- \A3|vehiculo_count[1]~11\ = CARRY((!\A3|vehiculo_count[0]~8\) # (!\A3|vehiculo_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|vehiculo_count\(1),
	datad => VCC,
	cin => \A3|vehiculo_count[0]~8\,
	combout => \A3|vehiculo_count[1]~10_combout\,
	cout => \A3|vehiculo_count[1]~11\);

-- Location: FF_X29_Y13_N3
\A3|vehiculo_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|vehiculo_count[1]~10_combout\,
	sclr => \A3|Equal0~6_combout\,
	ena => \A3|vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|vehiculo_count\(1));

-- Location: LCCOMB_X29_Y13_N4
\A3|vehiculo_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|vehiculo_count[2]~12_combout\ = (\A3|vehiculo_count\(2) & (\A3|vehiculo_count[1]~11\ $ (GND))) # (!\A3|vehiculo_count\(2) & (!\A3|vehiculo_count[1]~11\ & VCC))
-- \A3|vehiculo_count[2]~13\ = CARRY((\A3|vehiculo_count\(2) & !\A3|vehiculo_count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|vehiculo_count\(2),
	datad => VCC,
	cin => \A3|vehiculo_count[1]~11\,
	combout => \A3|vehiculo_count[2]~12_combout\,
	cout => \A3|vehiculo_count[2]~13\);

-- Location: FF_X29_Y13_N5
\A3|vehiculo_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|vehiculo_count[2]~12_combout\,
	sclr => \A3|Equal0~6_combout\,
	ena => \A3|vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|vehiculo_count\(2));

-- Location: LCCOMB_X29_Y13_N6
\A3|vehiculo_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|vehiculo_count[3]~14_combout\ = (\A3|vehiculo_count\(3) & (!\A3|vehiculo_count[2]~13\)) # (!\A3|vehiculo_count\(3) & ((\A3|vehiculo_count[2]~13\) # (GND)))
-- \A3|vehiculo_count[3]~15\ = CARRY((!\A3|vehiculo_count[2]~13\) # (!\A3|vehiculo_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A3|vehiculo_count\(3),
	datad => VCC,
	cin => \A3|vehiculo_count[2]~13\,
	combout => \A3|vehiculo_count[3]~14_combout\,
	cout => \A3|vehiculo_count[3]~15\);

-- Location: FF_X29_Y13_N7
\A3|vehiculo_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|vehiculo_count[3]~14_combout\,
	sclr => \A3|Equal0~6_combout\,
	ena => \A3|vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|vehiculo_count\(3));

-- Location: LCCOMB_X29_Y13_N8
\A3|vehiculo_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|vehiculo_count[4]~16_combout\ = (\A3|vehiculo_count\(4) & (\A3|vehiculo_count[3]~15\ $ (GND))) # (!\A3|vehiculo_count\(4) & (!\A3|vehiculo_count[3]~15\ & VCC))
-- \A3|vehiculo_count[4]~17\ = CARRY((\A3|vehiculo_count\(4) & !\A3|vehiculo_count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A3|vehiculo_count\(4),
	datad => VCC,
	cin => \A3|vehiculo_count[3]~15\,
	combout => \A3|vehiculo_count[4]~16_combout\,
	cout => \A3|vehiculo_count[4]~17\);

-- Location: FF_X29_Y13_N9
\A3|vehiculo_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|vehiculo_count[4]~16_combout\,
	sclr => \A3|Equal0~6_combout\,
	ena => \A3|vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|vehiculo_count\(4));

-- Location: LCCOMB_X29_Y13_N10
\A3|vehiculo_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|vehiculo_count[5]~18_combout\ = (\A3|vehiculo_count\(5) & (!\A3|vehiculo_count[4]~17\)) # (!\A3|vehiculo_count\(5) & ((\A3|vehiculo_count[4]~17\) # (GND)))
-- \A3|vehiculo_count[5]~19\ = CARRY((!\A3|vehiculo_count[4]~17\) # (!\A3|vehiculo_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A3|vehiculo_count\(5),
	datad => VCC,
	cin => \A3|vehiculo_count[4]~17\,
	combout => \A3|vehiculo_count[5]~18_combout\,
	cout => \A3|vehiculo_count[5]~19\);

-- Location: FF_X29_Y13_N11
\A3|vehiculo_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|vehiculo_count[5]~18_combout\,
	sclr => \A3|Equal0~6_combout\,
	ena => \A3|vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|vehiculo_count\(5));

-- Location: LCCOMB_X29_Y13_N12
\A3|vehiculo_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|vehiculo_count[6]~20_combout\ = \A3|vehiculo_count[5]~19\ $ (!\A3|vehiculo_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A3|vehiculo_count\(6),
	cin => \A3|vehiculo_count[5]~19\,
	combout => \A3|vehiculo_count[6]~20_combout\);

-- Location: FF_X29_Y13_N13
\A3|vehiculo_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|vehiculo_count[6]~20_combout\,
	sclr => \A3|Equal0~6_combout\,
	ena => \A3|vehiculo_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|vehiculo_count\(6));

-- Location: LCCOMB_X30_Y15_N4
\A3|RW~31feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~31feeder_combout\ = \A3|vehiculo_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A3|vehiculo_count\(6),
	combout => \A3|RW~31feeder_combout\);

-- Location: IOIBUF_X34_Y17_N22
\address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X34_Y19_N8
\address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: LCCOMB_X29_Y20_N4
\A3|RW~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~103_combout\ = (\back_sensor~input_o\ & (!\address[2]~input_o\ & (!\address[0]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \A3|RW~103_combout\);

-- Location: FF_X30_Y15_N5
\A3|RW~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~31feeder_combout\,
	ena => \A3|RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~31_q\);

-- Location: LCCOMB_X33_Y15_N28
\A3|RW~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~106_combout\ = (\back_sensor~input_o\ & (!\address[2]~input_o\ & (\address[0]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \A3|RW~106_combout\);

-- Location: FF_X29_Y15_N31
\A3|RW~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(6),
	sload => VCC,
	ena => \A3|RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~38_q\);

-- Location: LCCOMB_X29_Y15_N10
\A3|RW~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~105_combout\ = (\back_sensor~input_o\ & (!\address[0]~input_o\ & (!\address[2]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \back_sensor~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[1]~input_o\,
	combout => \A3|RW~105_combout\);

-- Location: FF_X29_Y15_N21
\A3|RW~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(6),
	sload => VCC,
	ena => \A3|RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~17_q\);

-- Location: LCCOMB_X28_Y15_N18
\A3|RW~24feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~24feeder_combout\ = \A3|vehiculo_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A3|vehiculo_count\(6),
	combout => \A3|RW~24feeder_combout\);

-- Location: LCCOMB_X28_Y15_N6
\A3|RW~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~104_combout\ = (\address[0]~input_o\ & (!\address[2]~input_o\ & (\back_sensor~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \back_sensor~input_o\,
	datad => \address[1]~input_o\,
	combout => \A3|RW~104_combout\);

-- Location: FF_X28_Y15_N19
\A3|RW~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~24feeder_combout\,
	ena => \A3|RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~24_q\);

-- Location: LCCOMB_X29_Y15_N20
\A3|RW~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~91_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\A3|RW~24_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\A3|RW~17_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~17_q\,
	datad => \A3|RW~24_q\,
	combout => \A3|RW~91_combout\);

-- Location: LCCOMB_X29_Y15_N30
\A3|RW~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~92_combout\ = (\address[1]~input_o\ & ((\A3|RW~91_combout\ & ((\A3|RW~38_q\))) # (!\A3|RW~91_combout\ & (\A3|RW~31_q\)))) # (!\address[1]~input_o\ & (((\A3|RW~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~31_q\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~38_q\,
	datad => \A3|RW~91_combout\,
	combout => \A3|RW~92_combout\);

-- Location: LCCOMB_X30_Y15_N14
\A3|RW~51feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~51feeder_combout\ = \A3|vehiculo_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(5),
	combout => \A3|RW~51feeder_combout\);

-- Location: LCCOMB_X28_Y15_N26
\A3|RW~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~99_combout\ = (\address[0]~input_o\ & (\address[2]~input_o\ & (\back_sensor~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \back_sensor~input_o\,
	datad => \address[1]~input_o\,
	combout => \A3|RW~99_combout\);

-- Location: FF_X30_Y15_N15
\A3|RW~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~51feeder_combout\,
	ena => \A3|RW~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~51_q\);

-- Location: LCCOMB_X28_Y15_N0
\A3|RW~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~102_combout\ = (\address[0]~input_o\ & (\address[2]~input_o\ & (\back_sensor~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \back_sensor~input_o\,
	datad => \address[1]~input_o\,
	combout => \A3|RW~102_combout\);

-- Location: FF_X32_Y15_N5
\A3|RW~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(5),
	sload => VCC,
	ena => \A3|RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~65_q\);

-- Location: LCCOMB_X28_Y15_N10
\A3|RW~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~101_combout\ = (!\address[0]~input_o\ & (\address[2]~input_o\ & (\back_sensor~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \back_sensor~input_o\,
	datad => \address[1]~input_o\,
	combout => \A3|RW~101_combout\);

-- Location: FF_X26_Y15_N31
\A3|RW~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(5),
	sload => VCC,
	ena => \A3|RW~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~44_q\);

-- Location: LCCOMB_X26_Y15_N20
\A3|RW~58feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~58feeder_combout\ = \A3|vehiculo_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(5),
	combout => \A3|RW~58feeder_combout\);

-- Location: LCCOMB_X28_Y15_N16
\A3|RW~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~100_combout\ = (!\address[0]~input_o\ & (\address[2]~input_o\ & (\back_sensor~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \back_sensor~input_o\,
	datad => \address[1]~input_o\,
	combout => \A3|RW~100_combout\);

-- Location: FF_X26_Y15_N21
\A3|RW~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~58feeder_combout\,
	ena => \A3|RW~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~58_q\);

-- Location: LCCOMB_X26_Y15_N30
\A3|RW~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~89_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\A3|RW~58_q\))) # (!\address[1]~input_o\ & (\A3|RW~44_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~44_q\,
	datad => \A3|RW~58_q\,
	combout => \A3|RW~89_combout\);

-- Location: LCCOMB_X32_Y15_N4
\A3|RW~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~90_combout\ = (\address[0]~input_o\ & ((\A3|RW~89_combout\ & ((\A3|RW~65_q\))) # (!\A3|RW~89_combout\ & (\A3|RW~51_q\)))) # (!\address[0]~input_o\ & (((\A3|RW~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \A3|RW~51_q\,
	datac => \A3|RW~65_q\,
	datad => \A3|RW~89_combout\,
	combout => \A3|RW~90_combout\);

-- Location: LCCOMB_X30_Y15_N24
\A3|RW~52feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~52feeder_combout\ = \A3|vehiculo_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A3|vehiculo_count\(6),
	combout => \A3|RW~52feeder_combout\);

-- Location: FF_X30_Y15_N25
\A3|RW~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~52feeder_combout\,
	ena => \A3|RW~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~52_q\);

-- Location: FF_X32_Y15_N11
\A3|RW~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(6),
	sload => VCC,
	ena => \A3|RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~66_q\);

-- Location: FF_X26_Y15_N7
\A3|RW~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(6),
	sload => VCC,
	ena => \A3|RW~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~45_q\);

-- Location: LCCOMB_X26_Y15_N16
\A3|RW~59feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~59feeder_combout\ = \A3|vehiculo_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(6),
	combout => \A3|RW~59feeder_combout\);

-- Location: FF_X26_Y15_N17
\A3|RW~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~59feeder_combout\,
	ena => \A3|RW~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~59_q\);

-- Location: LCCOMB_X26_Y15_N6
\A3|RW~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~87_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\A3|RW~59_q\))) # (!\address[1]~input_o\ & (\A3|RW~45_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~45_q\,
	datad => \A3|RW~59_q\,
	combout => \A3|RW~87_combout\);

-- Location: LCCOMB_X32_Y15_N10
\A3|RW~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~88_combout\ = (\address[0]~input_o\ & ((\A3|RW~87_combout\ & ((\A3|RW~66_q\))) # (!\A3|RW~87_combout\ & (\A3|RW~52_q\)))) # (!\address[0]~input_o\ & (((\A3|RW~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \A3|RW~52_q\,
	datac => \A3|RW~66_q\,
	datad => \A3|RW~87_combout\,
	combout => \A3|RW~88_combout\);

-- Location: LCCOMB_X32_Y15_N30
\A3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux4~0_combout\ = (\address[2]~input_o\ & (((!\A3|RW~90_combout\ & !\A3|RW~88_combout\)))) # (!\address[2]~input_o\ & (!\A3|RW~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~92_combout\,
	datab => \address[2]~input_o\,
	datac => \A3|RW~90_combout\,
	datad => \A3|RW~88_combout\,
	combout => \A3|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y15_N20
\A3|RW~29feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~29feeder_combout\ = \A3|vehiculo_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A3|vehiculo_count\(4),
	combout => \A3|RW~29feeder_combout\);

-- Location: FF_X30_Y15_N21
\A3|RW~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~29feeder_combout\,
	ena => \A3|RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~29_q\);

-- Location: FF_X29_Y15_N27
\A3|RW~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(4),
	sload => VCC,
	ena => \A3|RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~36_q\);

-- Location: FF_X29_Y15_N25
\A3|RW~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(4),
	sload => VCC,
	ena => \A3|RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~15_q\);

-- Location: LCCOMB_X28_Y15_N2
\A3|RW~22feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~22feeder_combout\ = \A3|vehiculo_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(4),
	combout => \A3|RW~22feeder_combout\);

-- Location: FF_X28_Y15_N3
\A3|RW~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~22feeder_combout\,
	ena => \A3|RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~22_q\);

-- Location: LCCOMB_X29_Y15_N24
\A3|RW~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~95_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\A3|RW~22_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\A3|RW~15_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~15_q\,
	datad => \A3|RW~22_q\,
	combout => \A3|RW~95_combout\);

-- Location: LCCOMB_X29_Y15_N26
\A3|RW~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~96_combout\ = (\address[1]~input_o\ & ((\A3|RW~95_combout\ & ((\A3|RW~36_q\))) # (!\A3|RW~95_combout\ & (\A3|RW~29_q\)))) # (!\address[1]~input_o\ & (((\A3|RW~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~29_q\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~36_q\,
	datad => \A3|RW~95_combout\,
	combout => \A3|RW~96_combout\);

-- Location: LCCOMB_X30_Y15_N30
\A3|RW~30feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~30feeder_combout\ = \A3|vehiculo_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(5),
	combout => \A3|RW~30feeder_combout\);

-- Location: FF_X30_Y15_N31
\A3|RW~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~30feeder_combout\,
	ena => \A3|RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~30_q\);

-- Location: FF_X29_Y15_N15
\A3|RW~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(5),
	sload => VCC,
	ena => \A3|RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~37_q\);

-- Location: FF_X29_Y15_N13
\A3|RW~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(5),
	sload => VCC,
	ena => \A3|RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~16_q\);

-- Location: LCCOMB_X28_Y15_N24
\A3|RW~23feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~23feeder_combout\ = \A3|vehiculo_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(5),
	combout => \A3|RW~23feeder_combout\);

-- Location: FF_X28_Y15_N25
\A3|RW~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~23feeder_combout\,
	ena => \A3|RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~23_q\);

-- Location: LCCOMB_X29_Y15_N12
\A3|RW~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~93_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\A3|RW~23_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\A3|RW~16_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~16_q\,
	datad => \A3|RW~23_q\,
	combout => \A3|RW~93_combout\);

-- Location: LCCOMB_X29_Y15_N14
\A3|RW~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~94_combout\ = (\address[1]~input_o\ & ((\A3|RW~93_combout\ & ((\A3|RW~37_q\))) # (!\A3|RW~93_combout\ & (\A3|RW~30_q\)))) # (!\address[1]~input_o\ & (((\A3|RW~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~30_q\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~37_q\,
	datad => \A3|RW~93_combout\,
	combout => \A3|RW~94_combout\);

-- Location: LCCOMB_X30_Y15_N18
\A3|RW~50feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~50feeder_combout\ = \A3|vehiculo_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A3|vehiculo_count\(4),
	combout => \A3|RW~50feeder_combout\);

-- Location: FF_X30_Y15_N19
\A3|RW~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~50feeder_combout\,
	ena => \A3|RW~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~50_q\);

-- Location: FF_X28_Y15_N9
\A3|RW~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(4),
	sload => VCC,
	ena => \A3|RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~64_q\);

-- Location: FF_X26_Y15_N23
\A3|RW~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(4),
	sload => VCC,
	ena => \A3|RW~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~43_q\);

-- Location: LCCOMB_X26_Y15_N12
\A3|RW~57feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~57feeder_combout\ = \A3|vehiculo_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(4),
	combout => \A3|RW~57feeder_combout\);

-- Location: FF_X26_Y15_N13
\A3|RW~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~57feeder_combout\,
	ena => \A3|RW~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~57_q\);

-- Location: LCCOMB_X26_Y15_N22
\A3|RW~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~97_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\A3|RW~57_q\))) # (!\address[1]~input_o\ & (\A3|RW~43_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~43_q\,
	datad => \A3|RW~57_q\,
	combout => \A3|RW~97_combout\);

-- Location: LCCOMB_X28_Y15_N8
\A3|RW~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~98_combout\ = (\address[0]~input_o\ & ((\A3|RW~97_combout\ & ((\A3|RW~64_q\))) # (!\A3|RW~97_combout\ & (\A3|RW~50_q\)))) # (!\address[0]~input_o\ & (((\A3|RW~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \A3|RW~50_q\,
	datac => \A3|RW~64_q\,
	datad => \A3|RW~97_combout\,
	combout => \A3|RW~98_combout\);

-- Location: LCCOMB_X29_Y15_N4
\A3|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux4~1_combout\ = (\address[2]~input_o\ & (((!\A3|RW~98_combout\)))) # (!\address[2]~input_o\ & (!\A3|RW~96_combout\ & (!\A3|RW~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~96_combout\,
	datab => \address[2]~input_o\,
	datac => \A3|RW~94_combout\,
	datad => \A3|RW~98_combout\,
	combout => \A3|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y15_N8
\A3|RW~49feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~49feeder_combout\ = \A3|vehiculo_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A3|vehiculo_count\(3),
	combout => \A3|RW~49feeder_combout\);

-- Location: FF_X30_Y15_N9
\A3|RW~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~49feeder_combout\,
	ena => \A3|RW~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~49_q\);

-- Location: FF_X28_Y15_N5
\A3|RW~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(3),
	sload => VCC,
	ena => \A3|RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~63_q\);

-- Location: FF_X26_Y15_N19
\A3|RW~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(3),
	sload => VCC,
	ena => \A3|RW~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~42_q\);

-- Location: LCCOMB_X26_Y15_N24
\A3|RW~56feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~56feeder_combout\ = \A3|vehiculo_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(3),
	combout => \A3|RW~56feeder_combout\);

-- Location: FF_X26_Y15_N25
\A3|RW~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~56feeder_combout\,
	ena => \A3|RW~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~56_q\);

-- Location: LCCOMB_X26_Y15_N18
\A3|RW~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~82_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\A3|RW~56_q\))) # (!\address[1]~input_o\ & (\A3|RW~42_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~42_q\,
	datad => \A3|RW~56_q\,
	combout => \A3|RW~82_combout\);

-- Location: LCCOMB_X28_Y15_N4
\A3|RW~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~83_combout\ = (\address[0]~input_o\ & ((\A3|RW~82_combout\ & ((\A3|RW~63_q\))) # (!\A3|RW~82_combout\ & (\A3|RW~49_q\)))) # (!\address[0]~input_o\ & (((\A3|RW~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \A3|RW~49_q\,
	datac => \A3|RW~63_q\,
	datad => \A3|RW~82_combout\,
	combout => \A3|RW~83_combout\);

-- Location: LCCOMB_X30_Y15_N6
\A3|RW~28feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~28feeder_combout\ = \A3|vehiculo_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A3|vehiculo_count\(3),
	combout => \A3|RW~28feeder_combout\);

-- Location: FF_X30_Y15_N7
\A3|RW~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~28feeder_combout\,
	ena => \A3|RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~28_q\);

-- Location: FF_X29_Y15_N23
\A3|RW~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(3),
	sload => VCC,
	ena => \A3|RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~35_q\);

-- Location: FF_X29_Y15_N17
\A3|RW~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(3),
	sload => VCC,
	ena => \A3|RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~14_q\);

-- Location: LCCOMB_X28_Y15_N30
\A3|RW~21feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~21feeder_combout\ = \A3|vehiculo_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(3),
	combout => \A3|RW~21feeder_combout\);

-- Location: FF_X28_Y15_N31
\A3|RW~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~21feeder_combout\,
	ena => \A3|RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~21_q\);

-- Location: LCCOMB_X29_Y15_N16
\A3|RW~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~84_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\A3|RW~21_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\A3|RW~14_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~14_q\,
	datad => \A3|RW~21_q\,
	combout => \A3|RW~84_combout\);

-- Location: LCCOMB_X29_Y15_N22
\A3|RW~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~85_combout\ = (\address[1]~input_o\ & ((\A3|RW~84_combout\ & ((\A3|RW~35_q\))) # (!\A3|RW~84_combout\ & (\A3|RW~28_q\)))) # (!\address[1]~input_o\ & (((\A3|RW~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~28_q\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~35_q\,
	datad => \A3|RW~84_combout\,
	combout => \A3|RW~85_combout\);

-- Location: LCCOMB_X28_Y15_N28
\A3|RW~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~86_combout\ = (\address[2]~input_o\ & (\A3|RW~83_combout\)) # (!\address[2]~input_o\ & ((\A3|RW~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \A3|RW~83_combout\,
	datad => \A3|RW~85_combout\,
	combout => \A3|RW~86_combout\);

-- Location: FF_X31_Y15_N31
\A3|RW~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(2),
	sload => VCC,
	ena => \A3|RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~62_q\);

-- Location: FF_X30_Y15_N1
\A3|RW~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(2),
	sload => VCC,
	ena => \A3|RW~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~48_q\);

-- Location: FF_X26_Y15_N27
\A3|RW~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(2),
	sload => VCC,
	ena => \A3|RW~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~41_q\);

-- Location: LCCOMB_X26_Y15_N0
\A3|RW~55feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~55feeder_combout\ = \A3|vehiculo_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(2),
	combout => \A3|RW~55feeder_combout\);

-- Location: FF_X26_Y15_N1
\A3|RW~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~55feeder_combout\,
	ena => \A3|RW~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~55_q\);

-- Location: LCCOMB_X26_Y15_N26
\A3|RW~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~77_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\A3|RW~55_q\))) # (!\address[1]~input_o\ & (\A3|RW~41_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~41_q\,
	datad => \A3|RW~55_q\,
	combout => \A3|RW~77_combout\);

-- Location: LCCOMB_X30_Y15_N0
\A3|RW~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~78_combout\ = (\address[0]~input_o\ & ((\A3|RW~77_combout\ & (\A3|RW~62_q\)) # (!\A3|RW~77_combout\ & ((\A3|RW~48_q\))))) # (!\address[0]~input_o\ & (((\A3|RW~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~62_q\,
	datab => \address[0]~input_o\,
	datac => \A3|RW~48_q\,
	datad => \A3|RW~77_combout\,
	combout => \A3|RW~78_combout\);

-- Location: LCCOMB_X29_Y15_N2
\A3|RW~34feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~34feeder_combout\ = \A3|vehiculo_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(2),
	combout => \A3|RW~34feeder_combout\);

-- Location: FF_X29_Y15_N3
\A3|RW~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~34feeder_combout\,
	ena => \A3|RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~34_q\);

-- Location: FF_X30_Y15_N23
\A3|RW~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(2),
	sload => VCC,
	ena => \A3|RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~27_q\);

-- Location: FF_X29_Y15_N9
\A3|RW~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(2),
	sload => VCC,
	ena => \A3|RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~13_q\);

-- Location: LCCOMB_X28_Y15_N22
\A3|RW~20feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~20feeder_combout\ = \A3|vehiculo_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(2),
	combout => \A3|RW~20feeder_combout\);

-- Location: FF_X28_Y15_N23
\A3|RW~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~20feeder_combout\,
	ena => \A3|RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~20_q\);

-- Location: LCCOMB_X29_Y15_N8
\A3|RW~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~79_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\A3|RW~20_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\A3|RW~13_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~13_q\,
	datad => \A3|RW~20_q\,
	combout => \A3|RW~79_combout\);

-- Location: LCCOMB_X30_Y15_N22
\A3|RW~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~80_combout\ = (\address[1]~input_o\ & ((\A3|RW~79_combout\ & (\A3|RW~34_q\)) # (!\A3|RW~79_combout\ & ((\A3|RW~27_q\))))) # (!\address[1]~input_o\ & (((\A3|RW~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~34_q\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~27_q\,
	datad => \A3|RW~79_combout\,
	combout => \A3|RW~80_combout\);

-- Location: LCCOMB_X31_Y15_N16
\A3|RW~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~81_combout\ = (\address[2]~input_o\ & (\A3|RW~78_combout\)) # (!\address[2]~input_o\ & ((\A3|RW~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datac => \A3|RW~78_combout\,
	datad => \A3|RW~80_combout\,
	combout => \A3|RW~81_combout\);

-- Location: LCCOMB_X30_Y15_N16
\A3|RW~46feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~46feeder_combout\ = \A3|vehiculo_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(0),
	combout => \A3|RW~46feeder_combout\);

-- Location: FF_X30_Y15_N17
\A3|RW~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~46feeder_combout\,
	ena => \A3|RW~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~46_q\);

-- Location: FF_X31_Y15_N9
\A3|RW~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(0),
	sload => VCC,
	ena => \A3|RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~60_q\);

-- Location: FF_X26_Y15_N15
\A3|RW~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(0),
	sload => VCC,
	ena => \A3|RW~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~39_q\);

-- Location: LCCOMB_X26_Y15_N4
\A3|RW~53feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~53feeder_combout\ = \A3|vehiculo_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(0),
	combout => \A3|RW~53feeder_combout\);

-- Location: FF_X26_Y15_N5
\A3|RW~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~53feeder_combout\,
	ena => \A3|RW~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~53_q\);

-- Location: LCCOMB_X26_Y15_N14
\A3|RW~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~67_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\A3|RW~53_q\))) # (!\address[1]~input_o\ & (\A3|RW~39_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~39_q\,
	datad => \A3|RW~53_q\,
	combout => \A3|RW~67_combout\);

-- Location: LCCOMB_X31_Y15_N8
\A3|RW~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~68_combout\ = (\address[0]~input_o\ & ((\A3|RW~67_combout\ & ((\A3|RW~60_q\))) # (!\A3|RW~67_combout\ & (\A3|RW~46_q\)))) # (!\address[0]~input_o\ & (((\A3|RW~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~46_q\,
	datab => \address[0]~input_o\,
	datac => \A3|RW~60_q\,
	datad => \A3|RW~67_combout\,
	combout => \A3|RW~68_combout\);

-- Location: FF_X29_Y15_N7
\A3|RW~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(0),
	sload => VCC,
	ena => \A3|RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~32_q\);

-- Location: FF_X30_Y15_N11
\A3|RW~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(0),
	sload => VCC,
	ena => \A3|RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~25_q\);

-- Location: FF_X29_Y15_N29
\A3|RW~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(0),
	sload => VCC,
	ena => \A3|RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~11_q\);

-- Location: LCCOMB_X28_Y15_N20
\A3|RW~18feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~18feeder_combout\ = \A3|vehiculo_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A3|vehiculo_count\(0),
	combout => \A3|RW~18feeder_combout\);

-- Location: FF_X28_Y15_N21
\A3|RW~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~18feeder_combout\,
	ena => \A3|RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~18_q\);

-- Location: LCCOMB_X29_Y15_N28
\A3|RW~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~69_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\A3|RW~18_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\A3|RW~11_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~11_q\,
	datad => \A3|RW~18_q\,
	combout => \A3|RW~69_combout\);

-- Location: LCCOMB_X30_Y15_N10
\A3|RW~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~70_combout\ = (\address[1]~input_o\ & ((\A3|RW~69_combout\ & (\A3|RW~32_q\)) # (!\A3|RW~69_combout\ & ((\A3|RW~25_q\))))) # (!\address[1]~input_o\ & (((\A3|RW~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~32_q\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~25_q\,
	datad => \A3|RW~69_combout\,
	combout => \A3|RW~70_combout\);

-- Location: LCCOMB_X31_Y15_N30
\A3|RW~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~71_combout\ = (\address[2]~input_o\ & (\A3|RW~68_combout\)) # (!\address[2]~input_o\ & ((\A3|RW~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \A3|RW~68_combout\,
	datad => \A3|RW~70_combout\,
	combout => \A3|RW~71_combout\);

-- Location: LCCOMB_X30_Y15_N2
\A3|RW~26feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~26feeder_combout\ = \A3|vehiculo_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(1),
	combout => \A3|RW~26feeder_combout\);

-- Location: FF_X30_Y15_N3
\A3|RW~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~26feeder_combout\,
	ena => \A3|RW~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~26_q\);

-- Location: FF_X29_Y15_N19
\A3|RW~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(1),
	sload => VCC,
	ena => \A3|RW~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~33_q\);

-- Location: FF_X29_Y15_N1
\A3|RW~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(1),
	sload => VCC,
	ena => \A3|RW~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~12_q\);

-- Location: LCCOMB_X28_Y15_N12
\A3|RW~19feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~19feeder_combout\ = \A3|vehiculo_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(1),
	combout => \A3|RW~19feeder_combout\);

-- Location: FF_X28_Y15_N13
\A3|RW~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~19feeder_combout\,
	ena => \A3|RW~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~19_q\);

-- Location: LCCOMB_X29_Y15_N0
\A3|RW~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~74_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\A3|RW~19_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\A3|RW~12_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~12_q\,
	datad => \A3|RW~19_q\,
	combout => \A3|RW~74_combout\);

-- Location: LCCOMB_X29_Y15_N18
\A3|RW~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~75_combout\ = (\address[1]~input_o\ & ((\A3|RW~74_combout\ & ((\A3|RW~33_q\))) # (!\A3|RW~74_combout\ & (\A3|RW~26_q\)))) # (!\address[1]~input_o\ & (((\A3|RW~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~26_q\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~33_q\,
	datad => \A3|RW~74_combout\,
	combout => \A3|RW~75_combout\);

-- Location: LCCOMB_X30_Y15_N28
\A3|RW~47feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~47feeder_combout\ = \A3|vehiculo_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(1),
	combout => \A3|RW~47feeder_combout\);

-- Location: FF_X30_Y15_N29
\A3|RW~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~47feeder_combout\,
	ena => \A3|RW~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~47_q\);

-- Location: FF_X28_Y15_N15
\A3|RW~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(1),
	sload => VCC,
	ena => \A3|RW~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~61_q\);

-- Location: FF_X26_Y15_N11
\A3|RW~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A3|vehiculo_count\(1),
	sload => VCC,
	ena => \A3|RW~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~40_q\);

-- Location: LCCOMB_X26_Y15_N28
\A3|RW~54feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~54feeder_combout\ = \A3|vehiculo_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|vehiculo_count\(1),
	combout => \A3|RW~54feeder_combout\);

-- Location: FF_X26_Y15_N29
\A3|RW~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|RW~54feeder_combout\,
	ena => \A3|RW~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|RW~54_q\);

-- Location: LCCOMB_X26_Y15_N10
\A3|RW~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~72_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\A3|RW~54_q\))) # (!\address[1]~input_o\ & (\A3|RW~40_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \A3|RW~40_q\,
	datad => \A3|RW~54_q\,
	combout => \A3|RW~72_combout\);

-- Location: LCCOMB_X28_Y15_N14
\A3|RW~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~73_combout\ = (\address[0]~input_o\ & ((\A3|RW~72_combout\ & ((\A3|RW~61_q\))) # (!\A3|RW~72_combout\ & (\A3|RW~47_q\)))) # (!\address[0]~input_o\ & (((\A3|RW~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~47_q\,
	datab => \address[0]~input_o\,
	datac => \A3|RW~61_q\,
	datad => \A3|RW~72_combout\,
	combout => \A3|RW~73_combout\);

-- Location: LCCOMB_X29_Y15_N6
\A3|RW~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|RW~76_combout\ = (\address[2]~input_o\ & ((\A3|RW~73_combout\))) # (!\address[2]~input_o\ & (\A3|RW~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \A3|RW~75_combout\,
	datad => \A3|RW~73_combout\,
	combout => \A3|RW~76_combout\);

-- Location: LCCOMB_X31_Y15_N2
\A3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux6~0_combout\ = (!\A3|RW~86_combout\ & (!\A3|RW~76_combout\ & (\A3|RW~81_combout\ $ (\A3|RW~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~86_combout\,
	datab => \A3|RW~81_combout\,
	datac => \A3|RW~71_combout\,
	datad => \A3|RW~76_combout\,
	combout => \A3|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y15_N28
\A3|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux6~1_combout\ = (\A3|Mux4~0_combout\ & (\A3|Mux4~1_combout\ & \A3|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Mux4~0_combout\,
	datac => \A3|Mux4~1_combout\,
	datad => \A3|Mux6~0_combout\,
	combout => \A3|Mux6~1_combout\);

-- Location: FF_X31_Y15_N29
\A3|display[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|display\(0));

-- Location: LCCOMB_X31_Y15_N20
\A3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux5~0_combout\ = (\A3|RW~81_combout\ & (!\A3|RW~86_combout\ & (\A3|RW~71_combout\ $ (\A3|RW~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~71_combout\,
	datab => \A3|RW~81_combout\,
	datac => \A3|RW~86_combout\,
	datad => \A3|RW~76_combout\,
	combout => \A3|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y15_N0
\A3|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux5~1_combout\ = (\A3|Mux4~0_combout\ & (\A3|Mux4~1_combout\ & \A3|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Mux4~0_combout\,
	datac => \A3|Mux4~1_combout\,
	datad => \A3|Mux5~0_combout\,
	combout => \A3|Mux5~1_combout\);

-- Location: FF_X32_Y15_N1
\A3|display[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|display\(1));

-- Location: LCCOMB_X31_Y15_N6
\A3|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux4~2_combout\ = (!\A3|RW~71_combout\ & (\A3|RW~76_combout\ & (\A3|Mux4~0_combout\ & \A3|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~71_combout\,
	datab => \A3|RW~76_combout\,
	datac => \A3|Mux4~0_combout\,
	datad => \A3|Mux4~1_combout\,
	combout => \A3|Mux4~2_combout\);

-- Location: LCCOMB_X31_Y15_N26
\A3|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux4~3_combout\ = (!\A3|RW~81_combout\ & (!\A3|RW~86_combout\ & \A3|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3|RW~81_combout\,
	datac => \A3|RW~86_combout\,
	datad => \A3|Mux4~2_combout\,
	combout => \A3|Mux4~3_combout\);

-- Location: FF_X31_Y15_N27
\A3|display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|display\(2));

-- Location: LCCOMB_X31_Y15_N12
\A3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux3~0_combout\ = (\A3|RW~81_combout\ & ((\A3|RW~86_combout\) # (\A3|RW~71_combout\ $ (!\A3|RW~76_combout\)))) # (!\A3|RW~81_combout\ & ((\A3|RW~76_combout\ & (\A3|RW~86_combout\)) # (!\A3|RW~76_combout\ & ((\A3|RW~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~86_combout\,
	datab => \A3|RW~81_combout\,
	datac => \A3|RW~71_combout\,
	datad => \A3|RW~76_combout\,
	combout => \A3|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y15_N4
\A3|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux3~1_combout\ = ((\A3|Mux3~0_combout\) # (!\A3|Mux4~1_combout\)) # (!\A3|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Mux4~0_combout\,
	datac => \A3|Mux4~1_combout\,
	datad => \A3|Mux3~0_combout\,
	combout => \A3|Mux3~1_combout\);

-- Location: FF_X31_Y15_N5
\A3|display[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|display\(3));

-- Location: LCCOMB_X31_Y15_N18
\A3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux2~0_combout\ = (!\A3|RW~86_combout\ & ((\A3|RW~71_combout\) # ((\A3|RW~81_combout\ & !\A3|RW~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~86_combout\,
	datab => \A3|RW~81_combout\,
	datac => \A3|RW~71_combout\,
	datad => \A3|RW~76_combout\,
	combout => \A3|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y15_N22
\A3|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux2~1_combout\ = (\A3|Mux4~0_combout\ & (\A3|Mux4~1_combout\ & \A3|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Mux4~0_combout\,
	datac => \A3|Mux4~1_combout\,
	datad => \A3|Mux2~0_combout\,
	combout => \A3|Mux2~1_combout\);

-- Location: FF_X31_Y15_N23
\A3|display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|display\(4));

-- Location: LCCOMB_X31_Y15_N0
\A3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux1~0_combout\ = (!\A3|RW~86_combout\ & ((\A3|RW~81_combout\ & (\A3|RW~71_combout\ & \A3|RW~76_combout\)) # (!\A3|RW~81_combout\ & ((\A3|RW~71_combout\) # (\A3|RW~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~86_combout\,
	datab => \A3|RW~81_combout\,
	datac => \A3|RW~71_combout\,
	datad => \A3|RW~76_combout\,
	combout => \A3|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y15_N24
\A3|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux1~1_combout\ = (\A3|Mux4~0_combout\ & (\A3|Mux4~1_combout\ & \A3|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Mux4~0_combout\,
	datac => \A3|Mux4~1_combout\,
	datad => \A3|Mux1~0_combout\,
	combout => \A3|Mux1~1_combout\);

-- Location: FF_X31_Y15_N25
\A3|display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|display\(5));

-- Location: LCCOMB_X31_Y15_N10
\A3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux0~0_combout\ = (\A3|RW~86_combout\) # ((\A3|RW~81_combout\ & ((!\A3|RW~76_combout\) # (!\A3|RW~71_combout\))) # (!\A3|RW~81_combout\ & ((\A3|RW~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|RW~86_combout\,
	datab => \A3|RW~81_combout\,
	datac => \A3|RW~71_combout\,
	datad => \A3|RW~76_combout\,
	combout => \A3|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y15_N14
\A3|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|Mux0~1_combout\ = (\A3|Mux4~0_combout\ & (\A3|Mux4~1_combout\ & !\A3|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|Mux4~0_combout\,
	datac => \A3|Mux4~1_combout\,
	datad => \A3|Mux0~0_combout\,
	combout => \A3|Mux0~1_combout\);

-- Location: FF_X31_Y15_N15
\A3|display[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A3|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|display\(6));

-- Location: IOIBUF_X34_Y12_N8
\identificacion[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(0),
	o => \identificacion[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\identificacion[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(1),
	o => \identificacion[1]~input_o\);

-- Location: IOIBUF_X0_Y19_N22
\identificacion[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(2),
	o => \identificacion[2]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\tx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx,
	o => \tx~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

ww_semaforo_entrada(0) <= \semaforo_entrada[0]~output_o\;

ww_semaforo_entrada(1) <= \semaforo_entrada[1]~output_o\;

ww_semaforo_entrada(2) <= \semaforo_entrada[2]~output_o\;

ww_semaforo_final(0) <= \semaforo_final[0]~output_o\;

ww_semaforo_final(1) <= \semaforo_final[1]~output_o\;

ww_semaforo_final(2) <= \semaforo_final[2]~output_o\;

ww_talanquera_inicial <= \talanquera_inicial~output_o\;

ww_talanquera_final <= \talanquera_final~output_o\;

ww_led_verde <= \led_verde~output_o\;

ww_led_rojo <= \led_rojo~output_o\;

ww_alarm <= \alarm~output_o\;

ww_categoria_vehiculo(0) <= \categoria_vehiculo[0]~output_o\;

ww_categoria_vehiculo(1) <= \categoria_vehiculo[1]~output_o\;

ww_tarifa_peaje(0) <= \tarifa_peaje[0]~output_o\;

ww_tarifa_peaje(1) <= \tarifa_peaje[1]~output_o\;

ww_tarifa_peaje(2) <= \tarifa_peaje[2]~output_o\;

ww_tarifa_peaje(3) <= \tarifa_peaje[3]~output_o\;

ww_tarifa_peaje(4) <= \tarifa_peaje[4]~output_o\;

ww_tarifa_peaje(5) <= \tarifa_peaje[5]~output_o\;

ww_tarifa_peaje(6) <= \tarifa_peaje[6]~output_o\;

ww_vehiculos(0) <= \vehiculos[0]~output_o\;

ww_vehiculos(1) <= \vehiculos[1]~output_o\;

ww_vehiculos(2) <= \vehiculos[2]~output_o\;

ww_vehiculos(3) <= \vehiculos[3]~output_o\;

ww_vehiculos(4) <= \vehiculos[4]~output_o\;

ww_vehiculos(5) <= \vehiculos[5]~output_o\;

ww_vehiculos(6) <= \vehiculos[6]~output_o\;
END structure;


