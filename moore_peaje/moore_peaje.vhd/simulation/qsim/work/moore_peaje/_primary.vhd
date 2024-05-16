library verilog;
use verilog.vl_types.all;
entity moore_peaje is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        tx              : in     vl_logic;
        talan_i         : out    vl_logic;
        talan_f         : out    vl_logic;
        sema_i          : out    vl_logic;
        sema_f          : out    vl_logic;
        led_rojo        : out    vl_logic;
        alarma          : out    vl_logic;
        f               : out    vl_logic
    );
end moore_peaje;
