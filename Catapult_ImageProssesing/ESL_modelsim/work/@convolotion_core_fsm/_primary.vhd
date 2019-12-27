library verilog;
use verilog.vl_types.all;
entity Convolotion_core_fsm is
    generic(
        st_main         : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        st_for_for_for_for: vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        st_for_for_for_for_1: vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        st_for_for_for  : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        st_for_for      : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        st_for          : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        state_x         : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        fsm_output      : out    vl_logic_vector(5 downto 0);
        st_for_for_for_for_1_tr0: in     vl_logic;
        st_for_for_for_tr0: in     vl_logic;
        st_for_for_tr0  : in     vl_logic;
        st_for_tr0      : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of st_main : constant is 1;
    attribute mti_svvh_generic_type of st_for_for_for_for : constant is 1;
    attribute mti_svvh_generic_type of st_for_for_for_for_1 : constant is 1;
    attribute mti_svvh_generic_type of st_for_for_for : constant is 1;
    attribute mti_svvh_generic_type of st_for_for : constant is 1;
    attribute mti_svvh_generic_type of st_for : constant is 1;
    attribute mti_svvh_generic_type of state_x : constant is 1;
end Convolotion_core_fsm;
