library verilog;
use verilog.vl_types.all;
entity reg16 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        regEn           : in     vl_logic;
        regIn           : in     vl_logic_vector(15 downto 0);
        regOut          : out    vl_logic_vector(15 downto 0)
    );
end reg16;
