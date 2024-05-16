library verilog;
use verilog.vl_types.all;
entity contador_vlg_check_tst is
    port(
        vehiculos       : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end contador_vlg_check_tst;
