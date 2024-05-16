library verilog;
use verilog.vl_types.all;
entity contador is
    port(
        clock           : in     vl_logic;
        address         : in     vl_logic_vector(3 downto 0);
        back_sensor     : in     vl_logic;
        vehiculos       : out    vl_logic_vector(6 downto 0)
    );
end contador;
