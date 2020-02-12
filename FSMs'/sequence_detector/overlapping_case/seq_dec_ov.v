//Check this module

module seq_dec_ov(clk,x,z,reset);
input clk,x,reset;
output reg z;
reg[1:0] state_name,present_state;
parameter S_0=2'b00,S_1=2'b01,S_2=2'b10,S_3=2'b11;
	
always @(posedge clk)
	case(present_state)
		S_0: begin
		z=0;
		state_name=x?S_0:S_1;
		end
		S_1:begin z=0;
		state_name=x?S_2:S_1;end
		S_2: begin z=0;
		state_name=x?S_1:S_1;end
		S_3:begin 
		z=x?0:1;
		state_name=x?S_0:S_1;end
		default: begin
		state_name=S_0;
		z=0;
		end
	endcase

endmodule

