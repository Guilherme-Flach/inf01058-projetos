library verilog;
use verilog.vl_types.all;
entity LAB01 is
    port(
        Cout            : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        S               : out    vl_logic_vector(3 downto 0)
    );
end LAB01;
