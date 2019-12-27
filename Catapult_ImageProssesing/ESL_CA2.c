#include <ac_int.h>
#include <ac_fixed.h>



void Convolotion(ac_fixed<8,8,false,AC_TRN,AC_SAT> in[262144] , ac_fixed<8,8,false,AC_TRN,AC_SAT> out[262144])
{
	ac_fixed<8,0,false,AC_TRN> kernel[9];
	kernel[0] = 0.0625;
	kernel[1] = 0.125;
	kernel[2] = 0.0625;
	kernel[3] = 0.125;
	kernel[4] = 0.025;
	kernel[5] = 0.125;
	kernel[6] = 0.0625;
	kernel[7] = 0.125;
	kernel[8] = 0.0625;

	ac_fixed<8,8,false,AC_TRN,AC_SAT> Result;

	ac_int<11,true> Drow;
	ac_int<11,true> Dcolumn;
	ac_int<4,true> Krow;
	ac_int<4,true> Kcolumn;

	ac_int<11,true> conv1;
	ac_int<11,true> conv2;

	ac_int<21,false> Data_Select;
	ac_int<5,false> Kernel_Select;

	for(Dcolumn=0;Dcolumn<512;Dcolumn++)
	{
		for(Drow=0;Drow<512;Drow++)
		{
			Result=0;
			for(Kcolumn=0;Kcolumn<3;Kcolumn++)
			{
				for(Krow=0;Krow<3;Krow++)
				{
					conv1 = (Dcolumn-(1-Kcolumn));
					conv2 = (Drow-(1-Krow));
	
					if(conv1<0 || conv1>511 || conv2<0 || conv2>511)
						Result = Result + 0;
					else
					{
						Data_Select = (conv2 * 512) + (conv1);
						Kernel_Select = ((Krow*3) + Kcolumn);
						
						Result = Result + (in[Data_Select] * kernel[Kernel_Select]);
					}
				}
			}
			Data_Select = (Drow * 512) + Dcolumn;
			out[Data_Select] = Result;
		}
	}
}



