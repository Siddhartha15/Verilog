//HalfAdder
module half_adder 
  (
   A,
   B,
   o_sum,
   o_carry
   );
 
  input  A;
  input  B;
  output o_sum;
  output o_carry;
 
  assign o_sum   = A ^ B;  // bitwise xor
  assign o_carry = A & B;  // bitwise and
 
endmodule 
