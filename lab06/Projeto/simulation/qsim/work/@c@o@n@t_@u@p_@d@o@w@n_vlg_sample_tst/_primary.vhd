library verilog;
use verilog.vl_types.all;
entity CONT_UP_DOWN_vlg_sample_tst is
    port(
        C_IN            : in     vl_logic_vector(7 downto 0);
        CLK_IN          : in     vl_logic;
        CLK_S           : in     vl_logic;
        OP              : in     vl_logic_vector(1 downto 0);
        RES             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CONT_UP_DOWN_vlg_sample_tst;
