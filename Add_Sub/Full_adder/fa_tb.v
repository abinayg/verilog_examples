module testbench;
reg x,y,z; wire s,c;
integer i;
fa DUT(.A(x),.B(y),.C(z),.Sum(s),.Carry(c));

initial begin
$dumpfile("full_adder.vcd");
$dumpvars(0,testbench);

for(i=0;i<8;i=i+1) begin
	#5 {x,y,z}=i;
	#2 $display(" X= %b, Y=%b, Z=%b S=%b, C=%b",x,y,z,s,c);
end
#10 $finish;
 end
endmodule
 