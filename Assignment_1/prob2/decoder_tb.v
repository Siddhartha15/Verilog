`include "decoder.v"

module tb_decoder;
	wire [15:0] Output;
	reg Enable;
	reg [3:0] Input;

	decoder decoder_inst(.binary_in(Input), .decoder_out(Output), .enable(Enable));
	initial 
	begin
		$dumpfile("decoder.vcd");
		$dumpvars(0,tb_decoder);
		$monitor($time, " Input = %d Enable = %d Output = %b", Input, Enable, Output );
		Enable = 0;
		#10;

		Enable = 1;

		Input = 4'b0000;
		#10;

		Input = 4'b0001;
                #10;

		Input = 4'b0010;
                #10;

		Input = 4'b0011;
                #10;

		Input = 4'b0100;
                #10;

		Input = 4'b0101;
                #10;

		Input = 4'b0110;
                #10;

		Input = 4'b0111;
                #10;

		Input = 4'b1000;
                #10;

		Input = 4'b1001;
                #10;

		Input = 4'b1010;
                #10;

		Input = 4'b1011;
                #10;

		Input = 4'b1100;
                #10;

		Input = 4'b1101;
                #10;

		Input = 4'b1110;
                #10;

		Input = 4'b1111;
                #10;

	end
endmodule
