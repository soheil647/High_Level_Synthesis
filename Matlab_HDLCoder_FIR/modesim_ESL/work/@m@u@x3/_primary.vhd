library verilog;
use verilog.vl_types.all;
entity MUX3 is
    port(
        \Select\        : in     vl_logic_vector(3 downto 0);
        \Out\           : out    vl_logic_vector(3 downto 0)
    );
end MUX3;
