library verilog;
use verilog.vl_types.all;
entity \Register\ is
    port(
        a               : in     vl_logic_vector(21 downto 0);
        w               : out    vl_logic_vector(21 downto 0);
        en              : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic
    );
end \Register\;
