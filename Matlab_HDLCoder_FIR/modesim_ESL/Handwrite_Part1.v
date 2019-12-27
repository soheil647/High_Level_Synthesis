module f0(
	input [15:0] A,
	output [15:0] Out
);
		assign Out = {A<<9} - {A<<5};
endmodule

module f1(
	input [15:0] A,
	output [15:0] Out
);
	assign Out = {A<<2} - {A<<1} - {A<<4} + {A<<5} - {A<<6}  + {A<<8} - {A<<9};


endmodule

module f2(
	input [15:0] A,
	output [15:0] Out
);

	assign Out = {A<<5} - {A<<0}; 

endmodule

module adder(
	input [15:0] A,
	input [15:0] B,
	output [15:0] Out
);

	assign Out = A + B;

endmodule

module reg16 (
	input clk,
	input rst,
	input regEn,
	input [15:0] regIn,
	output reg [15:0] regOut
);

	always @(posedge clk,posedge rst) begin
		if(rst)
			regOut <= 16'b0;
		else begin
			if(regEn==1)
				regOut <= regIn;
			else if (regEn==0)
				regOut <= regOut;
		end

	end

endmodule

module FIR(
input [15:0] X,
input clk,
input rst,
output[15:0] Out
);

wire [15:0] reg1O;
wire [15:0] reg2O;
reg regEn;
wire [15:0] f0O;
wire [15:0] f1O;
wire [15:0] f2O;

wire [15:0] A1O;
wire [15:0] A2O;

always @(posedge clk, posedge rst) begin
	if(rst)
		regEn = 0;
	else
		regEn = 1;

end
reg16 R1 (
	.clk(clk),
	.rst(rst),
	.regEn(regEn),
	.regIn(X),
	.regOut(reg1O)
);
reg16 R2 (
	.clk(clk),
	.rst(rst),
	.regEn(regEn),
	.regIn(reg1O),
	.regOut(reg2O)
);

 f0 fil0 (
	.A(X),
	.Out(f0O)
);
 f1 fil1 (
	.A(reg1O),
	.Out(f1O)
);
 f2 fil2 (
	.A(reg2O),
	.Out(f2O)
);

adder Add1 (
	.A(f0O),
	.B(f1O),
	.Out(A1O)
);
adder A2dd(
	.A(A1O),
	.B(f2O),
	.Out(A2O)
);

assign Out = A2O;


endmodule

module FIR_TB();

reg [15:0] X;
reg clk;
reg rst;
wire [15:0] Out;

FIR UUT(
.X(X),
.clk(clk),
.rst(rst),
.Out(Out)
);

always #20 clk=~clk;
//always #40 X = X+1;
initial begin
clk=0;
rst=1;
#100
rst=0;
X = 16'd1;
#1000
$stop;
end
endmodule

