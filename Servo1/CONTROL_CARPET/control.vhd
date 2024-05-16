library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           sensor : in STD_LOGIC;
           pwm_enable : out STD_LOGIC;
           pwm_reset : out STD_LOGIC);
end control;

architecture Behavioral of control is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            pwm_enable <= '0';
            pwm_reset <= '1';
        elsif rising_edge(clk) then
            pwm_reset <= '0';
            if sensor = '1' then
                -- Si el sensor detecta un objeto, habilita el PWM
                pwm_enable <= '1';
            else
                -- Si no hay objeto, deshabilita el PWM
                pwm_enable <= '0';
            end if;
        end if;
    end process;
end Behavioral;
