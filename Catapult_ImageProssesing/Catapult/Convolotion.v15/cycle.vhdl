-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    2011a.41 Production Release
--  HLS Date:       Thu Apr  7 20:28:55 PDT 2011
-- 
--  Generated by:   ss@DESKTOP-UB05SU4
--  Generated date: Sat Apr 20 18:47:36 2019
-- ----------------------------------------------------------------------

-- 
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

ARCHITECTURE v15 OF Convolotion_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL in_rsc_singleport_re_reg : STD_LOGIC;
  SIGNAL out_rsc_singleport_we_reg : STD_LOGIC;
  SIGNAL in_rsc_singleport_addr_reg_sg1 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL in_rsc_singleport_addr_reg_1 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL out_rsc_singleport_data_in_reg_sg2 : STD_LOGIC;
  SIGNAL out_rsc_singleport_data_in_reg_sg1 : STD_LOGIC_VECTOR (5 DOWNTO 0);
  SIGNAL out_rsc_singleport_data_in_reg_1 : STD_LOGIC;
  SIGNAL out_rsc_singleport_addr_reg_sg1 : STD_LOGIC_VECTOR (8 DOWNTO 0);
  SIGNAL out_rsc_singleport_addr_reg_1 : STD_LOGIC_VECTOR (8 DOWNTO 0);

BEGIN
  -- Default Constant Signal Assignments

  core : PROCESS
    -- Interconnect Declarations
    VARIABLE for_for_for_for_else_ac_fixed_cctor_2_lpi_1 : STD_LOGIC_VECTOR (7 DOWNTO
        0);
    VARIABLE for_for_for_for_else_ac_fixed_cctor_2_lpi_2 : STD_LOGIC_VECTOR (7 DOWNTO
        0);
    VARIABLE for_for_for_for_else_ac_fixed_cctor_2_lpi_3 : STD_LOGIC_VECTOR (7 DOWNTO
        0);
    VARIABLE Result_sg1_sva : STD_LOGIC_VECTOR (5 DOWNTO 0);
    VARIABLE Result_1_sva : STD_LOGIC;
    VARIABLE Result_sg2_sva : STD_LOGIC;
    VARIABLE Kcolumn_1_sva : STD_LOGIC_VECTOR (1 DOWNTO 0);
    VARIABLE conv1_1_sva : STD_LOGIC_VECTOR (10 DOWNTO 0);
    VARIABLE for_for_for_for_1_acc_3_psp_sva : STD_LOGIC_VECTOR (9 DOWNTO 0);
    VARIABLE for_for_for_for_lor_7_lpi_3_dfm : STD_LOGIC;
    VARIABLE slc_sat_1_sva : STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE for_for_for_for_else_ac_fixed_cctor_1_sva : STD_LOGIC_VECTOR (7 DOWNTO
        0);
    VARIABLE Result_sg2_sva_dfm : STD_LOGIC;
    VARIABLE Result_sg1_sva_dfm : STD_LOGIC_VECTOR (5 DOWNTO 0);
    VARIABLE Result_1_sva_dfm : STD_LOGIC;
    VARIABLE slc_sat_2_sva : STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE for_for_for_for_else_ac_fixed_cctor_2_sva : STD_LOGIC_VECTOR (7 DOWNTO
        0);
    VARIABLE for_for_for_for_else_ac_fixed_cctor_2_lpi_3_dfm : STD_LOGIC_VECTOR (7
        DOWNTO 0);
    VARIABLE for_for_for_for_3_acc_3_psp_sva : STD_LOGIC_VECTOR (9 DOWNTO 0);
    VARIABLE for_for_for_for_lor_lpi_3_dfm : STD_LOGIC;
    VARIABLE slc_sat_sva : STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE for_for_for_for_else_ac_fixed_cctor_sva : STD_LOGIC_VECTOR (7 DOWNTO
        0);
    VARIABLE Result_sg2_sva_dfm_2 : STD_LOGIC;
    VARIABLE Result_sg1_sva_dfm_2 : STD_LOGIC_VECTOR (5 DOWNTO 0);
    VARIABLE Result_1_sva_dfm_2 : STD_LOGIC;
    VARIABLE Kcolumn_1_sva_1 : STD_LOGIC_VECTOR (1 DOWNTO 0);
    VARIABLE Drow_1_sva_1 : STD_LOGIC_VECTOR (9 DOWNTO 0);
    VARIABLE Dcolumn_1_sva_1 : STD_LOGIC_VECTOR (9 DOWNTO 0);
    VARIABLE for_for_for_for_lor_5_lpi_3_dfm_st : STD_LOGIC;
    VARIABLE for_for_for_for_1_else_acc_itm : STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE for_for_for_for_else_mux_itm : STD_LOGIC_VECTOR (1 DOWNTO 0);
    VARIABLE for_for_for_for_acc_itm : STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE for_for_for_for_else_or_itm : STD_LOGIC;
    VARIABLE for_for_for_for_else_or_1_itm : STD_LOGIC;
    VARIABLE for_for_for_for_2_else_slc_for_for_for_for_else_mul_1_sdt_itm : STD_LOGIC_VECTOR
        (4 DOWNTO 0);
    VARIABLE for_for_for_for_else_mux_1_itm : STD_LOGIC_VECTOR (1 DOWNTO 0);
    VARIABLE for_for_for_for_3_else_slc_for_for_for_for_else_mul_1_sdt_itm : STD_LOGIC_VECTOR
        (4 DOWNTO 0);
    VARIABLE for_for_for_slc_itm : STD_LOGIC;
    VARIABLE Dcolumn_1_sva_2 : STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE Drow_1_sva_2 : STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE for_for_for_for_else_and_1_cse : STD_LOGIC;
    VARIABLE for_for_for_for_else_and_2_cse : STD_LOGIC;
    VARIABLE for_for_for_for_else_nor_1_cse : STD_LOGIC;
    VARIABLE for_for_for_for_acc_7_cse : STD_LOGIC_VECTOR (1 DOWNTO 0);
    VARIABLE in_rsc_singleport_re_reg_var : STD_LOGIC;
    VARIABLE out_rsc_singleport_we_reg_var : STD_LOGIC;
    VARIABLE last_clk : STD_LOGIC;
    VARIABLE in_rsc_singleport_addr_reg_var_sg1 : STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE in_rsc_singleport_addr_reg_var_1 : STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE out_rsc_singleport_data_in_reg_var_sg2 : STD_LOGIC;
    VARIABLE out_rsc_singleport_data_in_reg_var_sg1 : STD_LOGIC_VECTOR (5 DOWNTO
        0);
    VARIABLE out_rsc_singleport_data_in_reg_var_1 : STD_LOGIC;
    VARIABLE out_rsc_singleport_addr_reg_var_sg1 : STD_LOGIC_VECTOR (8 DOWNTO 0);
    VARIABLE out_rsc_singleport_addr_reg_var_1 : STD_LOGIC_VECTOR (8 DOWNTO 0);

    VARIABLE for_for_for_for_mux_7_nl : STD_LOGIC ;
  BEGIN
    main : LOOP
      -- C-Step 0 of Loop 'main'
      for_for_for_for_else_ac_fixed_cctor_2_lpi_1 := for_for_for_for_else_ac_fixed_cctor_2_lpi_3_dfm;
      Dcolumn_1_sva_2 := STD_LOGIC_VECTOR'("000000000");
      in_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
      in_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
      in_rsc_singleport_re_reg <= '1';
      out_rsc_singleport_data_in_reg_sg1 <= STD_LOGIC_VECTOR'("000000");
      out_rsc_singleport_data_in_reg_1 <= '0';
      out_rsc_singleport_data_in_reg_sg2 <= '0';
      out_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
      out_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
      out_rsc_singleport_we_reg <= '1';
      WAIT UNTIL clk'EVENT AND ( clk = '1' );
      EXIT main WHEN ( rst = '1' );
      -- C-Step 1 of Loop 'main'
      for_0 : LOOP
        -- C-Step 0 of Loop 'for_0'
        for_for_for_for_else_ac_fixed_cctor_2_lpi_2 := for_for_for_for_else_ac_fixed_cctor_2_lpi_1;
        Drow_1_sva_2 := STD_LOGIC_VECTOR'("000000000");
        for_for : LOOP
          -- C-Step 0 of Loop 'for_for'
          for_for_for_for_else_ac_fixed_cctor_2_lpi_3 := for_for_for_for_else_ac_fixed_cctor_2_lpi_2;
          Result_sg1_sva := STD_LOGIC_VECTOR'("000000");
          Result_1_sva := '0';
          Result_sg2_sva := '0';
          Kcolumn_1_sva := STD_LOGIC_VECTOR'("00");
          for_for_for : LOOP
            -- C-Step 0 of Loop 'for_for_for'
            in_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
            in_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
            in_rsc_singleport_re_reg <= '1';
            out_rsc_singleport_data_in_reg_sg1 <= STD_LOGIC_VECTOR'("000000");
            out_rsc_singleport_data_in_reg_1 <= '0';
            out_rsc_singleport_data_in_reg_sg2 <= '0';
            out_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
            out_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
            out_rsc_singleport_we_reg <= '1';
            for_for_for_for_acc_7_cse := STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(Kcolumn_1_sva)
                + CONV_SIGNED(CONV_SIGNED('1', 1), 2), 2));
            conv1_1_sva := STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(SIGNED(for_for_for_for_acc_7_cse),
                11) + CONV_SIGNED(UNSIGNED(Dcolumn_1_sva_2), 11), 11));
            for_for_for_for_lor_7_lpi_3_dfm := (conv1_1_sva(9)) OR (conv1_1_sva(10));
            for_for_for_for_3_acc_3_psp_sva := STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Drow_1_sva_2),
                10) + CONV_UNSIGNED(CONV_UNSIGNED('1', 1), 10), 10));
            for_for_for_for_lor_lpi_3_dfm := (for_for_for_for_3_acc_3_psp_sva(9))
                OR for_for_for_for_lor_7_lpi_3_dfm;
            IF ( for_for_for_for_lor_lpi_3_dfm = '1' ) THEN
            ELSE
              in_rsc_singleport_re_reg <= '0';
              in_rsc_singleport_addr_reg_1 <= conv1_1_sva(8 DOWNTO 0);
              in_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(for_for_for_for_3_acc_3_psp_sva(8
                  DOWNTO 0)) + CONV_UNSIGNED(SIGNED(conv1_1_sva(10 DOWNTO 9)), 9),
                  9));
            END IF;
            WAIT UNTIL clk'EVENT AND ( clk = '1' );
            EXIT main WHEN ( rst = '1' );
            -- C-Step 1 of Loop 'for_for_for'
            for_for_for_for_1_acc_3_psp_sva := STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(UNSIGNED(Drow_1_sva_2),
                10) + CONV_SIGNED(CONV_SIGNED('1', 1), 10), 10));
            for_for_for_for_lor_5_lpi_3_dfm_st := (for_for_for_for_1_acc_3_psp_sva(9))
                OR for_for_for_for_lor_7_lpi_3_dfm;
            IF ( for_for_for_for_lor_5_lpi_3_dfm_st = '1' ) THEN
            ELSE
              for_for_for_for_1_else_acc_itm := STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(for_for_for_for_1_acc_3_psp_sva(8
                  DOWNTO 0)) + CONV_UNSIGNED(SIGNED(conv1_1_sva(10 DOWNTO 9)), 9),
                  9));
              for_for_for_for_else_mux_itm := MUX_v_2_4_2(STD_LOGIC_VECTOR'("01")
                  & STD_LOGIC_VECTOR'("10") & STD_LOGIC_VECTOR'("01") & STD_LOGIC_VECTOR'("00"),
                  Kcolumn_1_sva);
            END IF;
            IF ( for_for_for_for_lor_7_lpi_3_dfm = '1' ) THEN
            ELSE
              for_for_for_for_acc_itm := STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(SIGNED(conv1_1_sva(10
                  DOWNTO 9)), 9) + UNSIGNED(Drow_1_sva_2), 9));
              for_for_for_for_else_and_1_cse := (for_for_for_for_acc_7_cse(0)) AND
                  (NOT (for_for_for_for_acc_7_cse(1)));
              for_for_for_for_else_and_2_cse := (for_for_for_for_acc_7_cse(1)) AND
                  (for_for_for_for_acc_7_cse(0));
              for_for_for_for_else_nor_1_cse := NOT((for_for_for_for_acc_7_cse(1))
                  OR (for_for_for_for_acc_7_cse(0)));
              for_for_for_for_else_or_itm := (NOT for_for_for_for_else_nor_1_cse)
                  OR for_for_for_for_else_and_1_cse OR for_for_for_for_else_and_2_cse;
              for_for_for_for_else_or_1_itm := (NOT(for_for_for_for_else_and_1_cse
                  OR for_for_for_for_else_and_2_cse)) OR for_for_for_for_else_nor_1_cse;
            END IF;
            IF ( for_for_for_for_lor_lpi_3_dfm = '1' ) THEN
            ELSE
              for_for_for_for_else_mux_1_itm := MUX_v_2_4_2(STD_LOGIC_VECTOR'("01")
                  & STD_LOGIC_VECTOR'("00") & STD_LOGIC_VECTOR'("01") & STD_LOGIC_VECTOR'("10"),
                  STD_LOGIC_VECTOR'((NOT (Kcolumn_1_sva(1))) & (Kcolumn_1_sva(0))));
            END IF;
            Kcolumn_1_sva_1 := STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED(Kcolumn_1_sva)
                + CONV_UNSIGNED(CONV_UNSIGNED('1', 1), 2), 2));
            for_for_for_slc_itm := readindex(STD_LOGIC_VECTOR(CONV_SIGNED(SIGNED(TO_STDLOGICVECTOR('1')
                & Kcolumn_1_sva_1) + CONV_SIGNED(CONV_UNSIGNED('1', 1), 3), 3)),
                2);
            in_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
            in_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
            in_rsc_singleport_re_reg <= '1';
            out_rsc_singleport_data_in_reg_sg1 <= STD_LOGIC_VECTOR'("000000");
            out_rsc_singleport_data_in_reg_1 <= '0';
            out_rsc_singleport_data_in_reg_sg2 <= '0';
            out_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
            out_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
            out_rsc_singleport_we_reg <= '1';
            IF ( for_for_for_for_lor_7_lpi_3_dfm = '1' ) THEN
            ELSE
              in_rsc_singleport_re_reg <= '0';
              in_rsc_singleport_addr_reg_1 <= conv1_1_sva(8 DOWNTO 0);
              in_rsc_singleport_addr_reg_sg1 <= for_for_for_for_acc_itm;
            END IF;
            WAIT UNTIL clk'EVENT AND ( clk = '1' );
            EXIT main WHEN ( rst = '1' );
            -- C-Step 2 of Loop 'for_for_for'
            IF ( for_for_for_for_lor_lpi_3_dfm = '1' ) THEN
            ELSE
              for_for_for_for_3_else_slc_for_for_for_for_else_mul_1_sdt_itm := readslice(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED'(UNSIGNED(in_rsc_singleport_data_out)
                  * UNSIGNED(for_for_for_for_else_mux_1_itm)), 9)), 4, 5);
            END IF;
            in_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
            in_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
            in_rsc_singleport_re_reg <= '1';
            out_rsc_singleport_data_in_reg_sg1 <= STD_LOGIC_VECTOR'("000000");
            out_rsc_singleport_data_in_reg_1 <= '0';
            out_rsc_singleport_data_in_reg_sg2 <= '0';
            out_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
            out_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
            out_rsc_singleport_we_reg <= '1';
            IF ( for_for_for_for_lor_5_lpi_3_dfm_st = '1' ) THEN
            ELSE
              in_rsc_singleport_re_reg <= '0';
              in_rsc_singleport_addr_reg_1 <= conv1_1_sva(8 DOWNTO 0);
              in_rsc_singleport_addr_reg_sg1 <= for_for_for_for_1_else_acc_itm;
            END IF;
            WAIT UNTIL clk'EVENT AND ( clk = '1' );
            EXIT main WHEN ( rst = '1' );
            -- C-Step 3 of Loop 'for_for_for'
            IF ( for_for_for_for_lor_7_lpi_3_dfm = '1' ) THEN
            ELSE
              for_for_for_for_2_else_slc_for_for_for_for_else_mul_1_sdt_itm := readslice(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED'(UNSIGNED(in_rsc_singleport_data_out)
                  * UNSIGNED(TO_STDLOGICVECTOR(for_for_for_for_else_or_itm) & STD_LOGIC_VECTOR'("00")
                  & STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(for_for_for_for_else_or_1_itm,
                  1),2)))), 12)), 7, 5);
            END IF;
            in_rsc_singleport_addr_reg_var_1 := in_rsc_singleport_addr_reg_1;
            in_rsc_singleport_addr_reg_var_sg1 := in_rsc_singleport_addr_reg_sg1;
            in_rsc_singleport_re_reg_var := in_rsc_singleport_re_reg;
            out_rsc_singleport_data_in_reg_var_sg1 := out_rsc_singleport_data_in_reg_sg1;
            out_rsc_singleport_data_in_reg_var_1 := out_rsc_singleport_data_in_reg_1;
            out_rsc_singleport_data_in_reg_var_sg2 := out_rsc_singleport_data_in_reg_sg2;
            out_rsc_singleport_addr_reg_var_1 := out_rsc_singleport_addr_reg_1;
            out_rsc_singleport_addr_reg_var_sg1 := out_rsc_singleport_addr_reg_sg1;
            out_rsc_singleport_we_reg_var := out_rsc_singleport_we_reg;
            unreg_outs_lp_4 : LOOP
              -- C-Step 0 of Loop 'unreg_outs_lp_4'
              in_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
              in_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
              in_rsc_singleport_re_reg <= '1';
              out_rsc_singleport_data_in_reg_sg1 <= STD_LOGIC_VECTOR'("000000");
              out_rsc_singleport_data_in_reg_1 <= '0';
              out_rsc_singleport_data_in_reg_sg2 <= '0';
              out_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
              out_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
              out_rsc_singleport_we_reg <= '1';
              for_for_for_for_else_ac_fixed_cctor_sva := STD_LOGIC_VECTOR'("00000000");
              for_for_for_for_else_ac_fixed_cctor_2_sva := STD_LOGIC_VECTOR'("00000000");
              IF ( for_for_for_for_lor_5_lpi_3_dfm_st = '1' ) THEN
                Result_sg2_sva_dfm := Result_sg2_sva;
                Result_sg1_sva_dfm := Result_sg1_sva;
                Result_1_sva_dfm := Result_1_sva;
              ELSE
                slc_sat_1_sva := STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(TO_STDLOGICVECTOR(Result_sg2_sva)
                    & Result_sg1_sva & TO_STDLOGICVECTOR(Result_1_sva)), 9) + CONV_UNSIGNED(UNSIGNED(readslice(STD_LOGIC_VECTOR(CONV_UNSIGNED(UNSIGNED'(UNSIGNED(in_rsc_singleport_data_out)
                    * UNSIGNED(for_for_for_for_else_mux_itm)), 9)), 4, 5)), 9), 9));
                for_for_for_for_else_ac_fixed_cctor_1_sva := (slc_sat_1_sva(7 DOWNTO
                    0)) OR STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(slc_sat_1_sva(8),
                    1),8));
                Result_sg2_sva_dfm := for_for_for_for_else_ac_fixed_cctor_1_sva(7);
                Result_sg1_sva_dfm := for_for_for_for_else_ac_fixed_cctor_1_sva(6
                    DOWNTO 1);
                Result_1_sva_dfm := for_for_for_for_else_ac_fixed_cctor_1_sva(0);
              END IF;
              IF ( for_for_for_for_lor_7_lpi_3_dfm = '1' ) THEN
                for_for_for_for_else_ac_fixed_cctor_2_lpi_3_dfm := for_for_for_for_else_ac_fixed_cctor_2_lpi_3;
              ELSE
                slc_sat_2_sva := STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(TO_STDLOGICVECTOR(Result_sg2_sva_dfm)
                    & Result_sg1_sva_dfm & TO_STDLOGICVECTOR(Result_1_sva_dfm)),
                    9) + CONV_UNSIGNED(UNSIGNED(for_for_for_for_2_else_slc_for_for_for_for_else_mul_1_sdt_itm),
                    9), 9));
                for_for_for_for_else_ac_fixed_cctor_2_sva := (slc_sat_2_sva(7 DOWNTO
                    0)) OR STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(slc_sat_2_sva(8),
                    1),8));
                for_for_for_for_else_ac_fixed_cctor_2_lpi_3_dfm := for_for_for_for_else_ac_fixed_cctor_2_sva;
              END IF;
              IF ( for_for_for_for_lor_lpi_3_dfm = '1' ) THEN
                Result_sg2_sva_dfm_2 := MUX_s_1_2_2(STD_LOGIC_VECTOR'((for_for_for_for_else_ac_fixed_cctor_2_sva(7))
                    & Result_sg2_sva_dfm), for_for_for_for_lor_7_lpi_3_dfm);
              ELSE
                slc_sat_sva := STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(for_for_for_for_else_ac_fixed_cctor_2_lpi_3_dfm),
                    9) + CONV_UNSIGNED(UNSIGNED(for_for_for_for_3_else_slc_for_for_for_for_else_mul_1_sdt_itm),
                    9), 9));
                for_for_for_for_else_ac_fixed_cctor_sva := (slc_sat_sva(7 DOWNTO
                    0)) OR STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(slc_sat_sva(8),
                    1),8));
                Result_sg2_sva_dfm_2 := for_for_for_for_else_ac_fixed_cctor_sva(7);
              END IF;
              Result_sg1_sva_dfm_2 := MUX1HOT_v_6_3_2((for_for_for_for_else_ac_fixed_cctor_sva(6
                  DOWNTO 1)) & (for_for_for_for_else_ac_fixed_cctor_2_sva(6 DOWNTO
                  1)) & Result_sg1_sva_dfm, STD_LOGIC_VECTOR'((NOT for_for_for_for_lor_lpi_3_dfm)
                  & ((NOT for_for_for_for_lor_7_lpi_3_dfm) AND for_for_for_for_lor_lpi_3_dfm)
                  & (for_for_for_for_lor_7_lpi_3_dfm AND for_for_for_for_lor_lpi_3_dfm)));
              for_for_for_for_mux_7_nl := MUX_s_1_2_2(STD_LOGIC_VECTOR'((for_for_for_for_else_ac_fixed_cctor_2_sva(0))
                  & Result_1_sva_dfm), for_for_for_for_lor_7_lpi_3_dfm);
              Result_1_sva_dfm_2 := MUX_s_1_2_2(STD_LOGIC_VECTOR'((for_for_for_for_else_ac_fixed_cctor_sva(0))
                  & (for_for_for_for_mux_7_nl)), for_for_for_for_lor_lpi_3_dfm);
              IF ( for_for_for_slc_itm = '1' ) THEN
              ELSE
                out_rsc_singleport_we_reg <= '0';
                out_rsc_singleport_addr_reg_1 <= Dcolumn_1_sva_2;
                out_rsc_singleport_addr_reg_sg1 <= Drow_1_sva_2;
                out_rsc_singleport_data_in_reg_sg1 <= Result_sg1_sva_dfm_2;
                out_rsc_singleport_data_in_reg_1 <= Result_1_sva_dfm_2;
                out_rsc_singleport_data_in_reg_sg2 <= Result_sg2_sva_dfm_2;
              END IF;
              last_clk := clk;
              WAIT UNTIL clk'EVENT OR in_rsc_singleport_data_out'EVENT;
              EXIT unreg_outs_lp_4 WHEN ( ((NOT last_clk) AND clk) = '1' );
              in_rsc_singleport_addr_reg_1 <= in_rsc_singleport_addr_reg_var_1;
              in_rsc_singleport_addr_reg_sg1 <= in_rsc_singleport_addr_reg_var_sg1;
              in_rsc_singleport_re_reg <= in_rsc_singleport_re_reg_var;
              out_rsc_singleport_data_in_reg_sg1 <= out_rsc_singleport_data_in_reg_var_sg1;
              out_rsc_singleport_data_in_reg_1 <= out_rsc_singleport_data_in_reg_var_1;
              out_rsc_singleport_data_in_reg_sg2 <= out_rsc_singleport_data_in_reg_var_sg2;
              out_rsc_singleport_addr_reg_1 <= out_rsc_singleport_addr_reg_var_1;
              out_rsc_singleport_addr_reg_sg1 <= out_rsc_singleport_addr_reg_var_sg1;
              out_rsc_singleport_we_reg <= out_rsc_singleport_we_reg_var;
            END LOOP unreg_outs_lp_4;

            EXIT main WHEN ( rst = '1' );
            EXIT for_for_for WHEN ( for_for_for_slc_itm = '0' );
            Result_sg2_sva := Result_sg2_sva_dfm_2;
            Result_sg1_sva := Result_sg1_sva_dfm_2;
            Result_1_sva := Result_1_sva_dfm_2;
            Kcolumn_1_sva := Kcolumn_1_sva_1;
            for_for_for_for_else_ac_fixed_cctor_2_lpi_3 := for_for_for_for_else_ac_fixed_cctor_2_lpi_3_dfm;
          END LOOP for_for_for;

          in_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
          in_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
          in_rsc_singleport_re_reg <= '1';
          out_rsc_singleport_data_in_reg_sg1 <= STD_LOGIC_VECTOR'("000000");
          out_rsc_singleport_data_in_reg_1 <= '0';
          out_rsc_singleport_data_in_reg_sg2 <= '0';
          out_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
          out_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
          out_rsc_singleport_we_reg <= '1';
          WAIT UNTIL clk'EVENT AND ( clk = '1' );
          EXIT main WHEN ( rst = '1' );
          -- C-Step 1 of Loop 'for_for'
          Drow_1_sva_1 := STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Drow_1_sva_2),
              10) + CONV_UNSIGNED(CONV_UNSIGNED('1', 1), 10), 10));
          EXIT for_for WHEN ( (Drow_1_sva_1(9)) = '1' );
          Drow_1_sva_2 := Drow_1_sva_1(8 DOWNTO 0);
          for_for_for_for_else_ac_fixed_cctor_2_lpi_2 := for_for_for_for_else_ac_fixed_cctor_2_lpi_3_dfm;
        END LOOP for_for;

        in_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
        in_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
        in_rsc_singleport_re_reg <= '1';
        out_rsc_singleport_data_in_reg_sg1 <= STD_LOGIC_VECTOR'("000000");
        out_rsc_singleport_data_in_reg_1 <= '0';
        out_rsc_singleport_data_in_reg_sg2 <= '0';
        out_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
        out_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
        out_rsc_singleport_we_reg <= '1';
        WAIT UNTIL clk'EVENT AND ( clk = '1' );
        EXIT main WHEN ( rst = '1' );
        -- C-Step 1 of Loop 'for_0'
        Dcolumn_1_sva_1 := STD_LOGIC_VECTOR(CONV_UNSIGNED(CONV_UNSIGNED(UNSIGNED(Dcolumn_1_sva_2),
            10) + CONV_UNSIGNED(CONV_UNSIGNED('1', 1), 10), 10));
        EXIT for_0 WHEN ( (Dcolumn_1_sva_1(9)) = '1' );
        Dcolumn_1_sva_2 := Dcolumn_1_sva_1(8 DOWNTO 0);
        for_for_for_for_else_ac_fixed_cctor_2_lpi_1 := for_for_for_for_else_ac_fixed_cctor_2_lpi_3_dfm;
      END LOOP for_0;

    END LOOP main;

    for_for_for_for_3_else_slc_for_for_for_for_else_mul_1_sdt_itm := STD_LOGIC_VECTOR'("00000");
    for_for_for_for_else_mux_1_itm := STD_LOGIC_VECTOR'("00");
    for_for_for_for_2_else_slc_for_for_for_for_else_mul_1_sdt_itm := STD_LOGIC_VECTOR'("00000");
    for_for_for_for_else_or_1_itm := '0';
    for_for_for_for_else_or_itm := '0';
    for_for_for_for_acc_itm := STD_LOGIC_VECTOR'("000000000");
    for_for_for_for_else_mux_itm := STD_LOGIC_VECTOR'("00");
    for_for_for_for_1_else_acc_itm := STD_LOGIC_VECTOR'("000000000");
    for_for_for_for_else_ac_fixed_cctor_2_lpi_3_dfm := STD_LOGIC_VECTOR'("00000000");
    out_rsc_singleport_we_reg <= '0';
    out_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
    out_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
    out_rsc_singleport_data_in_reg_sg1 <= STD_LOGIC_VECTOR'("000000");
    out_rsc_singleport_data_in_reg_1 <= '0';
    out_rsc_singleport_data_in_reg_sg2 <= '0';
    in_rsc_singleport_re_reg <= '0';
    in_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
    in_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
    in_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
    in_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
    in_rsc_singleport_re_reg <= '1';
    out_rsc_singleport_data_in_reg_sg1 <= STD_LOGIC_VECTOR'("000000");
    out_rsc_singleport_data_in_reg_1 <= '0';
    out_rsc_singleport_data_in_reg_sg2 <= '0';
    out_rsc_singleport_addr_reg_1 <= STD_LOGIC_VECTOR'("000000000");
    out_rsc_singleport_addr_reg_sg1 <= STD_LOGIC_VECTOR'("000000000");
    out_rsc_singleport_we_reg <= '1';
  END PROCESS core;

  in_rsc_singleport_addr <= in_rsc_singleport_addr_reg_sg1 & in_rsc_singleport_addr_reg_1;
  in_rsc_singleport_re <= in_rsc_singleport_re_reg;
  out_rsc_singleport_data_in <= TO_STDLOGICVECTOR(out_rsc_singleport_data_in_reg_sg2)
      & out_rsc_singleport_data_in_reg_sg1 & TO_STDLOGICVECTOR(out_rsc_singleport_data_in_reg_1);
  out_rsc_singleport_addr <= out_rsc_singleport_addr_reg_sg1 & out_rsc_singleport_addr_reg_1;
  out_rsc_singleport_we <= out_rsc_singleport_we_reg;
END v15;

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

ARCHITECTURE v15 OF Convolotion IS
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
END v15;



