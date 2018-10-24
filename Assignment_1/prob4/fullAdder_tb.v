//Program to implement full Adder
//Siddhartha M - 17CO246
//Chandan Naik - 17CO212
:
`include "fullAdder.v"

module t_fullAdder;
	reg X,Y,Z;
	wire C,S;

	fullAdder fA(.X(X),.Y(Y),.Z(Z),.Carry(C),.Sum(S));
	initial
	begin
		$dumpfile("fullAdder.vcd");
		$dumpvars(0,t_fullAdder);
		$monitor($time, " X=%d Y=%d Z=%d C=%d S=%d",X,Y,Z,C,S);
		X = 1'b0;	Y = 1'b0;	Z = 1'b0;
		#10;
		X = 1'b0;       Y = 1'b0;       Z = 1'b1;
                #10;
		X = 1'b0;       Y = 1'b1;       Z = 1'b0;
                #10;
		X = 1'b0;       Y = 1'b1;       Z = 1'b1;
                #10;
		X = 1'b1;       Y = 1'b0;       Z = 1'b0;
                #10;
		X = 1'b1;       Y = 1'b0;       Z = 1'b1;
                #10;
		X = 1'b1;       Y = 1'b1;       Z = 1'b0;
                #10;
		X = 1'b1;       Y = 1'b1;       Z = 1'b1;
                #10;


	end
endmodule
