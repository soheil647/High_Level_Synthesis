package solutions

import chisel3._

class ALUSelect(w: Int, Select:String) extends Module {
  val io = IO(new Bundle {
    val i_A  = Input(UInt(w.W))
    val i_B  = Input(UInt(w.W))
    val o_W = Output(UInt((w*2).W))
  })
  
   if(Select == "Add") {
    val ALUAdd = Module(new ALUAdd(w))
    ALUAdd.io.i_input1 := io.i_A
    ALUAdd.io.i_input2 := io.i_B
    io.o_W := ALUAdd.io.o_out 	
   }

   else if(Select == "Sub") {
    val ALUSub = Module(new ALUSub(w))
    ALUSub.io.i_input1 := io.i_A
    ALUSub.io.i_input2 := io.i_B
    io.o_W := ALUSub.io.o_out 
   }

   else if(Select == "Div") {
    val ALUDiv = Module(new ALUDiv(w))
    ALUDiv.io.i_input1 := io.i_A
    ALUDiv.io.i_input2 := io.i_B
    io.o_W := ALUDiv.io.o_out 	
   }

   else if(Select == "Mult") {
    val ALUMult = Module(new ALUMult(w))
    ALUMult.io.i_input1 := io.i_A
    ALUMult.io.i_input2 := io.i_B
    io.o_W := ALUMult.io.o_out 	
   }
}
