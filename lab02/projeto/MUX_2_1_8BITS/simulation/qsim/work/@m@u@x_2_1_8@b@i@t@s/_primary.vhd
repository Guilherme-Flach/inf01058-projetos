library verilog;
use verilog.vl_types.all;
entity MUX_2_1_8BITS is
    port(
        Z               : out    vl_logic_vector(7 downto 0);
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        S               : in     vl_logic
    );
end MUX_2_1_8BITS;
