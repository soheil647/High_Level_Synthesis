library verilog;
use verilog.vl_types.all;
entity Trigonometry is
    generic(
        Alpha0          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        Alpha1          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        Alpha2          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1);
        Alpha3          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1);
        Alpha4          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1);
        Alpha5          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        Alpha6          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi1);
        Alpha7          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1);
        Alpha8          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi1);
        Alpha9          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0);
        Alpha           : vl_notype;
        idle            : vl_logic_vector(1 downto 0) := (Hi0, Hi0);
        Calculate       : vl_logic_vector(1 downto 0) := (Hi0, Hi1);
        Ending          : vl_logic_vector(1 downto 0) := (Hi1, Hi0);
        place1          : vl_logic_vector(1 downto 0) := (Hi0, Hi0);
        place2          : vl_logic_vector(1 downto 0) := (Hi0, Hi1);
        place3          : vl_logic_vector(1 downto 0) := (Hi1, Hi0);
        place4          : vl_logic_vector(1 downto 0) := (Hi1, Hi1);
        one             : vl_logic_vector(0 to 15) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        zero            : vl_logic_vector(0 to 15) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        i_clock         : in     vl_logic;
        i_Reset         : in     vl_logic;
        i_Theta         : in     vl_logic_vector(15 downto 0);
        i_Valid         : in     vl_logic;
        o_Sin           : out    vl_logic_vector(15 downto 0);
        o_Cos           : out    vl_logic_vector(15 downto 0);
        o_Busy          : out    vl_logic;
        o_Done          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Alpha0 : constant is 2;
    attribute mti_svvh_generic_type of Alpha1 : constant is 2;
    attribute mti_svvh_generic_type of Alpha2 : constant is 2;
    attribute mti_svvh_generic_type of Alpha3 : constant is 2;
    attribute mti_svvh_generic_type of Alpha4 : constant is 2;
    attribute mti_svvh_generic_type of Alpha5 : constant is 2;
    attribute mti_svvh_generic_type of Alpha6 : constant is 2;
    attribute mti_svvh_generic_type of Alpha7 : constant is 2;
    attribute mti_svvh_generic_type of Alpha8 : constant is 2;
    attribute mti_svvh_generic_type of Alpha9 : constant is 2;
    attribute mti_svvh_generic_type of Alpha : constant is 4;
    attribute mti_svvh_generic_type of idle : constant is 2;
    attribute mti_svvh_generic_type of Calculate : constant is 2;
    attribute mti_svvh_generic_type of Ending : constant is 2;
    attribute mti_svvh_generic_type of place1 : constant is 2;
    attribute mti_svvh_generic_type of place2 : constant is 2;
    attribute mti_svvh_generic_type of place3 : constant is 2;
    attribute mti_svvh_generic_type of place4 : constant is 2;
    attribute mti_svvh_generic_type of one : constant is 1;
    attribute mti_svvh_generic_type of zero : constant is 1;
end Trigonometry;
