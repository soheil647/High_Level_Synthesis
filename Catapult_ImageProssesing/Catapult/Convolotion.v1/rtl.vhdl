-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    2011a.41 Production Release
--  HLS Date:       Thu Apr  7 20:28:55 PDT 2011
-- 
--  Generated by:   ss@DESKTOP-UB05SU4
--  Generated date: Fri Apr 19 10:04:38 2019
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
    core_wen : IN STD_LOGIC;
    fsm_output : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    st_for_for_for_for_1_tr0 : IN STD_LOGIC;
    st_for_for_for_tr0 : IN STD_LOGIC;
    st_for_for_tr0 : IN STD_LOGIC;
    st_for_tr0 : IN STD_LOGIC
  );
END Convolotion_core_fsm;

ARCHITECTURE v1 OF Convolotion_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for Convolotion_core_fsm_1
  TYPE Convolotion_core_fsm_1_ST IS (st_main, st_main_1, st_for_for_for_for, st_for_for_for_for_1,
      st_for_for_for, st_for_for, st_for, st_main_2);

  SIGNAL state_var : Convolotion_core_fsm_1_ST;
  SIGNAL state_var_NS : Convolotion_core_fsm_1_ST;

BEGIN
  -- Default Constant Signal Assignments

  Convolotion_core_fsm_1 : PROCESS (st_for_for_for_for_1_tr0, st_for_for_for_tr0,
      st_for_for_tr0, st_for_tr0, state_var)
  BEGIN
    CASE state_var IS
      WHEN st_main =>
        fsm_output <= STD_LOGIC_VECTOR'("00000001");
        state_var_NS <= st_main_1;
      WHEN st_main_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("00000010");
        state_var_NS <= st_for_for_for_for;
      WHEN st_for_for_for_for =>
        fsm_output <= STD_LOGIC_VECTOR'("00000100");
        state_var_NS <= st_for_for_for_for_1;
      WHEN st_for_for_for_for_1 =>
        fsm_output <= STD_LOGIC_VECTOR'("00001000");
        IF ( st_for_for_for_for_1_tr0 = '1' ) THEN
          state_var_NS <= st_for_for_for;
        ELSE
          state_var_NS <= st_for_for_for_for;
        END IF;
      WHEN st_for_for_for =>
        fsm_output <= STD_LOGIC_VECTOR'("00010000");
        IF ( st_for_for_for_tr0 = '1' ) THEN
          state_var_NS <= st_for_for;
        ELSE
          state_var_NS <= st_for_for_for_for;
        END IF;
      WHEN st_for_for =>
        fsm_output <= STD_LOGIC_VECTOR'("00100000");
        IF ( st_for_for_tr0 = '1' ) THEN
          state_var_NS <= st_for;
        ELSE
          state_var_NS <= st_for_for_for_for;
        END IF;
      WHEN st_for =>
        fsm_output <= STD_LOGIC_VECTOR'("01000000");
        IF ( st_for_tr0 = '1' ) THEN
          state_var_NS <= st_main_2;
        ELSE
          state_var_NS <= st_for_for_for_for;
        END IF;
      WHEN st_main_2 =>
        fsm_output <= STD_LOGIC_VECTOR'("10000000");
        state_var_NS <= st_main;
      WHEN OTHERS =>
        fsm_output <= "00000000";
        state_var_NS <= st_main;
    END CASE;
  END PROCESS Convolotion_core_fsm_1;

  Convolotion_core_fsm_1_REG : PROCESS (clk)
  BEGIN
    IF clk'event AND ( clk = '1' ) THEN
      IF ( rst = '1' ) THEN
        state_var <= st_main;
      ELSE
        IF ( core_wen = '1' ) THEN
          state_var <= state_var_NS;
        END IF;
      END IF;
    END IF;
  END PROCESS Convolotion_core_fsm_1_REG;

END v1;

-- ------------------------------------------------------------------
--  Design Unit:    Convolotion_core_wait_ctrl
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
LIBRARY mgc_hls;
USE mgc_hls.funcs.ALL;
USE work.convolotion_mux_pkg.ALL;


ENTITY Convolotion_core_wait_ctrl IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    core_wen : OUT STD_LOGIC;
    in_rsc_singleport_re_core_sct : OUT STD_LOGIC;
    out_rsc_singleport_we_core_sct : OUT STD_LOGIC;
    mgc_start_sync_mgc_bsync_rv_rd_core_sct : OUT STD_LOGIC;
    mgc_start_sync_mgc_bsync_rv_vd : IN STD_LOGIC;
    mgc_done_sync_mgc_bsync_rdy_rd_core_sct : OUT STD_LOGIC;
    in_rsc_singleport_oswt_1 : IN STD_LOGIC;
    in_rsc_singleport_bcwt_1 : OUT STD_LOGIC;
    out_rsc_singleport_oswt : IN STD_LOGIC;
    mgc_start_sync_mgc_bsync_rv_rd_core_psct : IN STD_LOGIC;
    mgc_done_sync_mgc_bsync_rdy_rd_core_psct : IN STD_LOGIC;
    in_rsc_singleport_oswt_1_pff : IN STD_LOGIC;
    out_rsc_singleport_oswt_pff : IN STD_LOGIC
  );
END Convolotion_core_wait_ctrl;

ARCHITECTURE v1 OF Convolotion_core_wait_ctrl IS
  -- Default Constants

  -- Output Reader Declarations
  SIGNAL core_wen_drv : STD_LOGIC;
  SIGNAL in_rsc_singleport_bcwt_1_drv : STD_LOGIC;

  -- Interconnect Declarations
  SIGNAL in_rsc_singleport_tiswt0_1 : STD_LOGIC;
  SIGNAL in_rsc_singleport_biwt_1 : STD_LOGIC;
  SIGNAL in_rsc_singleport_icwt_1 : STD_LOGIC;
  SIGNAL core_wten : STD_LOGIC;
  SIGNAL out_rsc_singleport_tiswt0 : STD_LOGIC;
  SIGNAL out_rsc_singleport_biwt : STD_LOGIC;
  SIGNAL out_rsc_singleport_icwt : STD_LOGIC;
  SIGNAL out_rsc_singleport_bcwt : STD_LOGIC;
  SIGNAL mgc_start_sync_mgc_bsync_rv_ogwt : STD_LOGIC;
  SIGNAL mgc_start_sync_mgc_bsync_rv_pdswt0 : STD_LOGIC;
  SIGNAL mgc_start_sync_mgc_bsync_rv_biwt : STD_LOGIC;
  SIGNAL mgc_start_sync_mgc_bsync_rv_icwt : STD_LOGIC;
  SIGNAL mgc_start_sync_mgc_bsync_rv_bcwt : STD_LOGIC;
  SIGNAL mgc_done_sync_mgc_bsync_rdy_ogwt : STD_LOGIC;
  SIGNAL mgc_done_sync_mgc_bsync_rdy_pdswt0 : STD_LOGIC;
  SIGNAL mgc_done_sync_mgc_bsync_rdy_icwt : STD_LOGIC;
  SIGNAL mgc_done_sync_mgc_bsync_rdy_bcwt : STD_LOGIC;

BEGIN
  -- Default Constant Signal Assignments

  -- Output Reader Assignments
  core_wen <= core_wen_drv;
  in_rsc_singleport_bcwt_1 <= in_rsc_singleport_bcwt_1_drv;

  in_rsc_singleport_tiswt0_1 <= (NOT core_wten) AND in_rsc_singleport_oswt_1;
  in_rsc_singleport_biwt_1 <= in_rsc_singleport_tiswt0_1 OR in_rsc_singleport_icwt_1;
  out_rsc_singleport_tiswt0 <= (NOT core_wten) AND out_rsc_singleport_oswt;
  out_rsc_singleport_biwt <= out_rsc_singleport_tiswt0 OR out_rsc_singleport_icwt;
  mgc_start_sync_mgc_bsync_rv_pdswt0 <= (NOT core_wten) AND mgc_start_sync_mgc_bsync_rv_rd_core_psct;
  mgc_start_sync_mgc_bsync_rv_biwt <= mgc_start_sync_mgc_bsync_rv_ogwt AND mgc_start_sync_mgc_bsync_rv_vd;
  mgc_start_sync_mgc_bsync_rv_ogwt <= mgc_start_sync_mgc_bsync_rv_pdswt0 OR mgc_start_sync_mgc_bsync_rv_icwt;
  mgc_start_sync_mgc_bsync_rv_rd_core_sct <= mgc_start_sync_mgc_bsync_rv_rd_core_psct
      AND mgc_start_sync_mgc_bsync_rv_ogwt;
  mgc_done_sync_mgc_bsync_rdy_pdswt0 <= (NOT core_wten) AND mgc_done_sync_mgc_bsync_rdy_rd_core_psct;
  mgc_done_sync_mgc_bsync_rdy_ogwt <= mgc_done_sync_mgc_bsync_rdy_pdswt0 OR mgc_done_sync_mgc_bsync_rdy_icwt;
  mgc_done_sync_mgc_bsync_rdy_rd_core_sct <= mgc_done_sync_mgc_bsync_rdy_rd_core_psct
      AND mgc_done_sync_mgc_bsync_rdy_ogwt;
  core_wen_drv <= ((NOT in_rsc_singleport_oswt_1) OR in_rsc_singleport_biwt_1 OR
      in_rsc_singleport_bcwt_1_drv) AND ((NOT out_rsc_singleport_oswt) OR out_rsc_singleport_biwt
      OR out_rsc_singleport_bcwt) AND ((NOT mgc_start_sync_mgc_bsync_rv_rd_core_psct)
      OR mgc_start_sync_mgc_bsync_rv_biwt OR mgc_start_sync_mgc_bsync_rv_bcwt) AND
      ((NOT mgc_done_sync_mgc_bsync_rdy_rd_core_psct) OR mgc_done_sync_mgc_bsync_rdy_ogwt
      OR mgc_done_sync_mgc_bsync_rdy_bcwt);
  in_rsc_singleport_re_core_sct <= in_rsc_singleport_oswt_1_pff AND core_wen_drv;
  out_rsc_singleport_we_core_sct <= out_rsc_singleport_oswt_pff AND core_wen_drv;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        in_rsc_singleport_icwt_1 <= '0';
        in_rsc_singleport_bcwt_1_drv <= '0';
        out_rsc_singleport_icwt <= '0';
        out_rsc_singleport_bcwt <= '0';
        mgc_start_sync_mgc_bsync_rv_icwt <= '0';
        mgc_start_sync_mgc_bsync_rv_bcwt <= '0';
        mgc_done_sync_mgc_bsync_rdy_icwt <= '0';
        mgc_done_sync_mgc_bsync_rdy_bcwt <= '0';
        core_wten <= '0';
      ELSE
        in_rsc_singleport_icwt_1 <= in_rsc_singleport_icwt_1 XOR in_rsc_singleport_tiswt0_1
            XOR in_rsc_singleport_biwt_1;
        in_rsc_singleport_bcwt_1_drv <= in_rsc_singleport_bcwt_1_drv XOR in_rsc_singleport_biwt_1
            XOR (in_rsc_singleport_oswt_1 AND core_wen_drv);
        out_rsc_singleport_icwt <= out_rsc_singleport_icwt XOR out_rsc_singleport_tiswt0
            XOR out_rsc_singleport_biwt;
        out_rsc_singleport_bcwt <= out_rsc_singleport_bcwt XOR out_rsc_singleport_biwt
            XOR (out_rsc_singleport_oswt AND core_wen_drv);
        mgc_start_sync_mgc_bsync_rv_icwt <= mgc_start_sync_mgc_bsync_rv_icwt XOR
            mgc_start_sync_mgc_bsync_rv_pdswt0 XOR mgc_start_sync_mgc_bsync_rv_biwt;
        mgc_start_sync_mgc_bsync_rv_bcwt <= mgc_start_sync_mgc_bsync_rv_bcwt XOR
            mgc_start_sync_mgc_bsync_rv_biwt XOR (mgc_start_sync_mgc_bsync_rv_rd_core_psct
            AND core_wen_drv);
        mgc_done_sync_mgc_bsync_rdy_icwt <= mgc_done_sync_mgc_bsync_rdy_icwt XOR
            mgc_done_sync_mgc_bsync_rdy_pdswt0 XOR mgc_done_sync_mgc_bsync_rdy_ogwt;
        mgc_done_sync_mgc_bsync_rdy_bcwt <= mgc_done_sync_mgc_bsync_rdy_bcwt XOR
            mgc_done_sync_mgc_bsync_rdy_ogwt XOR (mgc_done_sync_mgc_bsync_rdy_rd_core_psct
            AND core_wen_drv);
        core_wten <= NOT core_wen_drv;
      END IF;
    END IF;
  END PROCESS;
END v1;

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
    in_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    in_rsc_singleport_addr_core : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
    in_rsc_singleport_re_core_sct : OUT STD_LOGIC;
    out_rsc_singleport_data_in_core : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    out_rsc_singleport_addr_core : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
    out_rsc_singleport_we_core_sct : OUT STD_LOGIC;
    mgc_start_sync_mgc_bsync_rv_rd_core_sct : OUT STD_LOGIC;
    mgc_start_sync_mgc_bsync_rv_vd : IN STD_LOGIC;
    mgc_done_sync_mgc_bsync_rdy_rd_core_sct : OUT STD_LOGIC
  );
END Convolotion_core;

ARCHITECTURE v1 OF Convolotion_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL in_rsc_singleport_bcwt_1 : STD_LOGIC;
  SIGNAL in_rsc_singleport_data_out_mxwt : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL in_rsc_singleport_data_out_bfwt : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL core_wen : STD_LOGIC;
  SIGNAL fsm_output : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL or_dcpl_18 : STD_LOGIC;
  SIGNAL or_dcpl_21 : STD_LOGIC;
  SIGNAL and_dcpl_14 : STD_LOGIC;
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
  SIGNAL or_28_cse : STD_LOGIC;
  SIGNAL or_30_cse : STD_LOGIC;
  SIGNAL reg_done_sync_mgc_bsync_rdy_iswt0_cse : STD_LOGIC;
  SIGNAL reg_start_sync_mgc_bsync_rv_iswt0_cse : STD_LOGIC;
  SIGNAL reg_out_rsc_singleport_we_core_psct_cse : STD_LOGIC;
  SIGNAL reg_in_rsc_singleport_re_core_psct_cse : STD_LOGIC;
  SIGNAL in_rsc_singleport_re_core_sct_reg : STD_LOGIC;
  SIGNAL and_12_rmff : STD_LOGIC;
  SIGNAL out_rsc_singleport_we_core_sct_reg : STD_LOGIC;
  SIGNAL and_8_rmff : STD_LOGIC;
  SIGNAL for_for_for_for_oelse_2_acc_itm : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL z_out : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL z_out_1 : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL z_out_2 : STD_LOGIC_VECTOR (10 DOWNTO 0);
  SIGNAL z_out_3 : STD_LOGIC_VECTOR (10 DOWNTO 0);
  SIGNAL for_for_for_for_else_acc_6_sdt : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL for_for_for_for_else_ac_fixed_cctor_sva : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL slc_sat_sva : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL nor_3_cse : STD_LOGIC;
  SIGNAL for_for_for_for_else_acc_7_itm : STD_LOGIC_VECTOR (2 DOWNTO 0);

  SIGNAL mux_12_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL mux_9_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL mux_11_nl : STD_LOGIC_VECTOR (1 DOWNTO 0);
  COMPONENT Convolotion_core_wait_ctrl
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      core_wen : OUT STD_LOGIC;
      in_rsc_singleport_re_core_sct : OUT STD_LOGIC;
      out_rsc_singleport_we_core_sct : OUT STD_LOGIC;
      mgc_start_sync_mgc_bsync_rv_rd_core_sct : OUT STD_LOGIC;
      mgc_start_sync_mgc_bsync_rv_vd : IN STD_LOGIC;
      mgc_done_sync_mgc_bsync_rdy_rd_core_sct : OUT STD_LOGIC;
      in_rsc_singleport_oswt_1 : IN STD_LOGIC;
      in_rsc_singleport_bcwt_1 : OUT STD_LOGIC;
      out_rsc_singleport_oswt : IN STD_LOGIC;
      mgc_start_sync_mgc_bsync_rv_rd_core_psct : IN STD_LOGIC;
      mgc_done_sync_mgc_bsync_rdy_rd_core_psct : IN STD_LOGIC;
      in_rsc_singleport_oswt_1_pff : IN STD_LOGIC;
      out_rsc_singleport_oswt_pff : IN STD_LOGIC
    );
  END COMPONENT;
  COMPONENT Convolotion_core_fsm
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      core_wen : IN STD_LOGIC;
      fsm_output : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      st_for_for_for_for_1_tr0 : IN STD_LOGIC;
      st_for_for_for_tr0 : IN STD_LOGIC;
      st_for_for_tr0 : IN STD_LOGIC;
      st_for_tr0 : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL Convolotion_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Convolotion_core_fsm_inst_st_for_for_for_for_1_tr0 : STD_LOGIC;
  SIGNAL Convolotion_core_fsm_inst_st_for_for_for_tr0 : STD_LOGIC;
  SIGNAL Convolotion_core_fsm_inst_st_for_for_tr0 : STD_LOGIC;
  SIGNAL Convolotion_core_fsm_inst_st_for_tr0 : STD_LOGIC;

BEGIN
  -- Default Constant Signal Assignments

  Convolotion_core_wait_ctrl_inst : convolotion_core_wait_ctrl
    PORT MAP(
      clk => clk,
      rst => rst,
      core_wen => core_wen,
      in_rsc_singleport_re_core_sct => in_rsc_singleport_re_core_sct_reg,
      out_rsc_singleport_we_core_sct => out_rsc_singleport_we_core_sct_reg,
      mgc_start_sync_mgc_bsync_rv_rd_core_sct => mgc_start_sync_mgc_bsync_rv_rd_core_sct,
      mgc_start_sync_mgc_bsync_rv_vd => mgc_start_sync_mgc_bsync_rv_vd,
      mgc_done_sync_mgc_bsync_rdy_rd_core_sct => mgc_done_sync_mgc_bsync_rdy_rd_core_sct,
      in_rsc_singleport_oswt_1 => reg_in_rsc_singleport_re_core_psct_cse,
      in_rsc_singleport_bcwt_1 => in_rsc_singleport_bcwt_1,
      out_rsc_singleport_oswt => reg_out_rsc_singleport_we_core_psct_cse,
      mgc_start_sync_mgc_bsync_rv_rd_core_psct => reg_start_sync_mgc_bsync_rv_iswt0_cse,
      mgc_done_sync_mgc_bsync_rdy_rd_core_psct => reg_done_sync_mgc_bsync_rdy_iswt0_cse,
      in_rsc_singleport_oswt_1_pff => and_12_rmff,
      out_rsc_singleport_oswt_pff => and_8_rmff
    );
  Convolotion_core_fsm_inst : convolotion_core_fsm
    PORT MAP(
      clk => clk,
      rst => rst,
      core_wen => core_wen,
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

  in_rsc_singleport_data_out_mxwt <= MUX_v_8_2_2(in_rsc_singleport_data_out & in_rsc_singleport_data_out_bfwt,
      in_rsc_singleport_bcwt_1);
  nor_3_cse <= NOT((fsm_output(1)) OR (fsm_output(6)));
  and_8_rmff <= (fsm_output(4)) AND (NOT (z_out_1(1)));
  and_12_rmff <= (NOT((z_out_3(9)) OR (z_out_3(10)) OR (z_out_2(10)))) AND (NOT (for_for_for_for_oelse_2_acc_itm(1)))
      AND (fsm_output(2));
  for_for_for_for_else_acc_6_sdt <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Krow_1_reg),
      3) + CONV_UNSIGNED(UNSIGNED(Kcolumn_1_sva), 3), 3));
  for_for_for_for_oelse_2_acc_itm <= STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(NOT (z_out_2(10
      DOWNTO 9))) + CONV_SIGNED(CONV_UNSIGNED('1', 1), 2), 2));
  for_for_for_for_else_acc_7_itm <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(for_for_for_for_else_acc_6_sdt(2
      DOWNTO 1)), 3) + CONV_UNSIGNED(UNSIGNED(Krow_1_reg), 3), 3));
  for_for_for_for_else_ac_fixed_cctor_sva <= (slc_sat_sva(7 DOWNTO 0)) OR STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(slc_sat_sva(8),
      1),8));
  slc_sat_sva <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(TO_STDLOGICVECTOR(Result_sg2_lpi_4_reg)
      & Result_sg1_lpi_4_reg & TO_STDLOGICVECTOR(Result_1_lpi_4_reg)), 9) + CONV_UNSIGNED(UNSIGNED(readslice(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED'(UNSIGNED(in_rsc_singleport_data_out_mxwt)
      * UNSIGNED(for_for_for_for_else_mux_itm & TO_STDLOGICVECTOR('0') & STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(for_for_for_for_else_mux_1_itm,
      1),2)))), 12)), 7, 5)), 9), 9));
  or_dcpl_18 <= (fsm_output(6)) OR (fsm_output(4));
  or_dcpl_21 <= (fsm_output(5)) OR (fsm_output(1));
  or_28_cse <= or_dcpl_21 OR (fsm_output(6));
  and_dcpl_14 <= NOT((fsm_output(5)) OR (fsm_output(1)));
  or_30_cse <= ((fsm_output(3)) AND for_for_for_for_lor_lpi_4_dfm_st) OR (fsm_output(4))
      OR (fsm_output(2));
  in_rsc_singleport_addr_core <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out_2(8
      DOWNTO 0)) + CONV_UNSIGNED(SIGNED(z_out_3(10 DOWNTO 9)), 9), 9)) & (z_out_3(8
      DOWNTO 0));
  in_rsc_singleport_re_core_sct <= in_rsc_singleport_re_core_sct_reg;
  out_rsc_singleport_data_in_core <= TO_STDLOGICVECTOR(Result_sg2_lpi_4_reg) & Result_sg1_lpi_4_reg
      & TO_STDLOGICVECTOR(Result_1_lpi_4_reg);
  out_rsc_singleport_addr_core <= Drow_1_sva_2 & Dcolumn_1_sva_2;
  out_rsc_singleport_we_core_sct <= out_rsc_singleport_we_core_sct_reg;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        in_rsc_singleport_data_out_bfwt <= STD_LOGIC_VECTOR'("00000000");
      ELSE
        in_rsc_singleport_data_out_bfwt <= in_rsc_singleport_data_out_mxwt;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        Dcolumn_1_sva_2 <= STD_LOGIC_VECTOR'("000000000");
        reg_done_sync_mgc_bsync_rdy_iswt0_cse <= '0';
        reg_start_sync_mgc_bsync_rv_iswt0_cse <= '0';
        reg_out_rsc_singleport_we_core_psct_cse <= '0';
        reg_in_rsc_singleport_re_core_psct_cse <= '0';
        Krow_1_reg <= STD_LOGIC_VECTOR'("00");
        Kcolumn_1_sva <= STD_LOGIC_VECTOR'("00");
        Result_1_lpi_4_reg <= '0';
        Result_sg1_lpi_4_reg <= STD_LOGIC_VECTOR'("000000");
        Result_sg2_lpi_4_reg <= '0';
        Drow_1_sva_2 <= STD_LOGIC_VECTOR'("000000000");
        for_for_for_for_else_mux_1_itm <= '0';
        for_for_for_for_else_mux_itm <= STD_LOGIC_VECTOR'("00");
        for_for_for_for_slc_itm <= '0';
        for_for_for_for_lor_lpi_4_dfm_st <= '0';
      ELSIF ( core_wen = '1' ) THEN
        Dcolumn_1_sva_2 <= (MUX_v_9_2_2((z_out_3(8 DOWNTO 0)) & Dcolumn_1_sva_2,
            nor_3_cse)) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT (fsm_output(1)),
            1),9));
        reg_done_sync_mgc_bsync_rdy_iswt0_cse <= (z_out_3(9)) AND (fsm_output(6));
        reg_start_sync_mgc_bsync_rv_iswt0_cse <= NOT(or_dcpl_21 OR (fsm_output(3))
            OR (fsm_output(7)) OR or_dcpl_18 OR (fsm_output(2)));
        reg_out_rsc_singleport_we_core_psct_cse <= and_8_rmff;
        reg_in_rsc_singleport_re_core_psct_cse <= and_12_rmff;
        Krow_1_reg <= (MUX_v_2_2_2(z_out & Krow_1_reg, fsm_output(3))) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT(or_dcpl_21
            OR or_dcpl_18), 1),2));
        Kcolumn_1_sva <= (MUX_v_2_2_2(z_out & Kcolumn_1_sva, and_dcpl_14 AND (NOT((fsm_output(6))
            OR (fsm_output(4)))))) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
            or_28_cse, 1),2));
        Result_1_lpi_4_reg <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'((for_for_for_for_else_ac_fixed_cctor_sva(0))
            & Result_1_lpi_4_reg), or_30_cse)) AND (NOT or_28_cse);
        Result_sg1_lpi_4_reg <= (MUX_v_6_2_2((for_for_for_for_else_ac_fixed_cctor_sva(6
            DOWNTO 1)) & Result_sg1_lpi_4_reg, or_30_cse)) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
            or_28_cse, 1),6));
        Result_sg2_lpi_4_reg <= (MUX_s_1_2_2(STD_LOGIC_VECTOR'((for_for_for_for_else_ac_fixed_cctor_sva(7))
            & Result_sg2_lpi_4_reg), or_30_cse)) AND (NOT or_28_cse);
        Drow_1_sva_2 <= (MUX_v_9_2_2((z_out_2(8 DOWNTO 0)) & Drow_1_sva_2, and_dcpl_14
            AND (NOT (fsm_output(6))))) AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(nor_3_cse,
            1),9));
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
  mux_12_nl <= MUX_v_2_2_2(Krow_1_reg & Kcolumn_1_sva, fsm_output(4));
  z_out <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(mux_12_nl) + UNSIGNED'("01"),
      2));
  z_out_1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(z_out) + UNSIGNED'("01"), 2));
  mux_9_nl <= MUX_v_2_2_2(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(Krow_1_reg) + CONV_SIGNED(CONV_SIGNED('1',
      1), 2), 2)) & STD_LOGIC_VECTOR'("01"), fsm_output(5));
  z_out_2 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Drow_1_sva_2),
      11) + CONV_UNSIGNED(SIGNED(mux_9_nl), 11), 11));
  mux_11_nl <= MUX_v_2_2_2(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(Kcolumn_1_sva) + CONV_SIGNED(CONV_SIGNED('1',
      1), 2), 2)) & STD_LOGIC_VECTOR'("01"), fsm_output(6));
  z_out_3 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Dcolumn_1_sva_2),
      11) + CONV_UNSIGNED(SIGNED(mux_11_nl), 11), 11));
END v1;

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
    start : IN STD_LOGIC;
    ready : OUT STD_LOGIC;
    done : OUT STD_LOGIC;
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

ARCHITECTURE v1 OF Convolotion IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL in_rsc_singleport_addr_core : STD_LOGIC_VECTOR (17 DOWNTO 0);
  SIGNAL in_rsc_singleport_re_core_sct : STD_LOGIC;
  SIGNAL out_rsc_singleport_data_in_core : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL out_rsc_singleport_addr_core : STD_LOGIC_VECTOR (17 DOWNTO 0);
  SIGNAL out_rsc_singleport_we_core_sct : STD_LOGIC;
  SIGNAL mgc_start_sync_mgc_bsync_rv_rd_core_sct : STD_LOGIC;
  SIGNAL mgc_start_sync_mgc_bsync_rv_vd : STD_LOGIC;
  SIGNAL mgc_done_sync_mgc_bsync_rdy_rd_core_sct : STD_LOGIC;

  COMPONENT Convolotion_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      in_rsc_singleport_data_out : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      in_rsc_singleport_addr_core : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
      in_rsc_singleport_re_core_sct : OUT STD_LOGIC;
      out_rsc_singleport_data_in_core : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      out_rsc_singleport_addr_core : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
      out_rsc_singleport_we_core_sct : OUT STD_LOGIC;
      mgc_start_sync_mgc_bsync_rv_rd_core_sct : OUT STD_LOGIC;
      mgc_start_sync_mgc_bsync_rv_vd : IN STD_LOGIC;
      mgc_done_sync_mgc_bsync_rdy_rd_core_sct : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL Convolotion_core_inst_in_rsc_singleport_data_out : STD_LOGIC_VECTOR (7 DOWNTO
      0);
  SIGNAL Convolotion_core_inst_in_rsc_singleport_addr_core : STD_LOGIC_VECTOR (17
      DOWNTO 0);
  SIGNAL Convolotion_core_inst_out_rsc_singleport_data_in_core : STD_LOGIC_VECTOR
      (7 DOWNTO 0);
  SIGNAL Convolotion_core_inst_out_rsc_singleport_addr_core : STD_LOGIC_VECTOR (17
      DOWNTO 0);

BEGIN
  -- Default Constant Signal Assignments

  mgc_start_sync_mgc_bsync_rv : mgc_hls.mgc_ioport_comps.mgc_bsync_rv
    GENERIC MAP(
      rscid => 4,
      ready => 1,
      valid => 1
      )
    PORT MAP(
      rd => mgc_start_sync_mgc_bsync_rv_rd_core_sct,
      vd => mgc_start_sync_mgc_bsync_rv_vd,
      rz => ready,
      vz => start
    );
  mgc_done_sync_mgc_bsync_rdy : mgc_hls.mgc_ioport_comps.mgc_bsync_rdy
    GENERIC MAP(
      rscid => 5,
      ready => 1,
      valid => 0
      )
    PORT MAP(
      rd => mgc_done_sync_mgc_bsync_rdy_rd_core_sct,
      rz => done
    );
  Convolotion_core_inst : convolotion_core
    PORT MAP(
      clk => clk,
      rst => rst,
      in_rsc_singleport_data_out => Convolotion_core_inst_in_rsc_singleport_data_out,
      in_rsc_singleport_addr_core => Convolotion_core_inst_in_rsc_singleport_addr_core,
      in_rsc_singleport_re_core_sct => in_rsc_singleport_re_core_sct,
      out_rsc_singleport_data_in_core => Convolotion_core_inst_out_rsc_singleport_data_in_core,
      out_rsc_singleport_addr_core => Convolotion_core_inst_out_rsc_singleport_addr_core,
      out_rsc_singleport_we_core_sct => out_rsc_singleport_we_core_sct,
      mgc_start_sync_mgc_bsync_rv_rd_core_sct => mgc_start_sync_mgc_bsync_rv_rd_core_sct,
      mgc_start_sync_mgc_bsync_rv_vd => mgc_start_sync_mgc_bsync_rv_vd,
      mgc_done_sync_mgc_bsync_rdy_rd_core_sct => mgc_done_sync_mgc_bsync_rdy_rd_core_sct
    );
  Convolotion_core_inst_in_rsc_singleport_data_out <= in_rsc_singleport_data_out;
  in_rsc_singleport_addr_core <= Convolotion_core_inst_in_rsc_singleport_addr_core;
  out_rsc_singleport_data_in_core <= Convolotion_core_inst_out_rsc_singleport_data_in_core;
  out_rsc_singleport_addr_core <= Convolotion_core_inst_out_rsc_singleport_addr_core;

  in_rsc_singleport_data_in <= STD_LOGIC_VECTOR'("00000000");
  in_rsc_singleport_addr <= in_rsc_singleport_addr_core;
  in_rsc_singleport_re <= NOT in_rsc_singleport_re_core_sct;
  in_rsc_singleport_we <= '1';
  out_rsc_singleport_data_in <= out_rsc_singleport_data_in_core;
  out_rsc_singleport_addr <= out_rsc_singleport_addr_core;
  out_rsc_singleport_re <= '1';
  out_rsc_singleport_we <= NOT out_rsc_singleport_we_core_sct;
END v1;



