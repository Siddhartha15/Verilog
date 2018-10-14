//Program to implement fullAdder using halfAdder
`include "halfAdder.v"
module fullAdder(X,Y,Z,Carry,Sum);
	input X,Y,Z;
	output Carry,Sum;
	wire C1,C2,S1;	
	halfAdder ha1 (.A(X),.B(Y),.C(C1),.S(S1));
	halfAdder ha2 (.A(S1),.B(Z),.C(C2),.S(Sum));
	assign Carry = C2 | C1;

endmodule
