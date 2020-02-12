module testbench;
reg x,y; wire s,c;
integer i;
ha DUT(.A(x),.B(y),.S(s),.C(c));

initial begin
$dumpfile("half_adder.vcd");
$dumpvars(0,testbench);

for(i=0;i<4;i=i+1) begin
	#5 {x,y}=i;
	#2 $display(" X= %b, Y=%b, S=%b, C=%b",x,y,s,c);
end
#10 $finish;
 end
endmodule
 