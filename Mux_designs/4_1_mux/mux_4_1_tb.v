module mux_4_1_tb;
/*based on the value of input, the outputs can be converted 
any type of gate.(2 input size)
AND=4'b0001;
OR=4'b0111;
NAND=4'b1110;
XOR=4'b0110;
XNOR=4'b1001;
*/
reg[3:0] in=4'b0110;reg[1:0] sel;wire out; //sel=0,1,2,3
integer i;
mux_4_1 inst_1(in,sel,out);
initial begin
	$dumpfile("4_1_mux.vcd"); $dumpvars(0,mux_4_1_tb);
	for(i=0;i<4;i=i+1) #5 sel=i;
	#10 $finish;
end
endmodule