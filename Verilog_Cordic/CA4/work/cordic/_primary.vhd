library verilog;
use verilog.vl_types.all;
entity cordic is
    port(
        clk             : in     vl_logic;
        W               : in     vl_logic_vector(21 downto 0);
        Q               : out    vl_logic_vector(21 downto 0)
    );
end cordic;
