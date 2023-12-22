library verilog;
use verilog.vl_types.all;
entity CONT_UP_DOWN is
    port(
        A0              : out    vl_logic;
        CLK_IN          : in     vl_logic;
        CLK_S           : in     vl_logic;
        RES             : in     vl_logic;
        C_IN            : in     vl_logic_vector(7 downto 0);
        OP              : in     vl_logic_vector(1 downto 0);
        B0              : out    vl_logic;
        C0              : out    vl_logic;
        D0              : out    vl_logic;
        E0              : out    vl_logic;
        F0              : out    vl_logic;
        G0              : out    vl_logic;
        B1              : out    vl_logic;
        C1              : out    vl_logic;
        D1              : out    vl_logic;
        E1              : out    vl_logic;
        F1              : out    vl_logic;
        G1              : out    vl_logic;
        A1              : out    vl_logic
    );
end CONT_UP_DOWN;
