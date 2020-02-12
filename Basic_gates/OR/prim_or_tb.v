
	
module testbench;

reg X,Y; wire Z;

prim_or inst_1(.A(X),.B(Y),.C(Z));


initial begin
	$dumpfile("or_waveform.vcd");
	$dumpvars(0,testbench);
	 X=0;Y=0; #5
	 $display("T=%2d,X=%b,Y=%b,Z=%b",$time,X,Y,Z);
	 Y=1; #10
	 $display("T=%2d,X=%b,Y=%b,Z=%b",$time,X,Y,Z);
	 X=1;Y=0; #5
	 $display("T=%2d,X=%b,Y=%b,Z=%b",$time,X,Y,Z);
	 Y=1; #5
	 $display("T=%2d,X=%b,Y=%b,Z=%b",$time,X,Y,Z);
	 #10 $finish;

end
endmodule
