library ieee;
use ieee.std_logic_1164.all;
use work.my_package1.all;

entity categoria is
    
    port (
        front_sensor : in std_logic;  
        identificacion : in std_logic_vector(4 downto 0);  
        categoria : out std_logic_vector(1 downto 0)
    );
end categoria;

architecture categoria_arch of categoria is

    procedure determinar_categoria(signal identificacion_data: in std_logic_vector(4 downto 0);
        signal categoria_resultado: out std_logic_vector(1 downto 0)) is
    begin
        case identificacion_data(4 downto 3) is
            when "00" =>
                categoria_resultado <= "00"; -- Sin categoría
            when "01" =>
                categoria_resultado <= "01"; -- Categoría CATI
            when "10" =>
                categoria_resultado <= "10"; -- Categoría CATII
            when "11" =>
                categoria_resultado <= "11"; -- Categoría CATIII
            when others =>
                null; 
        end case;
    end determinar_categoria;

	begin 
    PROCESS (front_sensor, identificacion)
		begin
        if (front_sensor = '1') then
            determinar_categoria(identificacion, categoria);
        else
            categoria <= "00"; -- Sin categoría si no hay detección
        end if;
    end PROCESS;
	 
end categoria_arch;

