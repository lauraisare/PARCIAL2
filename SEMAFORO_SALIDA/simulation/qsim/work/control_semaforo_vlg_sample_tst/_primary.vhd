library verilog;
use verilog.vl_types.all;
entity control_semaforo_vlg_sample_tst is
    port(
        back_sensor     : in     vl_logic;
        id              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end control_semaforo_vlg_sample_tst;
