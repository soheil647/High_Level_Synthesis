library verilog;
use verilog.vl_types.all;
entity Tseries is
    port(
        i_clock         : in     vl_logic;
        i_reset         : in     vl_logic;
        i_W             : in     vl_logic_vector(21 downto 0);
        o_Q             : out    vl_logic_vector(21 downto 0)
    );
end Tseries;
