library verilog;
use verilog.vl_types.all;
entity Convolotion_core is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        in_rsc_singleport_addr: out    vl_logic_vector(17 downto 0);
        in_rsc_singleport_re: out    vl_logic;
        in_rsc_singleport_data_out: in     vl_logic_vector(7 downto 0);
        out_rsc_singleport_data_in: out    vl_logic_vector(7 downto 0);
        out_rsc_singleport_addr: out    vl_logic_vector(17 downto 0);
        out_rsc_singleport_we: out    vl_logic
    );
end Convolotion_core;
