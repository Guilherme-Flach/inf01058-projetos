library verilog;
use verilog.vl_types.all;
entity PROJETO_NEANDER_RAM_vlg_sample_tst is
    port(
        CLK_IN          : in     vl_logic;
        RST             : in     vl_logic;
        RUN_STEP        : in     vl_logic;
        STEP_UP         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end PROJETO_NEANDER_RAM_vlg_sample_tst;
