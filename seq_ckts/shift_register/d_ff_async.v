module d_ff(data,clk,reset,out);		//asynchronous reset
input data,clk,reset;
output reg out;

always @(posedge clk, posedge reset) begin
	if(reset) out<=0;
	else out<=data;
end

endmodule

