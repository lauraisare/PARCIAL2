library verilog;
use verilog.vl_types.all;
entity categoria is
    port(
        front_sensor    : in     vl_logic;
        identificacion  : in     vl_logic_vector(4 downto 0);
        categoria       : out    vl_logic_vector(1 downto 0)
    );
end categoria;
