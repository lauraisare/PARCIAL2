library verilog;
use verilog.vl_types.all;
entity categoria_vlg_sample_tst is
    port(
        front_sensor    : in     vl_logic;
        identificacion  : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end categoria_vlg_sample_tst;
