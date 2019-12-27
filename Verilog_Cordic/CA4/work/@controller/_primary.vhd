library verilog;
use verilog.vl_types.all;
entity Controller is
    generic(
        Idle            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        First           : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        Second          : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        Third           : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        Fourth          : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0)
    );
    port(
        SelectM         : out    vl_logic_vector(1 downto 0);
        enW             : out    vl_logic;
        enQ             : out    vl_logic;
        Clock           : in     vl_logic;
        Reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Idle : constant is 1;
    attribute mti_svvh_generic_type of First : constant is 1;
    attribute mti_svvh_generic_type of Second : constant is 1;
    attribute mti_svvh_generic_type of Third : constant is 1;
    attribute mti_svvh_generic_type of Fourth : constant is 1;
end Controller;
