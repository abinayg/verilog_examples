module shift_reg_tb;
reg data_in,clk,reset;
wire[3:0] data_out;

shift_reg inst_1(data_in,clk,reset,data_out);

initial begin
	clk=1'b0;
	$dumpfile("shift_register.vcd");$dumpvars(0,shift_reg_tb);
end
always #5 clk=~clk;

// input_signal: 10110101  

initial begin
	#2 reset=1; #2 reset=0; data_in=1;
	#10 data_in=0; #10 data_in=1; #10 data_in=1; #10 data_in=0;
	#10 data_in=1;  #10 data_in=0;
	#10 data_in=1;
	#10 $finish;
end
endmodule
