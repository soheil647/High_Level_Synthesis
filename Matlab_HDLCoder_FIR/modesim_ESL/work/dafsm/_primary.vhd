library verilog;
use verilog.vl_types.all;
entity dafsm is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        x_in0           : in     vl_logic_vector(3 downto 0);
        x_in1           : in     vl_logic_vector(3 downto 0);
        x_in2           : in     vl_logic_vector(3 downto 0);
        x_in3           : in     vl_logic_vector(3 downto 0);
        lut             : out    vl_logic_vector(3 downto 0);
        y               : out    vl_logic_vector(6 downto 0)
    );
end dafsm;
