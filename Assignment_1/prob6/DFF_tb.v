/* Siddhartha M - 17CO246
   Chandan Naik - 17CO212
	Date 14 Oct 2018
	TestBench Code to implement D FlipFlop */
`include "master-slave.v"
//`include "behavioral.v"
//`include "gate-level.v"

module DFF_tb;

reg d,reset,clk;

wire q,qbar;

DFF Obj(d,reset,clk,q,qbar);

initial begin

$dumpfile("DFF.vcd");
$dumpvars(0,DFF_tb);

clk=0;
//	fork
	#5 d=1;reset=1;
	#5 d=0;reset=1;
	#15 d=1;reset=0;
	#15 d=0;reset=0;
	#15 d=1;reset=0;
        #15 d=0;reset=0;
        #15 d=1;reset=0;
        #15 d=0;reset=0;
	#5 d=1;reset=1;
	#5 $finish;
//	join
end
	always #2 clk=!clk;

endmodule
