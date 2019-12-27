package solutions

import chisel3._
import chisel3.util.log2Ceil

class Stack(val depth: Int) extends Module {
  val io = IO(new Bundle {
    val i_W_EN  = Input(Bool())
    val i_RD_EN = Input(Bool())
    val o_Empty = Output(UInt(1.W))
    val o_Full  = Output(UInt(1.W))
    val i_D_in  = Input(UInt(32.W))
    val o_D_out = Output(UInt(32.W))
  })

  val stack_mem = Mem(depth, UInt(16.W))
  val sp        = RegInit(0.U(log2Ceil(depth).W))
  val out       = RegInit(0.U(32.W))
      io.o_Empty := 0.U
      io.o_Full := 0.U

    when(io.i_W_EN && (sp < (depth-1).U)) {
      stack_mem(sp+1.U) := io.i_D_in
      io.o_Empty := 0.U
      sp := sp + 1.U
    } .elsewhen(io.i_RD_EN && (sp > 0.U)) {
      out := stack_mem(sp)
      io.o_Full := 0.U
      sp := sp - 1.U
    }
    when (sp === 0.U) {
      io.o_Empty := 1.U
    }
    when (sp === (depth-1).U){
      io.o_Full := 1.U
    }
      io.o_D_out := out
}
