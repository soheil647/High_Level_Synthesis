package solutions

import chisel3._

class ALU(w: Int, Select: String, Delay: Int) extends Module {
  val io = IO(new Bundle {
    val i_DataA  = Input(UInt(w.W))
    val i_DataB  = Input(UInt(w.W))
    val i_Valid_in = Input(UInt(1.W))
    val i_Tuser_in = Input(UInt(w.W))
    val o_out = Output(UInt((w*2).W))
    val o_Valid_out = Output(UInt(1.W))
    val o_Tuser_out = Output(UInt(w.W))
  })
  
    val s_init1 = Seq.fill(Delay) {0.U(1.W)}
    val s_Valid_Vec = RegInit(VecInit(s_init1))
    val s_init2 = Seq.fill(Delay) {0.U(w.W)}
    val s_Tuser_Vec = RegInit(VecInit(s_init2))
    val s_init3 = Seq.fill(Delay) {0.U((w*2).W)}
    val s_OutPut_Vec = RegInit(VecInit(s_init3))


    val ALU1 = Module(new ALUSelect(w, Select))
    ALU1.io.i_A := io.i_DataA
    ALU1.io.i_B := io.i_DataB


    s_OutPut_Vec(0) := ALU1.io.o_W
    s_Tuser_Vec(0)  := io.i_Tuser_in
    s_Valid_Vec(0)  := io.i_Valid_in		

    
    for(i <- 0 until (Delay-1) ){
	s_OutPut_Vec(i+1) := s_OutPut_Vec(i)
	s_Tuser_Vec(i+1) := s_Tuser_Vec(i)
	s_Valid_Vec(i+1) := s_Valid_Vec(i)
    }

	io.o_out := s_OutPut_Vec(Delay-1)
	io.o_Tuser_out := s_Tuser_Vec(Delay-1)
	io.o_Valid_out := s_Valid_Vec(Delay-1)
}
