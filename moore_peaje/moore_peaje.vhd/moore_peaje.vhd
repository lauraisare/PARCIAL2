library ieee;
use ieee.std_logic_1164.all;

entity moore_peaje is 
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
end moore_peaje;

architecture moore_peaje_arch of moore_peaje is 

    type estados is (inicio, vehiculo_detectado, salida_aprobada, salida_noaprobada, advertencia, reinicio_sistema);
    signal estado_presente, estado_siguiente: estados;
    
begin 
    proceso_estado : process(clk, reset, front_sensor, id, back_sensor, tx)
    begin
        if reset = '0' then
            estado_presente <= inicio;
        elsif rising_edge(clk) then 
            estado_presente <= estado_siguiente;
        end if;
        
        case estado_presente is 
            when inicio => 
                if front_sensor = '1' then 
                    estado_siguiente <= vehiculo_detectado;
                else 
                    estado_siguiente <= inicio;
                end if;
                
            when vehiculo_detectado => 
                if id = '1' then 
                    estado_siguiente <= salida_aprobada;	  
                else
                    estado_siguiente <= salida_noaprobada;
                end if;
					 
            when salida_aprobada => 
                if back_sensor = '1' then 
                    estado_siguiente <= reinicio_sistema;
                else 
                    estado_siguiente <= salida_aprobada;
                end if;
                
            when salida_noaprobada => 
                if id = '1' then 
                    estado_siguiente <= salida_aprobada;
                else 
                    estado_siguiente <= salida_noaprobada;
                end if;
                
			when advertencia => 
                if id = '1' then 
                    estado_siguiente <= salida_aprobada;
                else 
                    estado_siguiente <= advertencia;
                end if;
					 
            when reinicio_sistema => 
                if back_sensor = '0' then 
                    estado_siguiente <= inicio;
                else 
                    estado_siguiente <= reinicio_sistema;
                end if;
        end case;
    end process proceso_estado;
    
    proceso_salida : process(estado_presente)
    begin
        case estado_presente is 
            when inicio =>
                talan_i <= '1';
                sema_i <= '1';
                led_rojo <= '0'; 
                led_verde <= '0';
                alarma <= '0'; 
                talan_f <= '0'; 
                sema_f <= '0'; 
                
            when vehiculo_detectado =>
                talan_i <= '0';
                sema_i <= '0';
                led_rojo <= '0';
                led_verde <= '0';
                alarma <= '0';
                talan_f <= '0';
                sema_f <= '0';
                
            when salida_aprobada =>
                talan_i <= '0';
                sema_i <= '0';
                led_rojo <= '0';
                led_verde <= '1';
                alarma <= '0';
                talan_f <= '1';
                sema_f <= '1';
                
            when salida_noaprobada =>
                talan_i <= '0';
                sema_i <= '0';
                led_rojo <= '1';
                led_verde <= '0';
                alarma <= '0';
                talan_f <= '0';
                sema_f <= '0';
                
            when advertencia =>
                talan_i <= '0';
                sema_i <= '0';
                led_rojo <= '0';
                led_verde <= '0';
                alarma <= '1';
                talan_f <= '0';
                sema_f <= '0';
                
            when reinicio_sistema =>
                talan_i <= '0';
                sema_i <= '0';
                led_rojo <= '0';
                led_verde <= '1';
                alarma <= '0';
                talan_f <= '0';
                sema_f <= '0';
					 
		    when others =>
				talan_i <= '0';
                sema_i <= '0';
                led_rojo <= '0';
				led_verde <= '0';
                alarma <= '0';
                talan_f <= '0';
                sema_f <= '0';
        end case;
    end process proceso_salida;
    
end moore_peaje_arch;
