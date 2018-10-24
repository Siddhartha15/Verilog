//HalfAdder
module halfAdder 
  (A,B,S,C);
 
  input  A,B;
  output S,C;
 
  assign S   = A ^ B;  // bitwise xor
  assign C = A & B;  // bitwise and
 
endmodule 
