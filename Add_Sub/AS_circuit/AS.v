module AS_ckt(A,B,sel,S,C,overflow);
input[3:0] A,B; input sel; output[3:0] S; output C,overflow;
wire[2:0] cp;
reg[3:0] dummy_b;



always @(*) begin			//2_1_mux
dummy_b=B;
if(sel) dummy_b=~dummy_b;
end

fa inst_1(.A(A[0]),.B(dummy_b[0]),.C(1'b0),.Sum(S[0]),.Carry(cp[0]));
fa inst_2(.A(A[1]),.B(dummy_b[1]),.C(cp[0]),.Sum(S[1]),.Carry(cp[1]));
fa inst_3(.A(A[2]),.B(dummy_b[2]),.C(cp[1]),.Sum(S[2]),.Carry(cp[2]));
fa inst_4(.A(A[3]),.B(dummy_b[3]),.C(cp[2]),.Sum(S[3]),.Carry(C));

assign overflow=!(cp[2] ^ C);


				// carry_propogate bits are stored here.
reg[3:0] org_sum;
always @(*) begin
org_sum=S;
if (C)  org_sum=org_sum+4'b0001;
else org_sum=~org_sum;
end
endmodule
	







