library verilog;
use verilog.vl_types.all;
entity Absolute is
    generic(
        Alpha0          : vl_logic_vector(21 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        Alpha1          : vl_logic_vector(21 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        Alpha2          : vl_logic_vector(21 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1);
        Alpha3          : vl_logic_vector(21 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1);
        Alpha           : vl_notype;
        idle            : vl_logic_vector(1 downto 0) := (Hi0, Hi0);
        Calculate       : vl_logic_vector(1 downto 0) := (Hi0, Hi1);
        Ending          : vl_logic_vector(1 downto 0) := (Hi1, Hi0);
        region1         : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        region2         : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        region3         : vl_logic_vector(0 to 1) := (Hi1, Hi1);
        region4         : vl_logic_vector(0 to 1) := (Hi0, Hi0)
    );
    port(
        i_clock         : in     vl_logic;
        i_Reset         : in     vl_logic;
        i_A             : in     vl_logic_vector(21 downto 0);
        i_B             : in     vl_logic_vector(21 downto 0);
        o_ABS           : out    vl_logic_vector(21 downto 0);
        o_Z             : out    vl_logic_vector(21 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Alpha0 : constant is 2;
    attribute mti_svvh_generic_type of Alpha1 : constant is 2;
    attribute mti_svvh_generic_type of Alpha2 : constant is 2;
    attribute mti_svvh_generic_type of Alpha3 : constant is 2;
    attribute mti_svvh_generic_type of Alpha : constant is 4;
    attribute mti_svvh_generic_type of idle : constant is 2;
    attribute mti_svvh_generic_type of Calculate : constant is 2;
    attribute mti_svvh_generic_type of Ending : constant is 2;
    attribute mti_svvh_generic_type of region1 : constant is 1;
    attribute mti_svvh_generic_type of region2 : constant is 1;
    attribute mti_svvh_generic_type of region3 : constant is 1;
    attribute mti_svvh_generic_type of region4 : constant is 1;
end Absolute;
