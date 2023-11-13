library verilog;
use verilog.vl_types.all;
entity ULA4bits_vlg_check_tst is
    port(
        FLAG_N          : in     vl_logic;
        FLAG_Z          : in     vl_logic;
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end ULA4bits_vlg_check_tst;
