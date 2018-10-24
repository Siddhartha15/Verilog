module DFF(d,reset,clk,q);

input [31:0] d;
input reset,clk;
output reg [31:0] q;

always @(posedge clk) begin
        if(reset) begin
        q<=32'h00000000;
        end
        else begin
        q<=d;
        end
end

endmodule
