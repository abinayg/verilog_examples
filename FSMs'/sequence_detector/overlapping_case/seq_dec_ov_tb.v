module seq_dec_ov_tb;
reg clk,x,reset;
wire z;

seq_dec_ov inst_1(clk,x,z,reset);
initial begin
	clk=1'b0;
	$dumpfile("seq_dec_ov_waveform.vcd"); $dumpvars(0,seq_dec_ov_tb);
end
always #5 clk=~clk;

initial begin
	#12 x=1; #10 x=0; #10 x=1; #10 x=1; 		//1011
	#10 x=0; #10 x=1; #10 x=0; #10 x=0;			//0100
	#10 x=1; #10 x=1; #10 x=0;					//110
	$display("Check the vcd file for verification");
	#20 $finish;
end
endmodule