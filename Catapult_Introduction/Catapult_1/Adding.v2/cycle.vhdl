-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    2011a.41 Production Release
--  HLS Date:       Thu Apr  7 20:28:55 PDT 2011
-- 
--  Generated by:   ss@DESKTOP-UB05SU4
--  Generated date: Tue Apr 09 15:50:27 2019
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    Adding_core
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
LIBRARY mgc_hls;
USE mgc_hls.funcs.ALL;
USE work.adding_mux_pkg.ALL;


ENTITY Adding_core IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    A_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    B_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    C_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    D_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    E_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    Temp_rsc_mgc_out_stdreg_d : OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
  );
END Adding_core;

ARCHITECTURE v2 OF Adding_core IS
  -- Default Constants

BEGIN
  -- Default Constant Signal Assignments

  core : PROCESS
    -- Interconnect Declarations
    VARIABLE out_i_1_lpi : STD_LOGIC_VECTOR (3 DOWNTO 0);
    VARIABLE in_i_1_lpi : STD_LOGIC_VECTOR (2 DOWNTO 0);
    VARIABLE exit_out_1_lpi : STD_LOGIC;
    VARIABLE A_1_lpi_dfm : STD_LOGIC_VECTOR (7 DOWNTO 0);
    VARIABLE B_1_lpi_dfm : STD_LOGIC_VECTOR (7 DOWNTO 0);
    VARIABLE C_1_lpi_dfm : STD_LOGIC_VECTOR (7 DOWNTO 0);
    VARIABLE D_1_lpi_dfm : STD_LOGIC_VECTOR (7 DOWNTO 0);
    VARIABLE E_1_lpi_dfm : STD_LOGIC_VECTOR (7 DOWNTO 0);
    VARIABLE out_i_1_lpi_dfm : STD_LOGIC_VECTOR (3 DOWNTO 0);
    VARIABLE Temp2_sva_1 : STD_LOGIC_VECTOR (63 DOWNTO 0);
    VARIABLE in_i_1_sva_1 : STD_LOGIC_VECTOR (2 DOWNTO 0);
    VARIABLE exit_in_sva : STD_LOGIC;
    VARIABLE out_i_1_sva_1 : STD_LOGIC_VECTOR (3 DOWNTO 0);
    VARIABLE exit_out_sva_1 : STD_LOGIC;
    VARIABLE in_i_1_lpi_dfm_1 : STD_LOGIC_VECTOR (2 DOWNTO 0);
    VARIABLE Temp2_lpi_dfm_1 : STD_LOGIC_VECTOR (63 DOWNTO 0);
    VARIABLE exit_out_lpi_dfm_2 : STD_LOGIC;
    VARIABLE exit_out_1_sva : STD_LOGIC;
    VARIABLE out_mul_1_itm : STD_LOGIC_VECTOR (15 DOWNTO 0);

  BEGIN
    main : LOOP
      -- C-Step 0 of Loop 'main'
      WAIT UNTIL clk'EVENT AND ( clk = '1' );
      EXIT main WHEN ( rst = '1' );
      -- C-Step 1 of Loop 'main'
      in_i_1_lpi_dfm_1 := STD_LOGIC_VECTOR'("000");
      out_i_1_sva_1 := STD_LOGIC_VECTOR'("0000");
      IF ( exit_out_1_lpi = '1' ) THEN
        A_1_lpi_dfm := A_rsc_mgc_in_wire_d;
        B_1_lpi_dfm := B_rsc_mgc_in_wire_d;
        C_1_lpi_dfm := C_rsc_mgc_in_wire_d;
        D_1_lpi_dfm := D_rsc_mgc_in_wire_d;
        E_1_lpi_dfm := E_rsc_mgc_in_wire_d;
      END IF;
      out_i_1_lpi_dfm := out_i_1_lpi AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
          exit_out_1_lpi, 1),4));
      Temp2_sva_1 := STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(Temp2_lpi_dfm_1) + CONV_UNSIGNED(UNSIGNED(readslice(STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(A_1_lpi_dfm),
          9) + CONV_UNSIGNED(UNSIGNED(B_1_lpi_dfm(7 DOWNTO 1)), 9), 9)) & TO_STDLOGICVECTOR(B_1_lpi_dfm(0))),
          11) + CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(C_1_lpi_dfm), 9) + CONV_UNSIGNED(UNSIGNED(D_1_lpi_dfm),
          9), 11), 11)), 2, 9)), 64), 64));
      in_i_1_sva_1 := STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(in_i_1_lpi AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(NOT
          exit_out_1_lpi, 1),3))) + CONV_UNSIGNED(CONV_UNSIGNED('1', 1), 3), 3));
      exit_in_sva := NOT (readindex(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(TO_STDLOGICVECTOR('1')
          & (in_i_1_sva_1(2 DOWNTO 1))) + CONV_SIGNED(CONV_UNSIGNED('1', 1), 3),
          3)), 2));
      IF ( exit_in_sva = '1' ) THEN
        out_mul_1_itm := STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED'(UNSIGNED(E_1_lpi_dfm)
            * UNSIGNED(E_1_lpi_dfm)), 16));
        out_i_1_sva_1 := STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(out_i_1_lpi_dfm)
            + CONV_UNSIGNED(CONV_UNSIGNED('1', 1), 4), 4));
        exit_out_sva_1 := NOT (readindex(STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(UNSIGNED(out_i_1_sva_1),
            5) + SIGNED'("10101"), 5)), 4));
        in_i_1_lpi_dfm_1 := in_i_1_sva_1 AND STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(exit_out_sva_1,
            1),3));
        exit_out_lpi_dfm_2 := exit_out_sva_1;
      ELSE
        exit_out_lpi_dfm_2 := exit_out_lpi_dfm_2 AND (NOT exit_out_1_lpi);
      END IF;
      exit_out_1_sva := exit_in_sva AND exit_out_lpi_dfm_2;
      out_i_1_lpi := MUX_v_4_2_2(out_i_1_lpi_dfm & out_i_1_sva_1, exit_in_sva);
      in_i_1_lpi := MUX_v_3_2_2(in_i_1_sva_1 & in_i_1_lpi_dfm_1, exit_in_sva);
      exit_out_1_lpi := exit_out_1_sva;
      WAIT UNTIL clk'EVENT AND ( clk = '1' );
      EXIT main WHEN ( rst = '1' );
      -- C-Step 2 of Loop 'main'
      IF ( exit_in_sva = '1' ) THEN
        Temp2_lpi_dfm_1 := STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED'(UNSIGNED(Temp2_sva_1)
            * UNSIGNED(out_mul_1_itm)), 64));
      ELSE
        Temp2_lpi_dfm_1 := Temp2_sva_1;
      END IF;
      IF ( exit_out_1_sva = '1' ) THEN
        Temp_rsc_mgc_out_stdreg_d <= Temp2_lpi_dfm_1;
      END IF;
    END LOOP main;

    out_mul_1_itm := STD_LOGIC_VECTOR'("0000000000000000");
    exit_out_1_sva := '0';
    exit_out_lpi_dfm_2 := '0';
    Temp2_lpi_dfm_1 := STD_LOGIC_VECTOR'("0000000000000000000000000000000000000000000000000000000000000000");
    in_i_1_lpi_dfm_1 := STD_LOGIC_VECTOR'("000");
    exit_out_sva_1 := '0';
    out_i_1_sva_1 := STD_LOGIC_VECTOR'("0000");
    exit_in_sva := '0';
    in_i_1_sva_1 := STD_LOGIC_VECTOR'("000");
    Temp2_sva_1 := STD_LOGIC_VECTOR'("0000000000000000000000000000000000000000000000000000000000000000");
    out_i_1_lpi_dfm := STD_LOGIC_VECTOR'("0000");
    E_1_lpi_dfm := STD_LOGIC_VECTOR'("00000000");
    D_1_lpi_dfm := STD_LOGIC_VECTOR'("00000000");
    C_1_lpi_dfm := STD_LOGIC_VECTOR'("00000000");
    B_1_lpi_dfm := STD_LOGIC_VECTOR'("00000000");
    A_1_lpi_dfm := STD_LOGIC_VECTOR'("00000000");
    exit_out_1_lpi := '0';
    in_i_1_lpi := STD_LOGIC_VECTOR'("000");
    out_i_1_lpi := STD_LOGIC_VECTOR'("0000");
    Temp_rsc_mgc_out_stdreg_d <= STD_LOGIC_VECTOR'("0000000000000000000000000000000000000000000000000000000000000000");
    out_i_1_lpi := STD_LOGIC_VECTOR'("0000");
    in_i_1_lpi := STD_LOGIC_VECTOR'("000");
    exit_out_1_lpi := '1';
  END PROCESS core;

END v2;

-- ------------------------------------------------------------------
--  Design Unit:    Adding
--  Generated from file(s):
--    2) $PROJECT_HOME/ESL.c
-- ------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
LIBRARY mgc_hls;
USE mgc_hls.funcs.ALL;
USE work.adding_mux_pkg.ALL;


ENTITY Adding IS
  PORT(
    A_rsc_z : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    B_rsc_z : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    C_rsc_z : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    D_rsc_z : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    E_rsc_z : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    Temp_rsc_z : OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC
  );
END Adding;

ARCHITECTURE v2 OF Adding IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL A_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL B_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL C_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL D_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL E_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Temp_rsc_mgc_out_stdreg_d : STD_LOGIC_VECTOR (63 DOWNTO 0);

  SIGNAL A_rsc_mgc_in_wire_d_1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL A_rsc_mgc_in_wire_z : STD_LOGIC_VECTOR (7 DOWNTO 0);

  SIGNAL B_rsc_mgc_in_wire_d_1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL B_rsc_mgc_in_wire_z : STD_LOGIC_VECTOR (7 DOWNTO 0);

  SIGNAL C_rsc_mgc_in_wire_d_1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL C_rsc_mgc_in_wire_z : STD_LOGIC_VECTOR (7 DOWNTO 0);

  SIGNAL D_rsc_mgc_in_wire_d_1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL D_rsc_mgc_in_wire_z : STD_LOGIC_VECTOR (7 DOWNTO 0);

  SIGNAL E_rsc_mgc_in_wire_d_1 : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL E_rsc_mgc_in_wire_z : STD_LOGIC_VECTOR (7 DOWNTO 0);

  SIGNAL Temp_rsc_mgc_out_stdreg_d_1 : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL Temp_rsc_mgc_out_stdreg_z : STD_LOGIC_VECTOR (63 DOWNTO 0);

  COMPONENT Adding_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      A_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      B_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      C_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      D_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      E_rsc_mgc_in_wire_d : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      Temp_rsc_mgc_out_stdreg_d : OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL Adding_core_inst_A_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Adding_core_inst_B_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Adding_core_inst_C_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Adding_core_inst_D_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Adding_core_inst_E_rsc_mgc_in_wire_d : STD_LOGIC_VECTOR (7 DOWNTO 0);
  SIGNAL Adding_core_inst_Temp_rsc_mgc_out_stdreg_d : STD_LOGIC_VECTOR (63 DOWNTO
      0);

BEGIN
  -- Default Constant Signal Assignments

  A_rsc_mgc_in_wire : mgc_hls.mgc_ioport_comps.mgc_in_wire
    GENERIC MAP(
      rscid => 1,
      width => 8
      )
    PORT MAP(
      d => A_rsc_mgc_in_wire_d_1,
      z => A_rsc_mgc_in_wire_z
    );
  A_rsc_mgc_in_wire_d <= A_rsc_mgc_in_wire_d_1;
  A_rsc_mgc_in_wire_z <= A_rsc_z;

  B_rsc_mgc_in_wire : mgc_hls.mgc_ioport_comps.mgc_in_wire
    GENERIC MAP(
      rscid => 2,
      width => 8
      )
    PORT MAP(
      d => B_rsc_mgc_in_wire_d_1,
      z => B_rsc_mgc_in_wire_z
    );
  B_rsc_mgc_in_wire_d <= B_rsc_mgc_in_wire_d_1;
  B_rsc_mgc_in_wire_z <= B_rsc_z;

  C_rsc_mgc_in_wire : mgc_hls.mgc_ioport_comps.mgc_in_wire
    GENERIC MAP(
      rscid => 3,
      width => 8
      )
    PORT MAP(
      d => C_rsc_mgc_in_wire_d_1,
      z => C_rsc_mgc_in_wire_z
    );
  C_rsc_mgc_in_wire_d <= C_rsc_mgc_in_wire_d_1;
  C_rsc_mgc_in_wire_z <= C_rsc_z;

  D_rsc_mgc_in_wire : mgc_hls.mgc_ioport_comps.mgc_in_wire
    GENERIC MAP(
      rscid => 4,
      width => 8
      )
    PORT MAP(
      d => D_rsc_mgc_in_wire_d_1,
      z => D_rsc_mgc_in_wire_z
    );
  D_rsc_mgc_in_wire_d <= D_rsc_mgc_in_wire_d_1;
  D_rsc_mgc_in_wire_z <= D_rsc_z;

  E_rsc_mgc_in_wire : mgc_hls.mgc_ioport_comps.mgc_in_wire
    GENERIC MAP(
      rscid => 5,
      width => 8
      )
    PORT MAP(
      d => E_rsc_mgc_in_wire_d_1,
      z => E_rsc_mgc_in_wire_z
    );
  E_rsc_mgc_in_wire_d <= E_rsc_mgc_in_wire_d_1;
  E_rsc_mgc_in_wire_z <= E_rsc_z;

  Temp_rsc_mgc_out_stdreg : mgc_hls.mgc_ioport_comps.mgc_out_stdreg
    GENERIC MAP(
      rscid => 6,
      width => 64
      )
    PORT MAP(
      d => Temp_rsc_mgc_out_stdreg_d_1,
      z => Temp_rsc_mgc_out_stdreg_z
    );
  Temp_rsc_mgc_out_stdreg_d_1 <= Temp_rsc_mgc_out_stdreg_d;
  Temp_rsc_z <= Temp_rsc_mgc_out_stdreg_z;

  Adding_core_inst : adding_core
    PORT MAP(
      clk => clk,
      rst => rst,
      A_rsc_mgc_in_wire_d => Adding_core_inst_A_rsc_mgc_in_wire_d,
      B_rsc_mgc_in_wire_d => Adding_core_inst_B_rsc_mgc_in_wire_d,
      C_rsc_mgc_in_wire_d => Adding_core_inst_C_rsc_mgc_in_wire_d,
      D_rsc_mgc_in_wire_d => Adding_core_inst_D_rsc_mgc_in_wire_d,
      E_rsc_mgc_in_wire_d => Adding_core_inst_E_rsc_mgc_in_wire_d,
      Temp_rsc_mgc_out_stdreg_d => Adding_core_inst_Temp_rsc_mgc_out_stdreg_d
    );
  Adding_core_inst_A_rsc_mgc_in_wire_d <= A_rsc_mgc_in_wire_d;
  Adding_core_inst_B_rsc_mgc_in_wire_d <= B_rsc_mgc_in_wire_d;
  Adding_core_inst_C_rsc_mgc_in_wire_d <= C_rsc_mgc_in_wire_d;
  Adding_core_inst_D_rsc_mgc_in_wire_d <= D_rsc_mgc_in_wire_d;
  Adding_core_inst_E_rsc_mgc_in_wire_d <= E_rsc_mgc_in_wire_d;
  Temp_rsc_mgc_out_stdreg_d <= Adding_core_inst_Temp_rsc_mgc_out_stdreg_d;

END v2;


