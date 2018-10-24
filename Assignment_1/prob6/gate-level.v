//Gate level DFF

module DFF(d,reset,clk,q,qbar);

input d,reset,clk;
output reg q,qbar;

always @(posedge clk) begin
	if(reset) begin
	q<=1'b0;
	qbar=!q;
	end
	else begin
	q<=d;
	qbar=!q;
	end
end

endmodule

	
