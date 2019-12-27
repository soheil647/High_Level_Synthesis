// See LICENSE.txt for license details.
package solutions

import chisel3.iotesters.{ChiselFlatSpec, Driver, PeekPokeTester}

class ALUTest(c: ALU) extends PeekPokeTester(c) {
   
   
  for (i <- 0 until 10) {
    val in0 = i
    val in1 = i
    poke(c.io.i_DataA, in0)
    poke(c.io.i_DataB, in1)
    step(10)
    expect(c.io.o_out, in0 + in1)
  }
}

class ALUTester extends ChiselFlatSpec {
  behavior of "ALU"
  backends foreach {backend =>
    it should s"correctly add randomly generated numbers in $backend" in {
      Driver(() => new ALU(16,"Add",10), backend)(c => new ALUTest(c)) should be (true)
    }
  }
}
