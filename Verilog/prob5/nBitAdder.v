
//taking n = 2


`include "fullAdder.v"
 module nBitAdder (
	input [1:0] i_add_term1,
   	input [1:0] i_add_term2,
   	output [2:0]  o_result
   	);
     
  wire [2:0]     w_CARRY;
  wire [1:0]   w_SUM;
   
  // No carry input on first full adder  
  assign w_CARRY[0] = 1'b0;        
   
  genvar             ii;
  generate 
    for (ii=0; ii<2; ii=ii+1) 
      begin
        fullAdder fa
            ( 
              .X(i_add_term1[ii]),
              .Y(i_add_term2[ii]),
              .Z(w_CARRY[ii]),
              .Carry(w_CARRY[ii+1]),
              .Sum(w_SUM[ii])
              );
      end
  endgenerate
   
  assign o_result = {w_CARRY[2], w_SUM};   // Verilog Concatenation
 
endmodule // ripple_carry_adder
