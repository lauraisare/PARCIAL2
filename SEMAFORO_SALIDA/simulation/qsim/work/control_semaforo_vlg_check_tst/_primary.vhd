library verilog;
use verilog.vl_types.all;
entity control_semaforo_vlg_check_tst is
    port(
        RGB             : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end control_semaforo_vlg_check_tst;
