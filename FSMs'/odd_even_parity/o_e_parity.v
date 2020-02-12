module o_e_parity(x,clk,z);
input x,clk;
output reg z;
reg even_odd;
parameter EVEN=0, ODD=1;

always @(posedge clk)
case(even_odd)
	EVEN: begin
		z<=x?1:0; //If X==1, then z==1 else z==0
		even_odd<=x?ODD:EVEN;
	end
	ODD: begin
		z<=x?0:1;	//if x==1, then z=0 else z==1
		even_odd<=x?EVEN:ODD;
	end
	default: even_odd<=EVEN;
	endcase
	endmodule

