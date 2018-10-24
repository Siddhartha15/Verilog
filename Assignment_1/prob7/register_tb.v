/* Siddhartha M - 17CO246
   Chandan Naik - 17CO212
	Date 14 Oct 2018
	TestBench Code to implement register */
`include "register.v"

module register_tb;

reg [31:0] d;
reg  reset,clk;
wire [31:0] q;

DFF Obj(d,reset,clk,q);

initial begin

$dumpfile("register.vcd");
$dumpvars(0,register_tb);

clk=0;reset=0; //negedge initially

#2 d=32'hA213D22F;//posedge after 2 sec
#2 $display("At time %t negedge is present and value of register is %d\n",$time,q);//Read
d=32'h3324DFA1;//Trying to write after posedge in negative cycle 
$display("At time %t negative cycle is present and value of register is still %d\n",$time,q);//Value of register remains same 
#3  $display("At time %t posedge has passed and value of register has been updated to %d\n",$time,q);//value gets updated
d=32'h12353ABC;//Trying to write after posedge in positive cycle
$display("At time %t positive cycle is present and value of register is still %d\n",$time,q);//write cannot be performed
#4 $display("At time %t posedge has passed and value of register has again been updated to %d\n",$time,q);//value gets updated

$finish;
end

	always #2 clk=!clk;

endmodule
 
