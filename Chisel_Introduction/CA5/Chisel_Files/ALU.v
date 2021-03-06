
module ALU(
  input         clock,
  input         reset,
  input  [15:0] io_i_DataA,
  input  [15:0] io_i_DataB,
  input         io_i_Valid_in,
  input  [15:0] io_i_Tuser_in,
  output [31:0] io_o_out,
  output        io_o_Valid_out,
  output [15:0] io_o_Tuser_out
);
  wire [15:0] ALU1_io_i_A; // @[ALU.scala 24:22]
  wire [15:0] ALU1_io_i_B; // @[ALU.scala 24:22]
  wire [31:0] ALU1_io_o_W; // @[ALU.scala 24:22]
  reg  s_Valid_Vec_0; // @[ALU.scala 17:30]
  reg [31:0] _RAND_0;
  reg  s_Valid_Vec_1; // @[ALU.scala 17:30]
  reg [31:0] _RAND_1;
  reg  s_Valid_Vec_2; // @[ALU.scala 17:30]
  reg [31:0] _RAND_2;
  reg  s_Valid_Vec_3; // @[ALU.scala 17:30]
  reg [31:0] _RAND_3;
  reg  s_Valid_Vec_4; // @[ALU.scala 17:30]
  reg [31:0] _RAND_4;
  reg  s_Valid_Vec_5; // @[ALU.scala 17:30]
  reg [31:0] _RAND_5;
  reg  s_Valid_Vec_6; // @[ALU.scala 17:30]
  reg [31:0] _RAND_6;
  reg  s_Valid_Vec_7; // @[ALU.scala 17:30]
  reg [31:0] _RAND_7;
  reg  s_Valid_Vec_8; // @[ALU.scala 17:30]
  reg [31:0] _RAND_8;
  reg  s_Valid_Vec_9; // @[ALU.scala 17:30]
  reg [31:0] _RAND_9;
  reg [15:0] s_Tuser_Vec_0; // @[ALU.scala 19:30]
  reg [31:0] _RAND_10;
  reg [15:0] s_Tuser_Vec_1; // @[ALU.scala 19:30]
  reg [31:0] _RAND_11;
  reg [15:0] s_Tuser_Vec_2; // @[ALU.scala 19:30]
  reg [31:0] _RAND_12;
  reg [15:0] s_Tuser_Vec_3; // @[ALU.scala 19:30]
  reg [31:0] _RAND_13;
  reg [15:0] s_Tuser_Vec_4; // @[ALU.scala 19:30]
  reg [31:0] _RAND_14;
  reg [15:0] s_Tuser_Vec_5; // @[ALU.scala 19:30]
  reg [31:0] _RAND_15;
  reg [15:0] s_Tuser_Vec_6; // @[ALU.scala 19:30]
  reg [31:0] _RAND_16;
  reg [15:0] s_Tuser_Vec_7; // @[ALU.scala 19:30]
  reg [31:0] _RAND_17;
  reg [15:0] s_Tuser_Vec_8; // @[ALU.scala 19:30]
  reg [31:0] _RAND_18;
  reg [15:0] s_Tuser_Vec_9; // @[ALU.scala 19:30]
  reg [31:0] _RAND_19;
  reg [31:0] s_OutPut_Vec_0; // @[ALU.scala 21:31]
  reg [31:0] _RAND_20;
  reg [31:0] s_OutPut_Vec_1; // @[ALU.scala 21:31]
  reg [31:0] _RAND_21;
  reg [31:0] s_OutPut_Vec_2; // @[ALU.scala 21:31]
  reg [31:0] _RAND_22;
  reg [31:0] s_OutPut_Vec_3; // @[ALU.scala 21:31]
  reg [31:0] _RAND_23;
  reg [31:0] s_OutPut_Vec_4; // @[ALU.scala 21:31]
  reg [31:0] _RAND_24;
  reg [31:0] s_OutPut_Vec_5; // @[ALU.scala 21:31]
  reg [31:0] _RAND_25;
  reg [31:0] s_OutPut_Vec_6; // @[ALU.scala 21:31]
  reg [31:0] _RAND_26;
  reg [31:0] s_OutPut_Vec_7; // @[ALU.scala 21:31]
  reg [31:0] _RAND_27;
  reg [31:0] s_OutPut_Vec_8; // @[ALU.scala 21:31]
  reg [31:0] _RAND_28;
  reg [31:0] s_OutPut_Vec_9; // @[ALU.scala 21:31]
  reg [31:0] _RAND_29;
  ALUSelect ALU1 ( // @[ALU.scala 24:22]
    .io_i_A(ALU1_io_i_A),
    .io_i_B(ALU1_io_i_B),
    .io_o_W(ALU1_io_o_W)
  );
  assign io_o_out = s_OutPut_Vec_9; // @[ALU.scala 40:18]
  assign io_o_Valid_out = s_Valid_Vec_9; // @[ALU.scala 42:24]
  assign io_o_Tuser_out = s_Tuser_Vec_9; // @[ALU.scala 41:24]
  assign ALU1_io_i_A = io_i_DataA; // @[ALU.scala 25:17]
  assign ALU1_io_i_B = io_i_DataB; // @[ALU.scala 26:17]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  s_Valid_Vec_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  s_Valid_Vec_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  s_Valid_Vec_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  s_Valid_Vec_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  s_Valid_Vec_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  s_Valid_Vec_5 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  s_Valid_Vec_6 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  s_Valid_Vec_7 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  s_Valid_Vec_8 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  s_Valid_Vec_9 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  s_Tuser_Vec_0 = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  s_Tuser_Vec_1 = _RAND_11[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  s_Tuser_Vec_2 = _RAND_12[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  s_Tuser_Vec_3 = _RAND_13[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  s_Tuser_Vec_4 = _RAND_14[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  s_Tuser_Vec_5 = _RAND_15[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  s_Tuser_Vec_6 = _RAND_16[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  s_Tuser_Vec_7 = _RAND_17[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  s_Tuser_Vec_8 = _RAND_18[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  s_Tuser_Vec_9 = _RAND_19[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  s_OutPut_Vec_0 = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  s_OutPut_Vec_1 = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  s_OutPut_Vec_2 = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  s_OutPut_Vec_3 = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  s_OutPut_Vec_4 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  s_OutPut_Vec_5 = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  s_OutPut_Vec_6 = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  s_OutPut_Vec_7 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  s_OutPut_Vec_8 = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  s_OutPut_Vec_9 = _RAND_29[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      s_Valid_Vec_0 <= 1'h0;
    end else begin
      s_Valid_Vec_0 <= io_i_Valid_in;
    end
    if (reset) begin
      s_Valid_Vec_1 <= 1'h0;
    end else begin
      s_Valid_Vec_1 <= s_Valid_Vec_0;
    end
    if (reset) begin
      s_Valid_Vec_2 <= 1'h0;
    end else begin
      s_Valid_Vec_2 <= s_Valid_Vec_1;
    end
    if (reset) begin
      s_Valid_Vec_3 <= 1'h0;
    end else begin
      s_Valid_Vec_3 <= s_Valid_Vec_2;
    end
    if (reset) begin
      s_Valid_Vec_4 <= 1'h0;
    end else begin
      s_Valid_Vec_4 <= s_Valid_Vec_3;
    end
    if (reset) begin
      s_Valid_Vec_5 <= 1'h0;
    end else begin
      s_Valid_Vec_5 <= s_Valid_Vec_4;
    end
    if (reset) begin
      s_Valid_Vec_6 <= 1'h0;
    end else begin
      s_Valid_Vec_6 <= s_Valid_Vec_5;
    end
    if (reset) begin
      s_Valid_Vec_7 <= 1'h0;
    end else begin
      s_Valid_Vec_7 <= s_Valid_Vec_6;
    end
    if (reset) begin
      s_Valid_Vec_8 <= 1'h0;
    end else begin
      s_Valid_Vec_8 <= s_Valid_Vec_7;
    end
    if (reset) begin
      s_Valid_Vec_9 <= 1'h0;
    end else begin
      s_Valid_Vec_9 <= s_Valid_Vec_8;
    end
    if (reset) begin
      s_Tuser_Vec_0 <= 16'h0;
    end else begin
      s_Tuser_Vec_0 <= io_i_Tuser_in;
    end
    if (reset) begin
      s_Tuser_Vec_1 <= 16'h0;
    end else begin
      s_Tuser_Vec_1 <= s_Tuser_Vec_0;
    end
    if (reset) begin
      s_Tuser_Vec_2 <= 16'h0;
    end else begin
      s_Tuser_Vec_2 <= s_Tuser_Vec_1;
    end
    if (reset) begin
      s_Tuser_Vec_3 <= 16'h0;
    end else begin
      s_Tuser_Vec_3 <= s_Tuser_Vec_2;
    end
    if (reset) begin
      s_Tuser_Vec_4 <= 16'h0;
    end else begin
      s_Tuser_Vec_4 <= s_Tuser_Vec_3;
    end
    if (reset) begin
      s_Tuser_Vec_5 <= 16'h0;
    end else begin
      s_Tuser_Vec_5 <= s_Tuser_Vec_4;
    end
    if (reset) begin
      s_Tuser_Vec_6 <= 16'h0;
    end else begin
      s_Tuser_Vec_6 <= s_Tuser_Vec_5;
    end
    if (reset) begin
      s_Tuser_Vec_7 <= 16'h0;
    end else begin
      s_Tuser_Vec_7 <= s_Tuser_Vec_6;
    end
    if (reset) begin
      s_Tuser_Vec_8 <= 16'h0;
    end else begin
      s_Tuser_Vec_8 <= s_Tuser_Vec_7;
    end
    if (reset) begin
      s_Tuser_Vec_9 <= 16'h0;
    end else begin
      s_Tuser_Vec_9 <= s_Tuser_Vec_8;
    end
    if (reset) begin
      s_OutPut_Vec_0 <= 32'h0;
    end else begin
      s_OutPut_Vec_0 <= ALU1_io_o_W;
    end
    if (reset) begin
      s_OutPut_Vec_1 <= 32'h0;
    end else begin
      s_OutPut_Vec_1 <= s_OutPut_Vec_0;
    end
    if (reset) begin
      s_OutPut_Vec_2 <= 32'h0;
    end else begin
      s_OutPut_Vec_2 <= s_OutPut_Vec_1;
    end
    if (reset) begin
      s_OutPut_Vec_3 <= 32'h0;
    end else begin
      s_OutPut_Vec_3 <= s_OutPut_Vec_2;
    end
    if (reset) begin
      s_OutPut_Vec_4 <= 32'h0;
    end else begin
      s_OutPut_Vec_4 <= s_OutPut_Vec_3;
    end
    if (reset) begin
      s_OutPut_Vec_5 <= 32'h0;
    end else begin
      s_OutPut_Vec_5 <= s_OutPut_Vec_4;
    end
    if (reset) begin
      s_OutPut_Vec_6 <= 32'h0;
    end else begin
      s_OutPut_Vec_6 <= s_OutPut_Vec_5;
    end
    if (reset) begin
      s_OutPut_Vec_7 <= 32'h0;
    end else begin
      s_OutPut_Vec_7 <= s_OutPut_Vec_6;
    end
    if (reset) begin
      s_OutPut_Vec_8 <= 32'h0;
    end else begin
      s_OutPut_Vec_8 <= s_OutPut_Vec_7;
    end
    if (reset) begin
      s_OutPut_Vec_9 <= 32'h0;
    end else begin
      s_OutPut_Vec_9 <= s_OutPut_Vec_8;
    end
  end
endmodule
