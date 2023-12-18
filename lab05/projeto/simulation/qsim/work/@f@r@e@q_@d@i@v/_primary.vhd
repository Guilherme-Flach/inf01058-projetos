library verilog;
use verilog.vl_types.all;
entity FREQ_DIV is
    port(
        \OUT\           : out    vl_logic;
        RST             : in     vl_logic;
        \IN\            : in     vl_logic
    );
end FREQ_DIV;
