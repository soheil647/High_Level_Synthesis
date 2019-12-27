package solutions

import chisel3._

class ALUDiv(w: Int) extends Module {
  val io = IO(new Bundle {
    val i_input1  = Input(UInt(w.W))
    val i_input2  = Input(UInt(w.W))
    val o_out = Output(UInt((w*2).W))
  })
  io.o_out := io.i_input1 / io.i_input2
}
