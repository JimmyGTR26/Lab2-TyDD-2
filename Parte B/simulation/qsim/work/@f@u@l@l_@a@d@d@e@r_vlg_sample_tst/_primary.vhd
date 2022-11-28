library verilog;
use verilog.vl_types.all;
entity FULL_ADDER_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_cin          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FULL_ADDER_vlg_sample_tst;
