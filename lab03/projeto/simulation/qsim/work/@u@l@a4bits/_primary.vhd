library verilog;
use verilog.vl_types.all;
entity ULA4bits is
    port(
        FLAG_Z          : out    vl_logic;
        op_sel          : in     vl_logic_vector(1 downto 0);
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        FLAG_N          : out    vl_logic;
        S               : out    vl_logic_vector(3 downto 0)
    );
end ULA4bits;
