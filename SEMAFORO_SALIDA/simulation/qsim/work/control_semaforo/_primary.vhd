library verilog;
use verilog.vl_types.all;
entity control_semaforo is
    port(
        back_sensor     : in     vl_logic;
        id              : in     vl_logic;
        RGB             : out    vl_logic_vector(2 downto 0)
    );
end control_semaforo;
