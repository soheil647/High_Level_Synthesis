library verilog;
use verilog.vl_types.all;
entity FIR is
    port(
        X               : in     vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \Out\           : out    vl_logic_vector(15 downto 0)
    );
end FIR;
