// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.41 Production Release
//  HLS Date:       Thu Apr  7 20:28:55 PDT 2011
// 
//  Generated by:   ss@DESKTOP-UB05SU4
//  Generated date: Sat Apr 20 18:41:44 2019
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Convolotion_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module Convolotion_core_fsm (
  clk, rst, fsm_output, st_for_for_1_for_for_1_tr0, st_for_for_1_for_tr0, st_for_for_2_for_tr0,
      st_for_for_3_tr0, st_for_for_3_for_tr0, st_for_tr0
);
  input clk;
  input rst;
  output [16:0] fsm_output;
  reg [16:0] fsm_output;
  input st_for_for_1_for_for_1_tr0;
  input st_for_for_1_for_tr0;
  input st_for_for_2_for_tr0;
  input st_for_for_3_tr0;
  input st_for_for_3_for_tr0;
  input st_for_tr0;


  // FSM State Type Declaration for Convolotion_core_fsm_1
  parameter
    st_main = 5'd0,
    st_for_for_1_for_for = 5'd1,
    st_for_for_1_for_for_1 = 5'd2,
    st_for_for_1_for = 5'd3,
    st_for_for = 5'd4,
    st_for_for_1 = 5'd5,
    st_for_for_2_for_for = 5'd6,
    st_for_for_2_for_for_1 = 5'd7,
    st_for_for_2_for = 5'd8,
    st_for_for_2 = 5'd9,
    st_for_for_3 = 5'd10,
    st_for_for_3_for_for = 5'd11,
    st_for_for_3_for_for_1 = 5'd12,
    st_for_for_3_for = 5'd13,
    st_for_for_4 = 5'd14,
    st_for_for_5 = 5'd15,
    st_for = 5'd16,
    state_x = 5'b00000;

  reg [4:0] state_var;
  reg [4:0] state_var_NS;

  always @(st_for_for_1_for_for_1_tr0 or st_for_for_1_for_tr0 or st_for_for_2_for_tr0
      or st_for_for_3_tr0 or st_for_for_3_for_tr0 or st_for_tr0 or state_var)
  begin : Convolotion_core_fsm_1
    case (state_var)
      st_main : begin
        fsm_output = 17'b1;
        state_var_NS = st_for_for_1_for_for;
      end
      st_for_for_1_for_for : begin
        fsm_output = 17'b10;
        state_var_NS = st_for_for_1_for_for_1;
      end
      st_for_for_1_for_for_1 : begin
        fsm_output = 17'b100;
        if ( st_for_for_1_for_for_1_tr0 ) begin
          state_var_NS = st_for_for_1_for;
        end
        else begin
          state_var_NS = st_for_for_1_for_for;
        end
      end
      st_for_for_1_for : begin
        fsm_output = 17'b1000;
        if ( st_for_for_1_for_tr0 ) begin
          state_var_NS = st_for_for;
        end
        else begin
          state_var_NS = st_for_for_1_for_for;
        end
      end
      st_for_for : begin
        fsm_output = 17'b10000;
        state_var_NS = st_for_for_1;
      end
      st_for_for_1 : begin
        fsm_output = 17'b100000;
        state_var_NS = st_for_for_2_for_for;
      end
      st_for_for_2_for_for : begin
        fsm_output = 17'b1000000;
        state_var_NS = st_for_for_2_for_for_1;
      end
      st_for_for_2_for_for_1 : begin
        fsm_output = 17'b10000000;
        if ( st_for_for_1_for_for_1_tr0 ) begin
          state_var_NS = st_for_for_2_for;
        end
        else begin
          state_var_NS = st_for_for_2_for_for;
        end
      end
      st_for_for_2_for : begin
        fsm_output = 17'b100000000;
        if ( st_for_for_2_for_tr0 ) begin
          state_var_NS = st_for_for_2;
        end
        else begin
          state_var_NS = st_for_for_2_for_for;
        end
      end
      st_for_for_2 : begin
        fsm_output = 17'b1000000000;
        state_var_NS = st_for_for_3;
      end
      st_for_for_3 : begin
        fsm_output = 17'b10000000000;
        if ( st_for_for_3_tr0 ) begin
          state_var_NS = st_for;
        end
        else begin
          state_var_NS = st_for_for_3_for_for;
        end
      end
      st_for_for_3_for_for : begin
        fsm_output = 17'b100000000000;
        state_var_NS = st_for_for_3_for_for_1;
      end
      st_for_for_3_for_for_1 : begin
        fsm_output = 17'b1000000000000;
        if ( st_for_for_1_for_for_1_tr0 ) begin
          state_var_NS = st_for_for_3_for;
        end
        else begin
          state_var_NS = st_for_for_3_for_for;
        end
      end
      st_for_for_3_for : begin
        fsm_output = 17'b10000000000000;
        if ( st_for_for_3_for_tr0 ) begin
          state_var_NS = st_for_for_4;
        end
        else begin
          state_var_NS = st_for_for_3_for_for;
        end
      end
      st_for_for_4 : begin
        fsm_output = 17'b100000000000000;
        state_var_NS = st_for_for_5;
      end
      st_for_for_5 : begin
        fsm_output = 17'b1000000000000000;
        state_var_NS = st_for_for_1_for_for;
      end
      st_for : begin
        fsm_output = 17'b10000000000000000;
        if ( st_for_tr0 ) begin
          state_var_NS = st_main;
        end
        else begin
          state_var_NS = st_for_for_1_for_for;
        end
      end
      default : begin
        fsm_output = 17'b00000000000000000;
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
  wire [16:0] fsm_output;
  wire or_dcpl_32;
  wire and_dcpl_22;
  reg [8:0] reg_1;
  reg [5:0] Result_reg_1;
  reg Result_reg;
  reg [9:0] Drow_1_sva;
  reg [1:0] reg_3;
  reg reg_4;
  reg [1:0] reg_2;
  reg for_for_for_for_else_reg_1;
  reg for_reg;
  reg for_for_for_for_reg;
  reg [1:0] for_for_for_for_else_reg;
  reg [8:0] Dcolumn_1_sva_2;
  wire or_34_cse;
  wire and_13_cse;
  wire [1:0] for_for_3_for_for_oelse_2_acc_itm;
  wire [2:0] xfor_for_3_for_for_oelse_2_acc_itm;
  wire [2:0] z_out;
  wire [3:0] xz_out;
  wire [3:0] z_out_1;
  wire [4:0] xz_out_1;
  wire [10:0] z_out_2;
  wire [11:0] xz_out_2;
  wire [10:0] z_out_3;
  wire [11:0] xz_out_3;
  wire [2:0] for_for_for_for_else_acc_sdt;
  wire [3:0] xfor_for_for_for_else_acc_sdt;
  wire [7:0] for_for_for_for_else_ac_fixed_cctor_1_sva;
  wire [8:0] slc_sat_1_sva;
  wire [9:0] xslc_sat_1_sva;
  wire [2:0] for_for_for_for_else_acc_itm;
  wire [3:0] xfor_for_for_for_else_acc_itm;

  wire[8:0] mux_16_nl;
  wire[1:0] mux_10_nl;
  wire[8:0] mux_21_nl;
  wire[1:0] mux_25_nl;
  wire[1:0] mux_9_nl;
  Convolotion_core_fsm Convolotion_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .fsm_output(fsm_output),
      .st_for_for_1_for_for_1_tr0((~ for_reg)),
      .st_for_for_1_for_tr0((~ (z_out_1[2]))),
      .st_for_for_2_for_tr0((~ (z_out_1[2]))),
      .st_for_for_3_tr0((Drow_1_sva[9])),
      .st_for_for_3_for_tr0((~ (z_out_1[2]))),
      .st_for_tr0((z_out_3[9]))
    );
  assign or_34_cse = or_dcpl_32 | (fsm_output[15]) | (fsm_output[5]) | (fsm_output[10]);
  assign and_13_cse = (~((~((~((fsm_output[7]) | (fsm_output[12]) | (fsm_output[2])))
      | for_for_for_for_reg)) | (fsm_output[0]))) & (~((fsm_output[16]) | (fsm_output[15])))
      & (~((fsm_output[5]) | (fsm_output[10])));
  assign xfor_for_for_for_else_acc_sdt = conv_u2u_2_3(reg_2) + conv_u2u_2_3(reg_3);
  assign for_for_for_for_else_acc_sdt = xfor_for_for_for_else_acc_sdt[2:0];
  assign xfor_for_for_for_else_acc_itm = conv_u2u_2_3(for_for_for_for_else_acc_sdt[2:1])
      + conv_u2u_2_3(reg_2);
  assign for_for_for_for_else_acc_itm = xfor_for_for_for_else_acc_itm[2:0];
  assign for_for_for_for_else_ac_fixed_cctor_1_sva = (slc_sat_1_sva[7:0]) | (signext_8_1(slc_sat_1_sva[8]));
  assign xslc_sat_1_sva = conv_u2u_8_9({Result_reg , Result_reg_1 , reg_4}) + conv_u2u_5_9(readslicef_12_5_7(conv_u2u_24_12(conv_u2u_8_12(in_rsc_singleport_data_out)
      * conv_u2u_5_12({for_for_for_for_else_reg , 1'b0 , ({{1{for_for_for_for_else_reg_1}},
      for_for_for_for_else_reg_1})}))));
  assign slc_sat_1_sva = xslc_sat_1_sva[8:0];
  assign xfor_for_3_for_for_oelse_2_acc_itm = (~ (z_out_2[10:9])) + 2'b1;
  assign for_for_3_for_for_oelse_2_acc_itm = xfor_for_3_for_for_oelse_2_acc_itm[1:0];
  assign or_dcpl_32 = (fsm_output[0]) | (fsm_output[16]);
  assign and_dcpl_22 = ~((fsm_output[0]) | (fsm_output[16]));
  assign in_rsc_singleport_addr = {((z_out_2[8:0]) + conv_s2u_2_9(z_out_3[10:9]))
      , (z_out_3[8:0])};
  assign in_rsc_singleport_re = ~((((~((z_out_2[10]) | (for_for_3_for_for_oelse_2_acc_itm[1])))
      & (fsm_output[11])) | ((fsm_output[6]) & (~ (z_out_2[9]))) | ((fsm_output[1])
      & (~ (z_out_2[9])))) & (~((z_out_3[9]) | (z_out_3[10]))));
  assign out_rsc_singleport_data_in = {Result_reg , Result_reg_1 , reg_4};
  assign mux_16_nl = MUX_v_9_2_2({reg_1 , (Drow_1_sva[8:0])}, fsm_output[14]);
  assign out_rsc_singleport_addr = {(mux_16_nl) , Dcolumn_1_sva_2};
  assign out_rsc_singleport_we = ~((fsm_output[14]) | (fsm_output[4]) | (fsm_output[9]));
  always @(posedge clk) begin
    if ( rst ) begin
      Result_reg_1 <= 6'b0;
      Result_reg <= 1'b0;
      Dcolumn_1_sva_2 <= 9'b0;
      reg_1 <= 9'b0;
      reg_2 <= 2'b0;
      reg_3 <= 2'b0;
      reg_4 <= 1'b0;
      for_for_for_for_else_reg_1 <= 1'b0;
      for_reg <= 1'b0;
      for_for_for_for_else_reg <= 2'b0;
      for_for_for_for_reg <= 1'b0;
      Drow_1_sva <= 10'b0;
    end
    else begin
      Result_reg_1 <= (MUX_v_6_2_2({(for_for_for_for_else_ac_fixed_cctor_1_sva[6:1])
          , Result_reg_1}, and_13_cse)) & (signext_6_1(~ or_34_cse));
      Result_reg <= (MUX_s_1_2_2({(for_for_for_for_else_ac_fixed_cctor_1_sva[7])
          , Result_reg}, and_13_cse)) & (~ or_34_cse);
      Dcolumn_1_sva_2 <= (MUX_v_9_2_2({(z_out_3[8:0]) , Dcolumn_1_sva_2}, and_dcpl_22))
          & (signext_9_1(~ (fsm_output[0])));
      reg_1 <= (MUX_v_9_2_2({reg_1 , (z_out_2[8:0])}, ~((~((fsm_output[4]) | (fsm_output[14])))
          | or_dcpl_32))) & (signext_9_1(~ or_dcpl_32));
      reg_2 <= (MUX_v_2_2_2({(z_out[1:0]) , reg_2}, (fsm_output[7]) | (fsm_output[12])
          | (fsm_output[2]))) & (signext_2_1(~(or_dcpl_32 | (fsm_output[15]) | (fsm_output[5])
          | (fsm_output[13]) | (fsm_output[8]) | (fsm_output[3]) | (fsm_output[10]))));
      reg_3 <= (MUX_v_2_2_2({(z_out[1:0]) , reg_3}, and_dcpl_22 & (~((fsm_output[15])
          | (fsm_output[5]))) & (~((fsm_output[13]) | (fsm_output[8]))) & (~((fsm_output[3])
          | (fsm_output[10]))))) & (signext_2_1(~ or_34_cse));
      reg_4 <= (MUX_s_1_2_2({(for_for_for_for_else_ac_fixed_cctor_1_sva[0]) , reg_4},
          and_13_cse)) & (~ or_34_cse);
      for_for_for_for_else_reg_1 <= MUX_s_1_16_2({1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b1
          , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 ,
          1'b0}, {for_for_for_for_else_acc_itm , (for_for_for_for_else_acc_sdt[0])});
      for_reg <= z_out_1[2];
      for_for_for_for_else_reg <= MUX_v_2_16_2({2'b1 , 2'b10 , 2'b1 , 2'b10 , 2'b0
          , 2'b10 , 2'b1 , 2'b10 , 2'b1 , 2'b0 , 2'b0 , 2'b0 , 2'b0 , 2'b0 , 2'b0
          , 2'b0}, {for_for_for_for_else_acc_itm , (for_for_for_for_else_acc_sdt[0])});
      for_for_for_for_reg <= MUX_s_1_2_2({((z_out_2[9]) | (z_out_3[9]) | (z_out_3[10]))
          , ((for_for_3_for_for_oelse_2_acc_itm[1]) | (z_out_2[10]) | (z_out_3[9])
          | (z_out_3[10]))}, fsm_output[11]);
      Drow_1_sva <= MUX_v_10_2_2({(z_out_2[9:0]) , Drow_1_sva}, (fsm_output[13])
          | (fsm_output[10]) | (fsm_output[12]) | (fsm_output[11]));
    end
  end
  assign mux_10_nl = MUX_v_2_2_2({reg_2 , reg_3}, (fsm_output[3]) | (fsm_output[8])
      | (fsm_output[13]));
  assign xz_out = conv_u2u_2_3(mux_10_nl) + 3'b1;
  assign z_out = xz_out[2:0];
  assign xz_out_1 = conv_u2u_3_4({1'b1 , (z_out[1:0])}) + 4'b1;
  assign z_out_1 = xz_out_1[3:0];
  assign mux_21_nl = MUX_v_9_2_2({reg_1 , (Drow_1_sva[8:0])}, (fsm_output[14]) |
      (fsm_output[11]));
  assign mux_25_nl = MUX_v_2_2_2({2'b1 , (reg_2 + 2'b11)}, (fsm_output[1]) | (fsm_output[6])
      | (fsm_output[11]));
  assign xz_out_2 = conv_u2u_9_11(mux_21_nl) + conv_s2u_2_11(mux_25_nl);
  assign z_out_2 = xz_out_2[10:0];
  assign mux_9_nl = MUX_v_2_2_2({(reg_3 + 2'b11) , 2'b1}, fsm_output[16]);
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


  function [8:0] signext_9_1;
    input [0:0] vector;
  begin
    signext_9_1= {{8{vector[0]}}, vector};
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


  function [9:0] MUX_v_10_2_2;
    input [19:0] inputs;
    input [0:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[19:10];
      end
      1'b1 : begin
        result = inputs[9:0];
      end
      default : begin
        result = inputs[19:10];
      end
    endcase
    MUX_v_10_2_2 = result;
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


  function  [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
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



