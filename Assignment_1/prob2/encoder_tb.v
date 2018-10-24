`include "encoder.v"
module tb_encoder;
	reg [15:0] Input;
	reg Enable;
	wire [3:0] Output;

	encoder encoder_inst(.binary_out(Output), .encoder_in(Input), .enable(Enable));

	initial 
	begin
		$dumpfile("encoder.vcd");
		$dumpvars(0,tb_encoder);
		$monitor($time, " Input = %b Enable = %d Output = %d",Input, Enable, Output );
		Enable = 0;
                #10;

		Enable = 1;
		
		Input = 16'b0000000000000001;
                #10;

		Input = 16'b0000000000000010;
		#10;

		Input = 16'b0000000000000100;
                #10;
		
		Input = 16'b0000000000001000;
                #10;
		
		Input = 16'b0000000000010000;
                #10;

		Input = 16'b0000000000100000;
                #10;

		Input = 16'b0000000001000000;
                #10;

		Input = 16'b0000000010000000;
                #10;

		Input = 16'b0000000100000000;
		#10;
		
		Input = 16'b0000001000000000;
                #10;

		Input = 16'b0000010000000000;
                #10;

		Input = 16'b0000100000000000;
                #10;

		Input = 16'b0001000000000000;
                #10;

		Input = 16'b0010000000000000;
                #10;

		Input = 16'b0100000000000000;
                #10;

		Input = 16'b1000000000000000;
                #10;
	end
endmodule
