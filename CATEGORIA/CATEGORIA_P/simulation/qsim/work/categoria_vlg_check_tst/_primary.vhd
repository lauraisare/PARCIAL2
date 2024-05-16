library verilog;
use verilog.vl_types.all;
entity categoria_vlg_check_tst is
    port(
        categoria       : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end categoria_vlg_check_tst;
