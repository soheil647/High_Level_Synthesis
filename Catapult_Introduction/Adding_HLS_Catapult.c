
#include <ac_int.h>

void Adding (ac_int<8,false> A, ac_int<8,false> B, ac_int<8,false> C, ac_int<8,false> D, ac_int<8,false> E, ac_int<64,false> &Temp)
{
		ac_int<64,false> Temp2;
	out: for(int i=0;i<11;i++)
	 {
		 in: for(int i=0;i<6;i++)
		  {
		 	Temp2+=(A+A+B+C+D)/4;
		  }
		Temp2*=E*E;
	 }
	 Temp = Temp2;

}