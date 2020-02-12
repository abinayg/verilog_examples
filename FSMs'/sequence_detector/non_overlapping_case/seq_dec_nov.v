//Check this module

module seq_dec_nov(clk,x,z);
input clk,x;
output reg z;
reg[1:0] state_name;
parameter S_0=2'b00,S_1=2'b01,S_2=2'b10,S_3=2'b11;

always @(posedge clk)
	case(state_name)
		S_0: begin
		z<=0;
		state_name<=x?S_1:S_0;
		end
		S_1:begin z<=0;
		state_name<=x?S_0:S_2;end
		S_2: begin z<=0;
		state_name<=x?S_0:S_3;end
		S_3:begin 
		z<=x?1:0;
		state_name<=S_0;end
		default: begin
		state_name<=S_0;
		z<=0;
		end
	endcase

endmodule