library verilog;
use verilog.vl_types.all;
entity T_Square is
    port(
        i_clock         : in     vl_logic;
        i_reset         : in     vl_logic;
        enW             : in     vl_logic;
        enQ             : in     vl_logic;
        SelectM         : in     vl_logic_vector(1 downto 0);
        i_W             : in     vl_logic_vector(21 downto 0);
        o_Q             : out    vl_logic_vector(21 downto 0)
    );
end T_Square;
