-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    2011a.41 Production Release
--  HLS Date:       Thu Apr  7 20:28:55 PDT 2011
-- 
--  Generated by:   ss@DESKTOP-UB05SU4
--  Generated date: Fri Apr 19 11:31:35 2019
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    Convolotion_core_fsm
--  FSM Module
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
LIBRARY mgc_hls;
USE mgc_hls.funcs.ALL;
USE work.convolotion_mux_pkg.ALL;


ENTITY Convolotion_core_fsm IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    fsm_output : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
    st_for_for_for_for_1_tr0 : IN STD_LOGIC;
    st_for_for_for_tr0 : IN STD_LOGIC;
    st_for_for_tr0 : IN STD_LOGIC;
    st_for_tr0 : IN STD_LOGIC
  );
END Convolotion_core_fsm;

ARCHITECTURE v2 OF Convolotion_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for Convolotion_core_fsm_1
  TYPE Convolotion_core_fsm_1_ST IS (st_main, st_for_for_for_for, st_for_for_for_for_1,
      st_for_for_for, st_for_for, st_for);

  SIGNAL state_var : Convolotion_core_fsm_1_ST;
  SIGNAL state_var_NS : Convolotion_core_fsm_1_ST;

BEGIN
  -- Default Constant Signal Assignments

  Convolotion_core_fsm_1 : PROCESS (st_for_for_for_for_1_tr0, st_for_for_for_tr0,
      st_for_for_tr0, st_for_tr0, state_var)
  BEGIN
    CASE state_var IS
      WHEN st_main =>
        fsm_output <= STD_LOGIC_VECTOR'("000001");
        state_var_NS <= st_for_for_for_for;
      WHEN st_for_for_for_for =>
        fsm_output <= STD_LOGIC_VECTOR'("000010");
        state_var_NS <= st_for_for_for_for_1;
      WHEN st_for_for_for_for_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("000100");
        IF ( st_for_for_for_for_1_tr0 = '1' ) THEN
          state_var_NS <= st_for_for_for;
        ELSE
          state_var_NS <= st_for_for_for_for;
        END IF;
      WHEN st_for_for_for =>
        fsm_output <= STD_LOGIC_VECTOR'("001000");
        IF ( st_for_for_for_tr0 = '1' ) THEN
          state_var_NS <= st_for_for;
        ELSE
          state_var_NS <= st_for_for_for_for;
        END IF;
      WHEN st_for_for =>
        fsm_output <= STD_LOGIC_VECTOR'("010000");
        IF ( st_for_for_tr0 = '1' ) THEN
          state_var_NS <= st_for;
        ELSE
          state_var_NS <= st_for_for_for_for;
        END IF;
      WHEN st_for =>
        fsm_output <= STD_LOGIC_VECTOR'("100000");
        IF ( st_for_tr0 = '1' ) THEN
          state_var_NS <= st_main;
        ELSE
          state_var_NS <= st_for_for_for_for;
        END IF;
      WHEN OTHERS =>
        fsm_output <= "000000";
        state_var_NS <= st_main;
    END CASE;
  END PROCESS Convolotion_core_fsm_1;

  Convolotion_core_fsm_1_REG : PROCESS (clk)
  BEGIN
    IF clk'event AND ( clk = '1' ) THEN
      IF ( rst = '1' ) THEN
        state_var <= st_main;
      ELSE
        state_var <= state_var_NS;
      END IF;
    END IF;
  END PROCESS Convolotion_core_fsm_1_REG;

END v2;

-- ------------------------------------------------------------------
--  Design Unit:    Convolotion_core
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
LIBRARY mgc_hls;
USE mgc_hls.funcs.ALL;
USE work.convolotion_mux_pkg.ALL;


ENTITY Convolotion_core IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    in_rsc_singleport_addr : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
    in_rsc_singleport_re : OUT STD_LOGIC;
    in_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    out_rsc_singleport_data_in : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    out_rsc_singleport_addr : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
    out_rsc_singleport_we : OUT STD_LOGIC
  );
END Convolotion_core;

ARCHITECTURE v2 OF Convolotion_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL fsm_output : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL or_dcpl_19 : STD_LOGIC;
  SIGNAL and_dcpl_7 : STD_LOGIC;
  SIGNAL Kcolumn_1_sva : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL Result_sg1_lpi_4_reg : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL Result_1_lpi_4_reg : STD_LOGIC;
  SIGNAL Result_sg2_lpi_4_reg : STD_LOGIC;
  SIGNAL Krow_1_reg : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL for_for_for_for_lor_lpi_4_dfm_st : STD_LOGIC;
  SIGNAL for_for_for_for_else_mux_itm : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL for_for_for_for_else_mux_1_itm : STD_LOGIC;
  SIGNAL for_for_for_for_slc_itm : STD_LOGIC;
  SIGNAL Dcolumn_1_sva_2 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL Drow_1_sva_2 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL or_22_cse : STD_LOGIC;
  SIGNAL or_24_cse : STD_LOGIC;
  SIGNAL for_for_for_for_oelse_2_acc_itm : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL z_out : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL z_out_1 : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL z_out_2 : STD_LOGIC_VECTOR (10 DOWNTO 0);
  SIGNAL z_out_3 : STD_LOGIC_VECTOR (10 DOWNTO 0);
  SIGNAL for_for_for_for_else_acc_6_sdt : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL for_for_for_for_else_ac_fixed_cctor_sva : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL slc_sat_sva : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL for_for_for_for_else_acc_7_itm : STD_LOGIC_VECTOR (2 DOWNTO 0);

  SIGNAL mux_10_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL mux_7_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL mux_9_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  COMPONENT Convolotion_core_fsm
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      fsm_output : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
      st_for_for_for_for_1_tr0 : IN STD_LOGIC;
      st_for_for_for_tr0 : IN STD_LOGIC;
      st_for_for_tr0 : IN STD_LOGIC;
      st_for_tr0 : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL Convolotion_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL Convolotion_core_fsm_inst_st_for_for_for_for_1_tr0 : STD_LOGIC;
  SIGNAL Convolotion_core_fsm_inst_st_for_for_for_tr0 : STD_LOGIC;
  SIGNAL Convolotion_core_fsm_inst_st_for_for_tr0 : STD_LOGIC;
  SIGNAL Convolotion_core_fsm_inst_st_for_tr0 : STD_LOGIC;

BEGIN
  -- Default Constant Signal Assignments

  Convolotion_core_fsm_inst : convolotion_core_fsm
    PORT MAP(
      clk => clk,
      rst => rst,
      fsm_output => Convolotion_core_fsm_inst_fsm_output,
      st_for_for_for_for_1_tr0 => Convolotion_core_fsm_inst_st_for_for_for_for_1_tr0,
      st_for_for_for_tr0 => Convolotion_core_fsm_inst_st_for_for_for_tr0,
      st_for_for_tr0 => Convolotion_core_fsm_inst_st_for_for_tr0,
      st_for_tr0 => Convolotion_core_fsm_inst_st_for_tr0
    );
  fsm_output <= Convolotion_core_fsm_inst_fsm_output;
  Convolotion_core_fsm_inst_st_for_for_for_for_1_tr0 <= NOT for_for_for_for_slc_itm;
  Convolotion_core_fsm_inst_st_for_for_for_tr0 <= NOT (z_out_1(1));
  Convolotion_core_fsm_inst_st_for_for_tr0 <= z_out_2(9);
  Convolotion_core_fsm_inst_st_for_tr0 <= z_out_3(9);

  for_for_for_for_else_acc_6_sdt <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Krow_1_reg),
      3) + CONV_UNSIGNED(UNSIGNED(Kcolumn_1_sva), 3), 3));
  for_for_for_for_oelse_2_acc_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(NOT (z_out_2(10
      DOWNTO 9))) + CONV_SIGNED(CONV_UNSIGNED('1', 1), 2), 2));
  for_for_for_for_else_acc_7_itm <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(for_for_for_for_else_acc_6_sdt(2
      DOWNTO 1)), 3) + CONV_UNSIGNED(UNSIGNED(Krow_1_reg), 3), 3));
  for_for_for_for_else_ac_fixed_cctor_sva <= (slc_sat_sva(7 DOWNTO 0)) OR STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(slc_sat_sva(8),
      1),8));
  slc_sat_sva <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(TO_STDLOGICVECTOR(Result_sg2_lpi_4_reg)
      & Result_sg1_lpi_4_reg & TO_STDLOGICVECTOR(Result_1_lpi_4_reg)), 9) + CONV_UNSIGNED(UNSIGNED(readslice(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED'(UNSIGNED(in_rsc_singleport_data_out)
      * UNSIGNED(for_for_for_for_else_mux_itm & TO_STDLOGICVECTOR('0') & STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(for_for_for_for_else_mux_1_itm,
      1),2)))), 12)), 7, 5)), 9), 9));
  or_dcpl_19 <= (fsm_output(0)) OR (fsm_output(5));
  or_22_cse <= or_dcpl_19 OR (fsm_output(4));
  and_dcpl_7 <= NOT((fsm_output(0)) OR (fsm_output(5)));
  or_24_cse <= ((fsm_output(2)) AND for_for_for_for_lor_lpi_4_dfm_st) OR (fsm_output(3))
      OR (fsm_output(1));
  in_rsc_singleport_addr <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_2(8 DOWNTO
      0)) + CONV_UNSIGNED(SIGNED(z_out_3(10 DOWNTO 9)), 9), 9)) & (z_out_3(8 DOWNTO
      0));
  in_rsc_singleport_re <= NOT((NOT((z_out_3(9)) OR (z_out_3(10)) OR (z_out_2(10))))
      AND (NOT (for_for_for_for_oelse_2_acc_itm(1))) AND (fsm_output(1)));
  out_rsc_singleport_data_in <= TO_STDLOGICVECTOR(Result_sg2_lpi_4_reg) & Result_sg1_lpi_4_reg
      & TO_STDLOGICVECTOR(Result_1_lpi_4_reg);
  out_rsc_singleport_addr <= Drow_1_sva_2 & Dcolumn_1_sva_2;
  out_rsc_singleport_we <= NOT((fsm_output(3)) AND (NOT (z_out_1(1))));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        Krow_1_reg <= STD_LOGIC_VECTOR'("00");
        Kcolumn_1_sva <= STD_LOGIC_VECTOR'("00");
        Result_1_lpi_4_reg <= '0';
        Result_sg1_lpi_4_reg <= STD_LOGIC_VECTOR'("000000");
        Result_sg2_lpi_4_reg <= '0';
        Dcolumn_1_sva_2 <= STD_LOGIC_VECTOR'("000000000");
        Drow_1_sva_2 <= STD_LOGIC_VECTOR'("000000000");
        for_for_for_for_else_mux_1_itm <= '0';
        for_for_for_for_else_mux_itm <= STD_LOGIC_VECTOR'("00");
        for_for_for_for_slc_itm <= '0';
        for_for_for_for_lor_lpi_4_dfm_st <= '0';
      ELSE
        Krow_1_reg <= (MUX_v_2_2_2(z_out & Krow_1_reg, fsm_output(2))) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT(or_dcpl_19
            OR (fsm_output(4)) OR (fsm_output(3))), 1),2));
        Kcolumn_1_sva <= (MUX_v_2_2_2(z_out & Kcolumn_1_sva, and_dcpl_7 AND (NOT((fsm_output(4))
            OR (fsm_output(3)))))) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
            or_22_cse, 1),2));
        Result_1_lpi_4_reg <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'((for_for_for_for_else_ac_fixed_cctor_sva(0))
            & Result_1_lpi_4_reg), or_24_cse)) AND (NOT or_22_cse);
        Result_sg1_lpi_4_reg <= (MUX_v_6_2_2((for_for_for_for_else_ac_fixed_cctor_sva(6
            DOWNTO 1)) & Result_sg1_lpi_4_reg, or_24_cse)) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
            or_22_cse, 1),6));
        Result_sg2_lpi_4_reg <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'((for_for_for_for_else_ac_fixed_cctor_sva(7))
            & Result_sg2_lpi_4_reg), or_24_cse)) AND (NOT or_22_cse);
        Dcolumn_1_sva_2 <= (MUX_v_9_2_2((z_out_3(8 DOWNTO 0)) & Dcolumn_1_sva_2,
            and_dcpl_7)) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT (fsm_output(0)),
            1),9));
        Drow_1_sva_2 <= (MUX_v_9_2_2((z_out_2(8 DOWNTO 0)) & Drow_1_sva_2, and_dcpl_7
            AND (NOT (fsm_output(4))))) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
            or_dcpl_19, 1),9));
        for_for_for_for_else_mux_1_itm <= MUX_s_1_16_2(STD_LOGIC_VECTOR'('0' & '0'
            & '0' & '0' & '1' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0'
            & '0' & '0'), for_for_for_for_else_acc_7_itm & TO_STDLOGICVECTOR(for_for_for_for_else_acc_6_sdt(0)));
        for_for_for_for_else_mux_itm <= MUX_v_2_16_2(STD_LOGIC_VECTOR'("01") & STD_LOGIC_VECTOR'("10")
            & STD_LOGIC_VECTOR'("01") & STD_LOGIC_VECTOR'("10") & STD_LOGIC_VECTOR'("00")
            & STD_LOGIC_VECTOR'("10") & STD_LOGIC_VECTOR'("01") & STD_LOGIC_VECTOR'("10")
            & STD_LOGIC_VECTOR'("01") & STD_LOGIC_VECTOR'("00") & STD_LOGIC_VECTOR'("00")
            & STD_LOGIC_VECTOR'("00") & STD_LOGIC_VECTOR'("00") & STD_LOGIC_VECTOR'("00")
            & STD_LOGIC_VECTOR'("00") & STD_LOGIC_VECTOR'("00"), for_for_for_for_else_acc_7_itm
            & TO_STDLOGICVECTOR(for_for_for_for_else_acc_6_sdt(0)));
        for_for_for_for_slc_itm <= z_out_1(1);
        for_for_for_for_lor_lpi_4_dfm_st <= (for_for_for_for_oelse_2_acc_itm(1))
            OR (z_out_2(10)) OR (z_out_3(9)) OR (z_out_3(10));
      END IF;
    END IF;
  END PROCESS;
  mux_10_nl <= MUX_v_2_2_2(Krow_1_reg & Kcolumn_1_sva, fsm_output(3));
  z_out <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(mux_10_nl) + UNSIGNED'("01"),
      2));
  z_out_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out) + UNSIGNED'("01"), 2));
  mux_7_nl <= MUX_v_2_2_2(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(Krow_1_reg) + CONV_SIGNED(CONV_SIGNED('1',
      1), 2), 2)) & STD_LOGIC_VECTOR'("01"), fsm_output(4));
  z_out_2 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Drow_1_sva_2),
      11) + CONV_UNSIGNED(SIGNED(mux_7_nl), 11), 11));
  mux_9_nl <= MUX_v_2_2_2(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(Kcolumn_1_sva) + CONV_SIGNED(CONV_SIGNED('1',
      1), 2), 2)) & STD_LOGIC_VECTOR'("01"), fsm_output(5));
  z_out_3 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Dcolumn_1_sva_2),
      11) + CONV_UNSIGNED(SIGNED(mux_9_nl), 11), 11));
END v2;

-- ------------------------------------------------------------------
--  Design Unit:    Convolotion
--  Generated from file(s):
--    2) $PROJECT_HOME/ESL_CA2.c
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
LIBRARY mgc_hls;
USE mgc_hls.funcs.ALL;
USE work.convolotion_mux_pkg.ALL;


ENTITY Convolotion IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    in_rsc_singleport_data_in : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    in_rsc_singleport_addr : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
    in_rsc_singleport_re : OUT STD_LOGIC;
    in_rsc_singleport_we : OUT STD_LOGIC;
    in_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    out_rsc_singleport_data_in : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    out_rsc_singleport_addr : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
    out_rsc_singleport_re : OUT STD_LOGIC;
    out_rsc_singleport_we : OUT STD_LOGIC;
    out_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0)
  );
END Convolotion;

ARCHITECTURE v2 OF Convolotion IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL in_rsc_singleport_addr_reg : STD_LOGIC_VECTOR (17 DOWNTO 0);
  SIGNAL in_rsc_singleport_re_reg : STD_LOGIC;
  SIGNAL out_rsc_singleport_data_in_reg : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL out_rsc_singleport_addr_reg : STD_LOGIC_VECTOR (17 DOWNTO 0);
  SIGNAL out_rsc_singleport_we_reg : STD_LOGIC;

  COMPONENT Convolotion_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      in_rsc_singleport_addr : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
      in_rsc_singleport_re : OUT STD_LOGIC;
      in_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      out_rsc_singleport_data_in : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      out_rsc_singleport_addr : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
      out_rsc_singleport_we : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL Convolotion_core_inst_in_rsc_singleport_addr : STD_LOGIC_VECTOR (17 DOWNTO
      0);
  SIGNAL Convolotion_core_inst_in_rsc_singleport_data_out : STD_LOGIC_VECTOR (7 DOWNTO
      0);
  SIGNAL Convolotion_core_inst_out_rsc_singleport_data_in : STD_LOGIC_VECTOR (7 DOWNTO
      0);
  SIGNAL Convolotion_core_inst_out_rsc_singleport_addr : STD_LOGIC_VECTOR (17 DOWNTO
      0);

BEGIN
  -- Default Constant Signal Assignments

  Convolotion_core_inst : convolotion_core
    PORT MAP(
      clk => clk,
      rst => rst,
      in_rsc_singleport_addr => Convolotion_core_inst_in_rsc_singleport_addr,
      in_rsc_singleport_re => in_rsc_singleport_re_reg,
      in_rsc_singleport_data_out => Convolotion_core_inst_in_rsc_singleport_data_out,
      out_rsc_singleport_data_in => Convolotion_core_inst_out_rsc_singleport_data_in,
      out_rsc_singleport_addr => Convolotion_core_inst_out_rsc_singleport_addr,
      out_rsc_singleport_we => out_rsc_singleport_we_reg
    );
  in_rsc_singleport_addr_reg <= Convolotion_core_inst_in_rsc_singleport_addr;
  Convolotion_core_inst_in_rsc_singleport_data_out <= in_rsc_singleport_data_out;
  out_rsc_singleport_data_in_reg <= Convolotion_core_inst_out_rsc_singleport_data_in;
  out_rsc_singleport_addr_reg <= Convolotion_core_inst_out_rsc_singleport_addr;

  in_rsc_singleport_data_in <= STD_LOGIC_VECTOR'("00000000");
  in_rsc_singleport_addr <= in_rsc_singleport_addr_reg;
  in_rsc_singleport_re <= in_rsc_singleport_re_reg;
  in_rsc_singleport_we <= '1';
  out_rsc_singleport_data_in <= out_rsc_singleport_data_in_reg;
  out_rsc_singleport_addr <= out_rsc_singleport_addr_reg;
  out_rsc_singleport_re <= '1';
  out_rsc_singleport_we <= out_rsc_singleport_we_reg;
END v2;



