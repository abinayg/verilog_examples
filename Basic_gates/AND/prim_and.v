module prim_and(A,B,C);
input A,B; 
output reg C;

always @(A or B) begin
	C= A&B;
end
endmodule