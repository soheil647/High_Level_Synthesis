library verilog;
use verilog.vl_types.all;
entity Rom is
    port(
        Address         : in     vl_logic_vector(17 downto 0);
        Data_out        : out    vl_logic_vector(7 downto 0);
        Clock           : in     vl_logic;
        Rst             : in     vl_logic
    );
end Rom;
