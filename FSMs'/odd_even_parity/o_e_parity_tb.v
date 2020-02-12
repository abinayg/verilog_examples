module o_e_parity_testbench;
reg clk,x; wire z;
reg correct=1;

o_e_parity inst_1(x,clk,z);

initial begin
clk=1'b0;
$dumpfile("o_e_parity_check.vcd"); $dumpvars(0,o_e_parity_testbench);
end

always #5 clk=~clk;

initial begin   // this way circuit can be verified.!
	#2 x=0; #10 x=1; 
	if(z!=0) correct=0;
	#10 x=1; 
	if(z!=1) correct=0;
	#10 x=1;
	if(z!=0) correct=0;
	#10 x=0; #10 x=1; 
	if(z!=1) correct=0;
	#10 x=1;
	if(z!=0) correct=0;
	#10 x=0;

	if(correct==1) $display("\t\t\tCircuit working as expected.!");
	else $display(" ERROR.! Recheck the design module file.!");

	#10 $finish;
end

endmodule


