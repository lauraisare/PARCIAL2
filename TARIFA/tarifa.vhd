library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity tarifa is
    Port (
        Categoria: in std_logic_vector(1 downto 0);
        Tarifa : out std_logic_vector(6 downto 0)
    );
end tarifa;

architecture tarifa_arch of tarifa is

   
    type ROM_type is array (0 to 3) of std_logic_vector(6 downto 0);
	 
    constant ROM: ROM_type := (
        "1000000",  -- Sin categoría
        "1111001",  -- CATI
        "0100100",  -- CATII
        "0011001"   -- CATIII
    );
	 
	 signal display_BCD: std_logic_vector(6 downto 0);

	
begin

    process(categoria)
	 
    begin
        case categoria is
            when "00" => display_BCD <= ROM(0);  -- Sin categoría
            when "01" => display_BCD <= ROM(1);  -- CATI
            when "10" => display_BCD <= ROM(2);  -- CATII
            when "11" => display_BCD <= ROM(3);  -- CATIII
            when others => display_BCD <= (others => '0');  -- Valor por defecto
        end case;
    end process;
	 
	 Tarifa <= display_BCD;


end tarifa_arch;