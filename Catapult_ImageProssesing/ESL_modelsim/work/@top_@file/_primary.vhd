library verilog;
use verilog.vl_types.all;
entity Top_File is
    port(
        Clock           : in     vl_logic;
        Rst             : in     vl_logic;
        finish          : in     vl_logic
    );
end Top_File;
