library verilog;
use verilog.vl_types.all;
entity contador_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(3 downto 0);
        back_sensor     : in     vl_logic;
        clock           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador_vlg_sample_tst;
