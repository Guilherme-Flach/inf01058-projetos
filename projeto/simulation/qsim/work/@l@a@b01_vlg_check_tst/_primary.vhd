library verilog;
use verilog.vl_types.all;
entity LAB01_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end LAB01_vlg_check_tst;
