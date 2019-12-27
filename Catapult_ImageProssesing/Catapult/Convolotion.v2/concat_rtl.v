
//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.41 Production Release
//  HLS Date:       Thu Apr  7 20:28:55 PDT 2011
// 
//  Generated by:   ss@DESKTOP-UB05SU4
//  Generated date: Fri Apr 19 11:31:36 2019
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Convolotion_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module Convolotion_core_fsm (
  clk, rst, fsm_output, st_for_for_for_for_1_tr0, st_for_for_for_tr0, st_for_for_tr0,
      st_for_tr0
);
  input clk;
  input rst;
  output [5:0] fsm_output;
  reg [5:0] fsm_output;
  input st_for_for_for_for_1_tr0;
  input st_for_for_for_tr0;
  input st_for_for_tr0;
  input st_for_tr0;


  // FSM State Type Declaration for Convolotion_core_fsm_1
  parameter
    st_main = 3'd0,
    st_for_for_for_for = 3'd1,
    st_for_for_for_for_1 = 3'd2,
    st_for_for_for = 3'd3,
    st_for_for = 3'd4,
    st_for = 3'd5,
    state_x = 3'b000;

  reg [2:0] state_var;
  reg [2:0] state_var_NS;

  always @(st_for_for_for_for_1_tr0 or st_for_for_for_tr0 or st_for_for_tr0 or st_for_tr0
      or state_var)
  begin : Convolotion_core_fsm_1
    case (state_var)
      st_main : begin
        fsm_output = 6'b1;
        state_var_NS = st_for_for_for_for;
      end
      st_for_for_for_for : begin
        fsm_output = 6'b10;
        state_var_NS = st_for_for_for_for_1;
      end
      st_for_for_for_for_1 : begin
        fsm_output = 6'b100;
        if ( st_for_for_for_for_1_tr0 ) begin
          state_var_NS = st_for_for_for;
        end
        else begin
          state_var_NS = st_for_for_for_for;
        end
      end
      st_for_for_for : begin
        fsm_output = 6'b1000;
        if ( st_for_for_for_tr0 ) begin
          state_var_NS = st_for_for;
        end
        else begin
          state_var_NS = st_for_for_for_for;
        end
      end
      st_for_for : begin
        fsm_output = 6'b10000;
        if ( st_for_for_tr0 ) begin
          state_var_NS = st_for;
        end
        else begin
          state_var_NS = st_for_for_for_for;
        end
      end
      st_for : begin
        fsm_output = 6'b100000;
        if ( st_for_tr0 ) begin
          state_var_NS = st_main;
        end
        else begin
          state_var_NS = st_for_for_for_for;
        end
      end
      default : begin
        fsm_output = 6'b000000;
        state_var_NS = st_main;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= st_main;
    end
    else begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    Convolotion_core
// ------------------------------------------------------------------


module Convolotion_core (
  clk, rst, in_rsc_singleport_addr, in_rsc_singleport_re, in_rsc_singleport_data_out,
      out_rsc_singleport_data_in, out_rsc_singleport_addr, out_rsc_singleport_we
);
  input clk;
  input rst;
  output [17:0] in_rsc_singleport_addr;
  output in_rsc_singleport_re;
  input [7:0] in_rsc_singleport_data_out;
  output [7:0] out_rsc_singleport_data_in;
  output [17:0] out_rsc_singleport_addr;
  output out_rsc_singleport_we;


  // Interconnect Declarations
  wire [5:0] fsm_output;
  wire or_dcpl_19;
  wire and_dcpl_7;
  reg [1:0] Kcolumn_1_sva;
  reg [5:0] Result_sg1_lpi_4_reg;
  reg Result_1_lpi_4_reg;
  reg Result_sg2_lpi_4_reg;
  reg [1:0] Krow_1_reg;
  reg for_for_for_for_lor_lpi_4_dfm_st;
  reg [1:0] for_for_for_for_else_mux_itm;
  reg for_for_for_for_else_mux_1_itm;
  reg for_for_for_for_slc_itm;
  reg [8:0] Dcolumn_1_sva_2;
  reg [8:0] Drow_1_sva_2;
  wire or_22_cse;
  wire or_24_cse;
  wire [1:0] for_for_for_for_oelse_2_acc_itm;
  wire [2:0] xfor_for_for_for_oelse_2_acc_itm;
  wire [1:0] z_out;
  wire [2:0] xz_out;
  wire [1:0] z_out_1;
  wire [2:0] xz_out_1;
  wire [10:0] z_out_2;
  wire [11:0] xz_out_2;
  wire [10:0] z_out_3;
  wire [11:0] xz_out_3;
  wire [2:0] for_for_for_for_else_acc_6_sdt;
  wire [3:0] xfor_for_for_for_else_acc_6_sdt;
  wire [7:0] for_for_for_for_else_ac_fixed_cctor_sva;
  wire [8:0] slc_sat_sva;
  wire [9:0] xslc_sat_sva;
  wire [2:0] for_for_for_for_else_acc_7_itm;
  wire [3:0] xfor_for_for_for_else_acc_7_itm;

  wire[1:0] mux_10_nl;
  wire[1:0] mux_7_nl;
  wire[1:0] mux_9_nl;
  Convolotion_core_fsm Convolotion_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .fsm_output(fsm_output),
      .st_for_for_for_for_1_tr0((~ for_for_for_for_slc_itm)),
      .st_for_for_for_tr0((~ (z_out_1[1]))),
      .st_for_for_tr0((z_out_2[9])),
      .st_for_tr0((z_out_3[9]))
    );
  assign xfor_for_for_for_else_acc_6_sdt = conv_u2u_2_3(Krow_1_reg) + conv_u2u_2_3(Kcolumn_1_sva);
  assign for_for_for_for_else_acc_6_sdt = xfor_for_for_for_else_acc_6_sdt[2:0];
  assign xfor_for_for_for_oelse_2_acc_itm = (~ (z_out_2[10:9])) + 2'b1;
  assign for_for_for_for_oelse_2_acc_itm = xfor_for_for_for_oelse_2_acc_itm[1:0];
  assign xfor_for_for_for_else_acc_7_itm = conv_u2u_2_3(for_for_for_for_else_acc_6_sdt[2:1])
      + conv_u2u_2_3(Krow_1_reg);
  assign for_for_for_for_else_acc_7_itm = xfor_for_for_for_else_acc_7_itm[2:0];
  assign for_for_for_for_else_ac_fixed_cctor_sva = (slc_sat_sva[7:0]) | (signext_8_1(slc_sat_sva[8]));
  assign xslc_sat_sva = conv_u2u_8_9({Result_sg2_lpi_4_reg , Result_sg1_lpi_4_reg
      , Result_1_lpi_4_reg}) + conv_u2u_5_9(readslicef_12_5_7(conv_u2u_24_12(conv_u2u_8_12(in_rsc_singleport_data_out)
      * conv_u2u_5_12({for_for_for_for_else_mux_itm , 1'b0 , ({{1{for_for_for_for_else_mux_1_itm}},
      for_for_for_for_else_mux_1_itm})}))));
  assign slc_sat_sva = xslc_sat_sva[8:0];
  assign or_dcpl_19 = (fsm_output[0]) | (fsm_output[5]);
  assign or_22_cse = or_dcpl_19 | (fsm_output[4]);
  assign and_dcpl_7 = ~((fsm_output[0]) | (fsm_output[5]));
  assign or_24_cse = ((fsm_output[2]) & for_for_for_for_lor_lpi_4_dfm_st) | (fsm_output[3])
      | (fsm_output[1]);
  assign in_rsc_singleport_addr = {((z_out_2[8:0]) + conv_s2u_2_9(z_out_3[10:9]))
      , (z_out_3[8:0])};
  assign in_rsc_singleport_re = ~((~((z_out_3[9]) | (z_out_3[10]) | (z_out_2[10])))
      & (~ (for_for_for_for_oelse_2_acc_itm[1])) & (fsm_output[1]));
  assign out_rsc_singleport_data_in = {Result_sg2_lpi_4_reg , Result_sg1_lpi_4_reg
      , Result_1_lpi_4_reg};
  assign out_rsc_singleport_addr = {Drow_1_sva_2 , Dcolumn_1_sva_2};
  assign out_rsc_singleport_we = ~((fsm_output[3]) & (~ (z_out_1[1])));
  always @(posedge clk) begin
    if ( rst ) begin
      Krow_1_reg <= 2'b0;
      Kcolumn_1_sva <= 2'b0;
      Result_1_lpi_4_reg <= 1'b0;
      Result_sg1_lpi_4_reg <= 6'b0;
      Result_sg2_lpi_4_reg <= 1'b0;
      Dcolumn_1_sva_2 <= 9'b0;
      Drow_1_sva_2 <= 9'b0;
      for_for_for_for_else_mux_1_itm <= 1'b0;
      for_for_for_for_else_mux_itm <= 2'b0;
      for_for_for_for_slc_itm <= 1'b0;
      for_for_for_for_lor_lpi_4_dfm_st <= 1'b0;
    end
    else begin
      Krow_1_reg <= (MUX_v_2_2_2({z_out , Krow_1_reg}, fsm_output[2])) & (signext_2_1(~(or_dcpl_19
          | (fsm_output[4]) | (fsm_output[3]))));
      Kcolumn_1_sva <= (MUX_v_2_2_2({z_out , Kcolumn_1_sva}, and_dcpl_7 & (~((fsm_output[4])
          | (fsm_output[3]))))) & (signext_2_1(~ or_22_cse));
      Result_1_lpi_4_reg <= (MUX_s_1_2_2({(for_for_for_for_else_ac_fixed_cctor_sva[0])
          , Result_1_lpi_4_reg}, or_24_cse)) & (~ or_22_cse);
      Result_sg1_lpi_4_reg <= (MUX_v_6_2_2({(for_for_for_for_else_ac_fixed_cctor_sva[6:1])
          , Result_sg1_lpi_4_reg}, or_24_cse)) & (signext_6_1(~ or_22_cse));
      Result_sg2_lpi_4_reg <= (MUX_s_1_2_2({(for_for_for_for_else_ac_fixed_cctor_sva[7])
          , Result_sg2_lpi_4_reg}, or_24_cse)) & (~ or_22_cse);
      Dcolumn_1_sva_2 <= (MUX_v_9_2_2({(z_out_3[8:0]) , Dcolumn_1_sva_2}, and_dcpl_7))
          & (signext_9_1(~ (fsm_output[0])));
      Drow_1_sva_2 <= (MUX_v_9_2_2({(z_out_2[8:0]) , Drow_1_sva_2}, and_dcpl_7 &
          (~ (fsm_output[4])))) & (signext_9_1(~ or_dcpl_19));
      for_for_for_for_else_mux_1_itm <= MUX_s_1_16_2({1'b0 , 1'b0 , 1'b0 , 1'b0 ,
          1'b1 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0
          , 1'b0}, {for_for_for_for_else_acc_7_itm , (for_for_for_for_else_acc_6_sdt[0])});
      for_for_for_for_else_mux_itm <= MUX_v_2_16_2({2'b1 , 2'b10 , 2'b1 , 2'b10 ,
          2'b0 , 2'b10 , 2'b1 , 2'b10 , 2'b1 , 2'b0 , 2'b0 , 2'b0 , 2'b0 , 2'b0 ,
          2'b0 , 2'b0}, {for_for_for_for_else_acc_7_itm , (for_for_for_for_else_acc_6_sdt[0])});
      for_for_for_for_slc_itm <= z_out_1[1];
      for_for_for_for_lor_lpi_4_dfm_st <= (for_for_for_for_oelse_2_acc_itm[1]) |
          (z_out_2[10]) | (z_out_3[9]) | (z_out_3[10]);
    end
  end
  assign mux_10_nl = MUX_v_2_2_2({Krow_1_reg , Kcolumn_1_sva}, fsm_output[3]);
  assign xz_out = (mux_10_nl) + 2'b1;
  assign z_out = xz_out[1:0];
  assign xz_out_1 = z_out + 2'b1;
  assign z_out_1 = xz_out_1[1:0];
  assign mux_7_nl = MUX_v_2_2_2({(Krow_1_reg + 2'b11) , 2'b1}, fsm_output[4]);
  assign xz_out_2 = conv_u2u_9_11(Drow_1_sva_2) + conv_s2u_2_11(mux_7_nl);
  assign z_out_2 = xz_out_2[10:0];
  assign mux_9_nl = MUX_v_2_2_2({(Kcolumn_1_sva + 2'b11) , 2'b1}, fsm_output[5]);
  assign xz_out_3 = conv_u2u_9_11(Dcolumn_1_sva_2) + conv_s2u_2_11(mux_9_nl);
  assign z_out_3 = xz_out_3[10:0];

  function [7:0] signext_8_1;
    input [0:0] vector;
  begin
    signext_8_1= {{7{vector[0]}}, vector};
  end
  endfunction


  function [4:0] readslicef_12_5_7;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 7;
    readslicef_12_5_7 = tmp[4:0];
  end
  endfunction


  function [1:0] MUX_v_2_2_2;
    input [3:0] inputs;
    input [0:0] sel;
    reg [1:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[3:2];
      end
      1'b1 : begin
        result = inputs[1:0];
      end
      default : begin
        result = inputs[3:2];
      end
    endcase
    MUX_v_2_2_2 = result;
  end
  endfunction


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function [0:0] MUX_s_1_2_2;
    input [1:0] inputs;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[1:1];
      end
      1'b1 : begin
        result = inputs[0:0];
      end
      default : begin
        result = inputs[1:1];
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function [5:0] MUX_v_6_2_2;
    input [11:0] inputs;
    input [0:0] sel;
    reg [5:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[11:6];
      end
      1'b1 : begin
        result = inputs[5:0];
      end
      default : begin
        result = inputs[11:6];
      end
    endcase
    MUX_v_6_2_2 = result;
  end
  endfunction


  function [5:0] signext_6_1;
    input [0:0] vector;
  begin
    signext_6_1= {{5{vector[0]}}, vector};
  end
  endfunction


  function [8:0] MUX_v_9_2_2;
    input [17:0] inputs;
    input [0:0] sel;
    reg [8:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[17:9];
      end
      1'b1 : begin
        result = inputs[8:0];
      end
      default : begin
        result = inputs[17:9];
      end
    endcase
    MUX_v_9_2_2 = result;
  end
  endfunction


  function [8:0] signext_9_1;
    input [0:0] vector;
  begin
    signext_9_1= {{8{vector[0]}}, vector};
  end
  endfunction


  function [0:0] MUX_s_1_16_2;
    input [15:0] inputs;
    input [3:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      4'b0000 : begin
        result = inputs[15:15];
      end
      4'b0001 : begin
        result = inputs[14:14];
      end
      4'b0010 : begin
        result = inputs[13:13];
      end
      4'b0011 : begin
        result = inputs[12:12];
      end
      4'b0100 : begin
        result = inputs[11:11];
      end
      4'b0101 : begin
        result = inputs[10:10];
      end
      4'b0110 : begin
        result = inputs[9:9];
      end
      4'b0111 : begin
        result = inputs[8:8];
      end
      4'b1000 : begin
        result = inputs[7:7];
      end
      4'b1001 : begin
        result = inputs[6:6];
      end
      4'b1010 : begin
        result = inputs[5:5];
      end
      4'b1011 : begin
        result = inputs[4:4];
      end
      4'b1100 : begin
        result = inputs[3:3];
      end
      4'b1101 : begin
        result = inputs[2:2];
      end
      4'b1110 : begin
        result = inputs[1:1];
      end
      4'b1111 : begin
        result = inputs[0:0];
      end
      default : begin
        result = inputs[15:15];
      end
    endcase
    MUX_s_1_16_2 = result;
  end
  endfunction


  function [1:0] MUX_v_2_16_2;
    input [31:0] inputs;
    input [3:0] sel;
    reg [1:0] result;
  begin
    case (sel)
      4'b0000 : begin
        result = inputs[31:30];
      end
      4'b0001 : begin
        result = inputs[29:28];
      end
      4'b0010 : begin
        result = inputs[27:26];
      end
      4'b0011 : begin
        result = inputs[25:24];
      end
      4'b0100 : begin
        result = inputs[23:22];
      end
      4'b0101 : begin
        result = inputs[21:20];
      end
      4'b0110 : begin
        result = inputs[19:18];
      end
      4'b0111 : begin
        result = inputs[17:16];
      end
      4'b1000 : begin
        result = inputs[15:14];
      end
      4'b1001 : begin
        result = inputs[13:12];
      end
      4'b1010 : begin
        result = inputs[11:10];
      end
      4'b1011 : begin
        result = inputs[9:8];
      end
      4'b1100 : begin
        result = inputs[7:6];
      end
      4'b1101 : begin
        result = inputs[5:4];
      end
      4'b1110 : begin
        result = inputs[3:2];
      end
      4'b1111 : begin
        result = inputs[1:0];
      end
      default : begin
        result = inputs[31:30];
      end
    endcase
    MUX_v_2_16_2 = result;
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function  [8:0] conv_u2u_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_9 = {1'b0, vector};
  end
  endfunction


  function  [8:0] conv_u2u_5_9 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_9 = {{4{1'b0}}, vector};
  end
  endfunction


  function  [11:0] conv_u2u_24_12 ;
    input [23:0]  vector ;
  begin
    conv_u2u_24_12 = vector[11:0];
  end
  endfunction


  function  [11:0] conv_u2u_8_12 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_12 = {{4{1'b0}}, vector};
  end
  endfunction


  function  [11:0] conv_u2u_5_12 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_12 = {{7{1'b0}}, vector};
  end
  endfunction


  function  [8:0] conv_s2u_2_9 ;
    input signed [1:0]  vector ;
  begin
    conv_s2u_2_9 = {{7{vector[1]}}, vector};
  end
  endfunction


  function  [10:0] conv_u2u_9_11 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_11 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [10:0] conv_s2u_2_11 ;
    input signed [1:0]  vector ;
  begin
    conv_s2u_2_11 = {{9{vector[1]}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    Convolotion
//  Generated from file(s):
//    2) $PROJECT_HOME/ESL_CA2.c
// ------------------------------------------------------------------


module Convolotion (
  clk, rst, in_rsc_singleport_data_in, in_rsc_singleport_addr, in_rsc_singleport_re,
      in_rsc_singleport_we, in_rsc_singleport_data_out, out_rsc_singleport_data_in,
      out_rsc_singleport_addr, out_rsc_singleport_re, out_rsc_singleport_we, out_rsc_singleport_data_out
);
  input clk;
  input rst;
  output [7:0] in_rsc_singleport_data_in;
  output [17:0] in_rsc_singleport_addr;
  output in_rsc_singleport_re;
  output in_rsc_singleport_we;
  input [7:0] in_rsc_singleport_data_out;
  output [7:0] out_rsc_singleport_data_in;
  output [17:0] out_rsc_singleport_addr;
  output out_rsc_singleport_re;
  output out_rsc_singleport_we;
  input [7:0] out_rsc_singleport_data_out;


  // Interconnect Declarations
  wire [17:0] in_rsc_singleport_addr_reg;
  wire in_rsc_singleport_re_reg;
  wire [7:0] out_rsc_singleport_data_in_reg;
  wire [17:0] out_rsc_singleport_addr_reg;
  wire out_rsc_singleport_we_reg;

  Convolotion_core Convolotion_core_inst (
      .clk(clk),
      .rst(rst),
      .in_rsc_singleport_addr(in_rsc_singleport_addr_reg),
      .in_rsc_singleport_re(in_rsc_singleport_re_reg),
      .in_rsc_singleport_data_out(in_rsc_singleport_data_out),
      .out_rsc_singleport_data_in(out_rsc_singleport_data_in_reg),
      .out_rsc_singleport_addr(out_rsc_singleport_addr_reg),
      .out_rsc_singleport_we(out_rsc_singleport_we_reg)
    );
  assign in_rsc_singleport_data_in = 8'b0;
  assign in_rsc_singleport_addr = in_rsc_singleport_addr_reg;
  assign in_rsc_singleport_re = in_rsc_singleport_re_reg;
  assign in_rsc_singleport_we = 1'b1;
  assign out_rsc_singleport_data_in = out_rsc_singleport_data_in_reg;
  assign out_rsc_singleport_addr = out_rsc_singleport_addr_reg;
  assign out_rsc_singleport_re = 1'b1;
  assign out_rsc_singleport_we = out_rsc_singleport_we_reg;
endmodule



