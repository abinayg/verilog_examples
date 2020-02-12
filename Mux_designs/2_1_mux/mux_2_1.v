module mux_2_1(in,sel,out);
input[1:0] in; input sel;	//in=2'b01
output out;

assign out=in[sel];		//1st bit is the most significant	
endmodule