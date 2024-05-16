library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pwm is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           angle : in STD_LOGIC;
           pwm_out : out STD_LOGIC);
end pwm;

architecture Behavioral of pwm is
    signal count : integer range 0 to 20000 := 0; -- Asume un reloj de 50MHz para un periodo de 20ms
    signal duty_cycle : integer range 0 to 20000 := 1000; -- Inicialmente en 1ms para 0 grados
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count <= 0;
        elsif rising_edge(clk) then
            if enable = '1' then
                if angle = '1' then
                    duty_cycle <= 1500; -- 1.5ms para 90 grados
                else
                    duty_cycle <= 1000; -- 1ms para 0 grados
                end if;
                if count < duty_cycle then
                    pwm_out <= '1';
                else
                    pwm_out <= '0';
                end if;
                if count >= 20000 then
                    count <= 0;
                else
                    count <= count + 1;
                end if;
            else
                pwm_out <= '0';
            end if;
        end if;
    end process;
end Behavioral;
