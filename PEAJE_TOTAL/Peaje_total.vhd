library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith;
use ieee.std_logic_unsigned;

entity Peaje_total is 
    port(  
        clk : in std_logic;
        reset : in std_logic;
        front_sensor : in std_logic;
        id: in std_logic;
        identificacion : in std_logic_vector(4 downto 0);
        back_sensor: in std_logic;
		  tx: in std_LOGIC;
		  address     : in std_logic_vector(3 downto 0);
        semaforo_entrada : out std_logiC_VECTOR(2 downto 0);
        semaforo_final : out std_logic_VECTOR(2 downto 0);
        talanquera_inicial : out std_logic;
        talanquera_final : out std_logic;
        led_verde : out std_logic;
        led_rojo : out std_logic;
        alarm : out std_logic;
		  categoria_vehiculo: out std_logic_vector(1 downto 0);
        tarifa_peaje : out std_logic_vector(6 downto 0);
        vehiculos : out std_logic_vector(6 downto 0)
    );
end Peaje_total;

architecture Peaje_total_arch of Peaje_total is
  
	 
component control_semaforo
    Port (
        back_sensor: in  STD_LOGIC; 
		  id: in std_LOGIC;
        RGB   : out STD_LOGIC_VECTOR(2 downto 0)
    );
end component;


component semaforo_inicial 
    Port (
        Sensor1: in  STD_LOGIC; 
        RGB1   : out STD_LOGIC_VECTOR(2 downto 0)
    );
end component;

component categoria 
    
    port (
        front_sensor : in std_logic;  
        identificacion : in std_logic_vector(4 downto 0);  
        categoria : out std_logic_vector(1 downto 0)
    );
end component;


component contador 
    port (
        clock       : in std_logic;
        address     : in std_logic_vector(3 downto 0);
        back_sensor : in std_logic;
        vehiculos     : out std_logic_vector(6 downto 0)
    );
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
		  alarma : out std_logic
    );
end component;


component tarifa
    Port (
        Categoria: in std_logic_vector(1 downto 0);
        Tarifa : out std_logic_vector(6 downto 0)
    );
end component;

component main
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sensor : in STD_LOGIC;
           servo : out STD_LOGIC);
end component;



component main2
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sensor : in STD_LOGIC;
           servo2 : out STD_LOGIC);
end component;



		signal semaforo_inicial_RGB : std_logic_vector(2 downto 0);
		signal control_semaforo_RGB : std_logic_vector(2 downto 0);
		signal categoria_vehiculo_signal : std_logic_vector(1 downto 0);
		signal tarifa_peaje_signal : std_logic_vector(6 downto 0);
		signal contador_vehiculos_signal : std_logic_vector(6 downto 0);
		signal posi_signal: std_logic_vector(6 downto 0); -- Cambiado de STD_LOGIC_VECTOR a std_logic_vector
		signal posi_signal2: std_logic_vector(6 downto 0); -- Cambiado de STD_LOGIC_VECTOR a std_logic_vector
		signal talan_is: std_logic;
		signal talan_fs: std_logic;
		signal sema_i_internal: std_logic;
		signal sema_f_internal: std_logic;
		signal sensor_s1:std_LOGIC;
		signal sensor_s2: std_LOGIC;

begin


    A1: semaforo_inicial port map ( Sensor1 => front_sensor, RGB1 => semaforo_entrada);

    A0: control_semaforo port map (back_sensor => back_sensor, id => id, RGB => semaforo_final);

    A2: categoria port map (front_sensor   => front_sensor, identificacion => identificacion, categoria => categoria_vehiculo_signal);

    A3: contador port map (clock => clk, address => address, back_sensor => back_sensor, vehiculos => contador_vehiculos_signal);

	 A4: moore_peaje port map (clk => clk, reset => reset, front_sensor => front_sensor, id => id, back_sensor => back_sensor, tx => tx, 
										talan_i => talan_is, talan_f => talan_fs, sema_i => sema_i_internal, sema_f => sema_i_internal, 
										led_rojo => led_rojo, led_verde => led_verde, alarma => alarm);

    A5: tarifa port map (Categoria => categoria_vehiculo_signal, Tarifa => tarifa_peaje_signal);
	 
	 A6: main port map (clk => clk, reset => reset, sensor => sensor_s1 , servo => talanquera_inicial);
	 
	 A7: main2 port map (clk => clk, reset => reset, sensor=> sensor_s2, servo2 => talanquera_final);

    
    
    categoria_vehiculo <= categoria_vehiculo_signal;
    tarifa_peaje        <= tarifa_peaje_signal;
    vehiculos           <= contador_vehiculos_signal;


end Peaje_total_arch;
