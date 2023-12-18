library verilog;
use verilog.vl_types.all;
entity FREQ_DIV_vlg_sample_tst is
    port(
        \IN\            : in     vl_logic;
        RST             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FREQ_DIV_vlg_sample_tst;
