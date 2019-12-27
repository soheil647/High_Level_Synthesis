library verilog;
use verilog.vl_types.all;
entity f2 is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        \Out\           : out    vl_logic_vector(15 downto 0)
    );
end f2;
