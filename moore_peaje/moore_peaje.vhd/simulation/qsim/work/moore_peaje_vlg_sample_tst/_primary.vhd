library verilog;
use verilog.vl_types.all;
entity moore_peaje_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        tx              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end moore_peaje_vlg_sample_tst;
