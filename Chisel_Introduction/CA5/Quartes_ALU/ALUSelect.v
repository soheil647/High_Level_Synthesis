
module ALUSelect(
  input  [15:0] io_i_A,
  input  [15:0] io_i_B,
  output [31:0] io_o_W
);
  wire [15:0] ALUAdd_io_i_input1; // @[ALUSelect.scala 13:24]
  wire [15:0] ALUAdd_io_i_input2; // @[ALUSelect.scala 13:24]
  wire [31:0] ALUAdd_io_o_out; // @[ALUSelect.scala 13:24]
  ALUAdd ALUAdd ( // @[ALUSelect.scala 13:24]
    .io_i_input1(ALUAdd_io_i_input1),
    .io_i_input2(ALUAdd_io_i_input2),
    .io_o_out(ALUAdd_io_o_out)
  );
  assign io_o_W = ALUAdd_io_o_out; // @[ALUSelect.scala 16:12]
  assign ALUAdd_io_i_input1 = io_i_A; // @[ALUSelect.scala 14:24]
  assign ALUAdd_io_i_input2 = io_i_B; // @[ALUSelect.scala 15:24]
endmodule