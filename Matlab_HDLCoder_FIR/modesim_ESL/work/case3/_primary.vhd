library verilog;
use verilog.vl_types.all;
entity case3 is
    port(
        table_in        : in     vl_logic_vector(3 downto 0);
        table_out       : out    vl_logic_vector(3 downto 0)
    );
end case3;
