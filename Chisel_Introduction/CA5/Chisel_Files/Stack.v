module Stack(
  input         clock,
  input         reset,
  input         io_i_W_EN,
  input         io_i_RD_EN,
  output        io_o_Empty,
  output        io_o_Full,
  input  [31:0] io_i_D_in,
  output [31:0] io_o_D_out
);
  reg [15:0] stack_mem [0:9]; // @[Stack.scala 16:22]
  reg [31:0] _RAND_0;
  wire [15:0] stack_mem__T_39_data; // @[Stack.scala 16:22]
  wire [3:0] stack_mem__T_39_addr; // @[Stack.scala 16:22]
  reg [31:0] _RAND_1;
  wire [15:0] stack_mem__T_31_data; // @[Stack.scala 16:22]
  wire [3:0] stack_mem__T_31_addr; // @[Stack.scala 16:22]
  wire  stack_mem__T_31_mask; // @[Stack.scala 16:22]
  wire  stack_mem__T_31_en; // @[Stack.scala 16:22]
  reg [3:0] sp; // @[Stack.scala 17:26]
  reg [31:0] _RAND_2;
  reg [31:0] out; // @[Stack.scala 18:26]
  reg [31:0] _RAND_3;
  wire  _T_26; // @[Stack.scala 22:27]
  wire  _T_27; // @[Stack.scala 22:20]
  wire [4:0] _T_29; // @[Stack.scala 23:19]
  wire [3:0] _T_30; // @[Stack.scala 23:19]
  wire  _T_37; // @[Stack.scala 26:35]
  wire  _T_38; // @[Stack.scala 26:28]
  wire [4:0] _T_42; // @[Stack.scala 29:16]
  wire [4:0] _T_43; // @[Stack.scala 29:16]
  wire [3:0] _T_44; // @[Stack.scala 29:16]
  wire [31:0] _GEN_3; // @[Stack.scala 26:43]
  wire [3:0] _GEN_5; // @[Stack.scala 26:43]
  wire [3:0] _GEN_12; // @[Stack.scala 22:43]
  wire [31:0] _GEN_16; // @[Stack.scala 22:43]
  assign stack_mem__T_39_addr = sp;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign stack_mem__T_39_data = stack_mem[stack_mem__T_39_addr]; // @[Stack.scala 16:22]
  `else
  assign stack_mem__T_39_data = stack_mem__T_39_addr >= 4'ha ? _RAND_1[15:0] : stack_mem[stack_mem__T_39_addr]; // @[Stack.scala 16:22]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign stack_mem__T_31_data = io_i_D_in[15:0];
  assign stack_mem__T_31_addr = sp + 4'h1;
  assign stack_mem__T_31_mask = 1'h1;
  assign stack_mem__T_31_en = io_i_W_EN & _T_26;
  assign _T_26 = sp < 4'h9; // @[Stack.scala 22:27]
  assign _T_27 = io_i_W_EN & _T_26; // @[Stack.scala 22:20]
  assign _T_29 = sp + 4'h1; // @[Stack.scala 23:19]
  assign _T_30 = sp + 4'h1; // @[Stack.scala 23:19]
  assign _T_37 = sp > 4'h0; // @[Stack.scala 26:35]
  assign _T_38 = io_i_RD_EN & _T_37; // @[Stack.scala 26:28]
  assign _T_42 = sp - 4'h1; // @[Stack.scala 29:16]
  assign _T_43 = $unsigned(_T_42); // @[Stack.scala 29:16]
  assign _T_44 = _T_43[3:0]; // @[Stack.scala 29:16]
  assign _GEN_3 = _T_38 ? {{16'd0}, stack_mem__T_39_data} : out; // @[Stack.scala 26:43]
  assign _GEN_5 = _T_38 ? _T_44 : sp; // @[Stack.scala 26:43]
  assign _GEN_12 = _T_27 ? _T_30 : _GEN_5; // @[Stack.scala 22:43]
  assign _GEN_16 = _T_27 ? out : _GEN_3; // @[Stack.scala 22:43]
  assign io_o_Empty = sp == 4'h0; // @[Stack.scala 19:18 Stack.scala 24:18 Stack.scala 32:18]
  assign io_o_Full = sp == 4'h9; // @[Stack.scala 20:17 Stack.scala 28:17 Stack.scala 35:17]
  assign io_o_D_out = out; // @[Stack.scala 37:18]
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 10; initvar = initvar+1)
    stack_mem[initvar] = _RAND_0[15:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  sp = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  out = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(stack_mem__T_31_en & stack_mem__T_31_mask) begin
      stack_mem[stack_mem__T_31_addr] <= stack_mem__T_31_data; // @[Stack.scala 16:22]
    end
    if (reset) begin
      sp <= 4'h0;
    end else begin
      if (_T_27) begin
        sp <= _T_30;
      end else begin
        if (_T_38) begin
          sp <= _T_44;
        end
      end
    end
    if (reset) begin
      out <= 32'h0;
    end else begin
      if (!(_T_27)) begin
        if (_T_38) begin
          out <= {{16'd0}, stack_mem__T_39_data};
        end
      end
    end
  end
endmodule
