module fa(A,B,C,Sum,Carry);
input A,B,C;
wire x,y,z;
output Sum,Carry;


ha inst_1(.A(A),.B(B),.S(x),.C(y));
ha inst_2(.A(C),.B(x),.S(Sum),.C(z));
assign Carry= y|z;

endmodule


