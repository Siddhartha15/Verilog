//Program to print Hello World
//Siddharatha M - 17CO246
//Chandan Naik-17CO212


`include "halfAdder.v"
 
module half_adder_tb;
 
  reg A = 0;
  reg B = 0;
  wire w_SUM;
  wire w_CARRY;
   
  half_adder ha
    (
     .A(A),
     .B(B),
     .o_sum(w_SUM),
     .o_carry(w_CARRY)
     );
 
  initial
    begin
	$dumpfile("halfAdder.vcd");
	$dumpvars(0,half_adder_tb);
	$monitor($time, " A=%d B=%d S=%d C=%d",A,B,w_SUM,w_CARRY);
      A = 1'b0;
      B = 1'b0;
      #10;
      A = 1'b0;
      B = 1'b1;
      #10;
      A = 1'b1;
      B = 1'b0;
      #10;
      A = 1'b1;
      B = 1'b1;
      #10;
    end 
 
endmodule // half_adder_tb
