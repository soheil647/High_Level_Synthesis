-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    2011a.41 Production Release
--  HLS Date:       Thu Apr  7 20:28:55 PDT 2011
-- 
--  Generated by:   ss@DESKTOP-UB05SU4
--  Generated date: Sat Apr 20 18:30:10 2019
-- ----------------------------------------------------------------------

-- 
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
LIBRARY mgc_hls;
USE mgc_hls.funcs.ALL;

PACKAGE Convolotion_mux_pkg IS 
  FUNCTION MUX_v_2_2_2(inputs : STD_LOGIC_VECTOR(3 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_s_1_2_2(inputs : STD_LOGIC_VECTOR(1 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC;
  FUNCTION MUX_v_6_2_2(inputs : STD_LOGIC_VECTOR(11 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_v_9_2_2(inputs : STD_LOGIC_VECTOR(17 DOWNTO 0); sel : STD_LOGIC)
    RETURN STD_LOGIC_VECTOR;
  FUNCTION MUX_s_1_16_2(inputs : STD_LOGIC_VECTOR(15 DOWNTO 0); sel : STD_LOGIC_VECTOR(3
      DOWNTO 0))
    RETURN STD_LOGIC;
  FUNCTION MUX_v_2_16_2(inputs : STD_LOGIC_VECTOR(31 DOWNTO 0); sel : STD_LOGIC_VECTOR(3
      DOWNTO 0))
    RETURN STD_LOGIC_VECTOR;
END Convolotion_mux_pkg;

PACKAGE BODY Convolotion_mux_pkg IS
FUNCTION MUX_v_2_2_2(inputs : STD_LOGIC_VECTOR(3 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(3 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(1 DOWNTO 0);
      WHEN '0' =>
        result := inputs(3 DOWNTO 2);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*2-1 DOWNTO i*2);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*2-1 DOWNTO i*2));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_s_1_2_2(inputs : STD_LOGIC_VECTOR(1 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE result : STD_LOGIC;
  VARIABLE tmp : STD_LOGIC;
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := TO_STDLOGIC(inputs(0 DOWNTO 0));
      WHEN '0' =>
        result := TO_STDLOGIC(inputs(1 DOWNTO 1));
      WHEN others =>
        result := '0';
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := TO_STDLOGIC(inputs((i+1)*1-1 DOWNTO i*1));
            result_new := '0';
          ELSE
            result := resolved(result & TO_STDLOGIC(inputs((i+1)*1-1 DOWNTO i*1)));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_v_6_2_2(inputs : STD_LOGIC_VECTOR(11 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(11 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(5 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(5 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(5 DOWNTO 0);
      WHEN '0' =>
        result := inputs(11 DOWNTO 6);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*6-1 DOWNTO i*6);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*6-1 DOWNTO i*6));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_v_9_2_2(inputs : STD_LOGIC_VECTOR(17 DOWNTO 0); sel : STD_LOGIC)
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(17 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(8 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(8 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN '1' =>
        result := inputs(8 DOWNTO 0);
      WHEN '0' =>
        result := inputs(17 DOWNTO 9);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 1 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*9-1 DOWNTO i*9);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*9-1 DOWNTO i*9));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_s_1_16_2(inputs : STD_LOGIC_VECTOR(15 DOWNTO 0); sel : STD_LOGIC_VECTOR(3
    DOWNTO 0))
RETURN STD_LOGIC IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(15 DOWNTO 0);
  VARIABLE result : STD_LOGIC;
  VARIABLE tmp : STD_LOGIC;
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN "1111" =>
        result := TO_STDLOGIC(inputs(0 DOWNTO 0));
      WHEN "1110" =>
        result := TO_STDLOGIC(inputs(1 DOWNTO 1));
      WHEN "1101" =>
        result := TO_STDLOGIC(inputs(2 DOWNTO 2));
      WHEN "1100" =>
        result := TO_STDLOGIC(inputs(3 DOWNTO 3));
      WHEN "1011" =>
        result := TO_STDLOGIC(inputs(4 DOWNTO 4));
      WHEN "1010" =>
        result := TO_STDLOGIC(inputs(5 DOWNTO 5));
      WHEN "1001" =>
        result := TO_STDLOGIC(inputs(6 DOWNTO 6));
      WHEN "1000" =>
        result := TO_STDLOGIC(inputs(7 DOWNTO 7));
      WHEN "0111" =>
        result := TO_STDLOGIC(inputs(8 DOWNTO 8));
      WHEN "0110" =>
        result := TO_STDLOGIC(inputs(9 DOWNTO 9));
      WHEN "0101" =>
        result := TO_STDLOGIC(inputs(10 DOWNTO 10));
      WHEN "0100" =>
        result := TO_STDLOGIC(inputs(11 DOWNTO 11));
      WHEN "0011" =>
        result := TO_STDLOGIC(inputs(12 DOWNTO 12));
      WHEN "0010" =>
        result := TO_STDLOGIC(inputs(13 DOWNTO 13));
      WHEN "0001" =>
        result := TO_STDLOGIC(inputs(14 DOWNTO 14));
      WHEN "0000" =>
        result := TO_STDLOGIC(inputs(15 DOWNTO 15));
      WHEN others =>
        result := '0';
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 15 LOOP
          IF ( result_new = '1' ) THEN
            result := TO_STDLOGIC(inputs((i+1)*1-1 DOWNTO i*1));
            result_new := '0';
          ELSE
            result := resolved(result & TO_STDLOGIC(inputs((i+1)*1-1 DOWNTO i*1)));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

FUNCTION MUX_v_2_16_2(inputs : STD_LOGIC_VECTOR(31 DOWNTO 0); sel : STD_LOGIC_VECTOR(3
    DOWNTO 0))
RETURN STD_LOGIC_VECTOR IS
  VARIABLE or_inputs : STD_LOGIC_VECTOR(31 DOWNTO 0);
  VARIABLE result : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE tmp : STD_LOGIC_VECTOR(1 DOWNTO 0);
  VARIABLE result_new : STD_LOGIC;

  BEGIN
    CASE sel IS
      WHEN "1111" =>
        result := inputs(1 DOWNTO 0);
      WHEN "1110" =>
        result := inputs(3 DOWNTO 2);
      WHEN "1101" =>
        result := inputs(5 DOWNTO 4);
      WHEN "1100" =>
        result := inputs(7 DOWNTO 6);
      WHEN "1011" =>
        result := inputs(9 DOWNTO 8);
      WHEN "1010" =>
        result := inputs(11 DOWNTO 10);
      WHEN "1001" =>
        result := inputs(13 DOWNTO 12);
      WHEN "1000" =>
        result := inputs(15 DOWNTO 14);
      WHEN "0111" =>
        result := inputs(17 DOWNTO 16);
      WHEN "0110" =>
        result := inputs(19 DOWNTO 18);
      WHEN "0101" =>
        result := inputs(21 DOWNTO 20);
      WHEN "0100" =>
        result := inputs(23 DOWNTO 22);
      WHEN "0011" =>
        result := inputs(25 DOWNTO 24);
      WHEN "0010" =>
        result := inputs(27 DOWNTO 26);
      WHEN "0001" =>
        result := inputs(29 DOWNTO 28);
      WHEN "0000" =>
        result := inputs(31 DOWNTO 30);
      WHEN others =>
        result := (others => '0');
        -- pragma translate_off
        result_new := '1';
        FOR i IN 0 TO 15 LOOP
          IF ( result_new = '1' ) THEN
            result := inputs((i+1)*2-1 DOWNTO i*2);
            result_new := '0';
          ELSE
            result := resolve_std_logic_vector(result, inputs((i+1)*2-1 DOWNTO i*2));
          END IF;
        END LOOP;
        -- pragma translate_on
    END CASE;
  RETURN result;
END;

END Convolotion_mux_pkg;


