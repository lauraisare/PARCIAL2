library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity semaforo_inicial is
    Port (
        Sensor1: in  STD_LOGIC; 
        RGB1   : out STD_LOGIC_VECTOR(2 downto 0)
    );
end semaforo_inicial;

architecture semaforo_inicial_arch of semaforo_inicial is
    signal rojo     : STD_LOGIC := '1'; 
    signal verde   : STD_LOGIC := '0'; 
	 
	 
	 component moore_peaje 
    port (
        clk : in std_logic;
		  reset : in std_logic;
		  front_sensor : in std_logic;
		  id : in std_logic;
		  back_sensor : in std_logic;
		  tx : in std_logic;
        talan_i : out std_logic;
		  talan_f : out std_logic;
		  sema_i : out std_logic;
		  sema_f : out std_logic;
		  led_rojo : out std_logic;
		  led_verde : out std_logic;
		  alarma : out std_logic
    );
end component;

	 
    signal s_clk: std_LOGIC;
	 signal s_reset:std_LOGIC;
    signal s_talan_i      : STD_LOGIC;
    signal s_talan_f      : STD_LOGIC;
    signal s_sema_i       : STD_LOGIC;
    signal s_sema_f       : STD_LOGIC;
    signal s_led_rojo     : STD_LOGIC;
    signal s_led_verde    : STD_LOGIC;
    signal s_alarma       : STD_LOGIC;
    signal s_front_sensor : STD_LOGIC;
    signal s_id           : STD_LOGIC;
    signal s_back_sensor  : STD_LOGIC;
    signal s_tx           : STD_LOGIC;
	 
	 
begin
    process(Sensor1)
    begin
        if Sensor1 = '1' then 
            rojo   <= '1'; 
            verde <= '0'; 
        else 
            rojo   <= '0'; 
            verde <= '1'; 
        end if;
    end process;

    RGB1 <= rojo & verde & '0'; 
	 

	  A0: moore_peaje PORT MAP (
        clk          => s_clk,
        reset        => s_reset,
        front_sensor => s_front_sensor,
        id           => s_id,
        back_sensor  => s_back_sensor,
        tx           => s_tx,
        talan_i      => s_talan_i,
        talan_f      => s_talan_f,
        sema_i       => s_sema_i,
        sema_f       => s_sema_f,
        led_rojo     => s_led_rojo,
        led_verde    => s_led_verde,
        alarma       => s_alarma
    );
	 
	 
	 
	 
	 s_front_sensor <= sensor1;
	 
	 
end semaforo_inicial_arch;
