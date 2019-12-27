library verilog;
use verilog.vl_types.all;
entity f1 is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        \Out\           : out    vl_logic_vector(15 downto 0)
    );
end f1;
