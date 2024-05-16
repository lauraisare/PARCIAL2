library verilog;
use verilog.vl_types.all;
entity moore_peaje_vlg_check_tst is
    port(
        alarma          : in     vl_logic;
        f               : in     vl_logic;
        led_rojo        : in     vl_logic;
        sema_f          : in     vl_logic;
        sema_i          : in     vl_logic;
        talan_f         : in     vl_logic;
        talan_i         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end moore_peaje_vlg_check_tst;
