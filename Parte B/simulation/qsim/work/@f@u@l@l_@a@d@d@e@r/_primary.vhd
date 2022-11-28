library verilog;
use verilog.vl_types.all;
entity FULL_ADDER is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_cin          : in     vl_logic;
        clk             : in     vl_logic;
        o_f             : out    vl_logic;
        o_cout          : out    vl_logic
    );
end FULL_ADDER;
