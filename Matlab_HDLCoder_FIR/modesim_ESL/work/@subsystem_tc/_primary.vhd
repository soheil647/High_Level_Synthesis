library verilog;
use verilog.vl_types.all;
entity Subsystem_tc is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        clk_enable      : in     vl_logic;
        enb_16_1_1      : out    vl_logic;
        enb             : out    vl_logic;
        enb_1_1_1       : out    vl_logic
    );
end Subsystem_tc;
