module testbench;
reg[3:0] A,B; reg sel=1; wire[3:0] S; wire C,overflow; 
integer i=0;

//instantiate the modules

AS_ckt inst_1(.A(A),.B(B),.sel(sel),.S(S),.C(C),.overflow(overflow));


initial begin
	$dumpfile("AS_waveform.vcd");
	$dumpvars(0,testbench);
	$display("\t\t\tIf carry==0, then result is in 1s' complement.! Else, original value");
end


											//try running repeat loop in the initial block and check if it works.!
always @(*) begin
	repeat(7) begin
	#2 A=4'b0111-i;		//{7,(0,1,2,3)}
	#2 B=i;

	#2 $display("A:%h B:%h sel:%b overflow:%b sum:%h carry:%b",A,B,sel,overflow,inst_1.org_sum,C);
	 i=i+1;
	end
	
	sel=1'b0;
	#5 $display("\n");
	repeat(7) begin
	#2 A=i; #2 B=i;
	#10 $display("A:%h B:%h sel:%b overflow:%b sum:%h carry:%b",A,B,sel,overflow,S,C);
	i=i-1;
	end
	#200 $finish;
end
	
endmodule

	