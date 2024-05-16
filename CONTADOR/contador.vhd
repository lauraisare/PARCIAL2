library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
    port (
        clock       : in std_logic;
        address     : in std_logic_vector(3 downto 0);
        back_sensor : in std_logic;
        vehiculos     : out std_logic_vector(6 downto 0)
    );
end entity contador;

architecture behavior of contador is

    type RW_type is array (0 to 7) of std_logic_vector(6 downto 0);
    signal RW : RW_type;
    signal vehiculo_count : integer range 0 to 99 := 0;
    signal tiempo : integer range 0 to 1000000 := 0;
	 signal display: std_logic_vector(6 downto 0);


begin


	MEMORY: process (clock)
		begin
			if (clock'event and clock='1') then
				if (back_sensor='1') then
					vehiculo_count <= vehiculo_count + 1;
					RW(to_integer(unsigned(address))) <= std_logic_vector(to_unsigned(vehiculo_count, 7));
				
				else
					display <= RW(to_integer(unsigned(address)));
				end if;
				
				if tiempo = 1000000 - 1 then
                tiempo <= 0;
                vehiculo_count <= 0;
            else
                tiempo <= tiempo + 1;
            end if;
				
				
				case RW(to_integer(unsigned(address))) is
					when "0000000" => display <= "1000000"; -- 0
					when "0000001" => display <= "1111001"; -- 1
					when "0000010" => display <= "0100100"; -- 2
					when "0000011" => display <= "0110000"; -- 3
					when "0000100" => display <= "0011001"; -- 4
					when "0000101" => display <= "0010010"; -- 5
					when "0000110" => display <= "0000010"; -- 6
					when "0000111" => display <= "1111000"; -- 7
					when "0001000" => display <= "0000000"; -- 8
					when others    => display <= "0001000"; -- 9
				end case;
			end if;
	end process;


    
   vehiculos <= display;
  

end architecture behavior;
