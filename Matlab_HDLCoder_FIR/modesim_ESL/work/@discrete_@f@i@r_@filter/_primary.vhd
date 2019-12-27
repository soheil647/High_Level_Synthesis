library verilog;
use verilog.vl_types.all;
entity Discrete_FIR_Filter is
    generic(
        coeff1          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        coeff2          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0);
        coeff3          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0);
        coeff4          : vl_logic_vector(15 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        enb_16_1_1      : in     vl_logic;
        reset           : in     vl_logic;
        Discrete_FIR_Filter_in: in     vl_logic_vector(15 downto 0);
        Discrete_FIR_Filter_out: out    vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of coeff1 : constant is 2;
    attribute mti_svvh_generic_type of coeff2 : constant is 2;
    attribute mti_svvh_generic_type of coeff3 : constant is 2;
    attribute mti_svvh_generic_type of coeff4 : constant is 2;
end Discrete_FIR_Filter;
