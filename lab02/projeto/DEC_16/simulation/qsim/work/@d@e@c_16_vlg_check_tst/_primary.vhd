library verilog;
use verilog.vl_types.all;
entity DEC_16_vlg_check_tst is
    port(
        S               : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end DEC_16_vlg_check_tst;
