library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sensor : in STD_LOGIC;
           servo : out STD_LOGIC);
end main;

architecture Behavioral of main is
    component pwm is
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               enable : in STD_LOGIC;
               angle : in STD_LOGIC;
               pwm_out : out STD_LOGIC);
    end component;

    component control is
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               sensor : in STD_LOGIC;
               pwm_enable : out STD_LOGIC;
               pwm_reset : out STD_LOGIC);
    end component;
	 
	 
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
		  alarma : out std_logic;
		  f : out std_logic
    );
end component;

    signal pwm_enable : STD_LOGIC;
    signal pwm_reset : STD_LOGIC;
    signal angle : STD_LOGIC;
	 
	  
    signal clk_out : STD_LOGIC := '0';
    signal s_talan_i      : STD_LOGIC;
    signal s_talan_f      : STD_LOGIC;
    signal s_sema_i       : STD_LOGIC;
    signal s_sema_f       : STD_LOGIC;
    signal s_led_rojo     : STD_LOGIC;
    signal s_led_verde    : STD_LOGIC;
    signal s_alarma       : STD_LOGIC;
    signal s_f            : STD_LOGIC;
    signal s_front_sensor : STD_LOGIC;
    signal s_id           : STD_LOGIC;
    signal s_back_sensor  : STD_LOGIC;
    signal s_tx           : STD_LOGIC;
	 
begin
    u1: pwm
        port map (
            clk => clk,
            reset => pwm_reset,
            enable => pwm_enable,
            angle => angle,
            pwm_out => servo
        );

    u2: control
        port map (
            clk => clk,
            reset => reset,
            sensor => sensor,
            pwm_enable => pwm_enable,
            pwm_reset => pwm_reset
        );
		  
		  
		  
		  
	
	  A0: moore_peaje PORT MAP (
        clk          => clk,
        reset        => reset,
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
        alarma       => s_alarma,
        f            => s_f
    );
	 
	 
	 
	 s_talan_i <= sensor;
	 
end Behavioral;
