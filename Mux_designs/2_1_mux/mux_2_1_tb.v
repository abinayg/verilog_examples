module mux_2_1_tb;
reg [1:0] in=2'b10; reg sel,correct=1; wire out;
mux_2_1 inst_1(in,sel,out);

initial begin
	$dumpfile("2_1_mux.vcd"); $dumpvars(0,mux_2_1_tb);
	#5 sel=1;
	if(out!=1) correct=0; 
	#5 sel=0;
	if(out!=0) correct=0;
	#5 $finish;
end
endmodule
