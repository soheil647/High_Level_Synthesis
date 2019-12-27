// See LICENSE.txt for license details.
package solutions

import chisel3.iotesters.{PeekPokeTester, Driver, ChiselFlatSpec}
import scala.collection.mutable.{ArrayStack => ScalaStack}

class StackTests(c: Stack) extends PeekPokeTester(c) {
  var nxto_D_out = 0
  var o_D_out = 0
  var o_Empty = 0
  var o_Full = 0

  poke(c.io.i_W_EN,   1)
  poke(c.io.i_RD_EN,    0)
  poke(c.io.i_D_in, 232)

  step(1)

  println(s"o_D_out ${peek(c.io.o_D_out)}")
  println(s"o_Empty ${peek(c.io.o_Empty)}")
  println(s"o_Full ${peek(c.io.o_Full)}")

  poke(c.io.i_W_EN,   1)
  poke(c.io.i_RD_EN,    0)
  poke(c.io.i_D_in, 90)

  step(1)
  step(1)

  println(s"o_D_out ${peek(c.io.o_D_out)}")
  println(s"o_Empty ${peek(c.io.o_Empty)}")
  println(s"o_Full ${peek(c.io.o_Full)}")

  poke(c.io.i_W_EN,   0)
  poke(c.io.i_RD_EN,    1)
  poke(c.io.i_D_in, 33)

  step(1)
  step(1)

  println(s"o_D_out ${peek(c.io.o_D_out)}")
  println(s"o_Empty ${peek(c.io.o_Empty)}")
  println(s"o_Full ${peek(c.io.o_Full)}")

  poke(c.io.i_W_EN,   1)
  poke(c.io.i_RD_EN,    0)
  poke(c.io.i_D_in, 22)

  println(s"o_D_out ${peek(c.io.o_D_out)}")
  println(s"o_Empty ${peek(c.io.o_Empty)}")
  println(s"o_Full ${peek(c.io.o_Full)}")
  expect(c.io.o_D_out, 90)
  expect(c.io.o_Empty, o_Empty)
  expect(c.io.o_Full, o_Full)
}

class StackTester extends ChiselFlatSpec {
  behavior of "Stack"
  backends foreach {backend =>
    it should s"correctly support basic stack operations $backend" in {
      Driver(() => new Stack(depth = 10), backend)((c) => new StackTests(c)) should be (true)
    }
  }
}



