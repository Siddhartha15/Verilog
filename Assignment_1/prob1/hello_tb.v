/* Siddhartha M - 17CO246
   Chandan Naik - 17CO212
	Program to print hello world */
module t_hello_world;
	initial begin
		$dumpfile("hello_world.vcd");
		$dumpvars(0,t_hello_world);
		repeat(100)
			#1 $monitor($time, " Hello World");		
	end
endmodule

