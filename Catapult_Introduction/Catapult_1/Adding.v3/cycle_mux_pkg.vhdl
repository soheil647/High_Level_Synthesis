-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    2011a.41 Production Release
--  HLS Date:       Thu Apr  7 20:28:55 PDT 2011
-- 
--  Generated by:   ss@DESKTOP-UB05SU4
--  Generated date: Tue Apr 09 15:53:05 2019
-- ----------------------------------------------------------------------

-- 
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
LIBRARY mgc_hls;
USE mgc_hls.funcs.ALL;

PACKAGE Adding_mux_pkg IS 
  FUNCTION MUX_v_4_2_2(inputs : STD_LOGIC_VECTOR(7 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
END Adding_mux_pkg;

PACKAGE BODY Adding_mux_pkg IS
FUNCTION MUX_v_4_2_2(inputs : STD_LOGIC_VECTOR(7 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(7 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(3 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(3 DOWNTO 0);
      WHEN '0' =>
        result := inputs(7 DOWNTO 4);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*4-1 DOWNTO i*4);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*4-1 DOWNTO i*4));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

END Adding_mux_pkg;


