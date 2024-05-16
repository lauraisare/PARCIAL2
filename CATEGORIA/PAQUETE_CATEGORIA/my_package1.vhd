LIBRARY ieee;
USE ieee.std_logic_1164.all;


package my_package1 is
	 
	 procedure determinar_categoria (signal identificacion_data: in std_logic_vector(4 downto 0);         
	 signal categoria_resultado: out std_logic_vector(1 downto 0));
	 
end my_package1;

package body my_package1 is

	type categoria_vehiculo is (SC, CATI, CATII, CATIII);

	procedure determinar_categoria (signal identificacion_data: in std_logic_vector(4 downto 0);        
		signal categoria_resultado: out std_logic_vector(1 downto 0)) is
		
	begin
        case identificacion_data(4 downto 3) is
            when "00" =>
                categoria_resultado <= "00";     -- Sin categoría
            when "01" =>
                categoria_resultado <= "01";   -- Categoría CATI
            when "10" =>
                categoria_resultado <= "10";  -- Categoría CATII
            when "11" =>
                categoria_resultado <= "11"; -- Categoría CATIII
            when others =>
                null;     -- Por defecto, Sin categoría
        end case;
   end determinar_categoria;

END my_package1;