module mux_4_1(in,sel,out);
input[3:0] in;input[1:0] sel; output out;

wire A,B;

mux_2_1 inst_1({in[3],in[2]},sel[0],A);
mux_2_1 inst_2({in[1],in[0]},sel[0],B);
mux_2_1 inst_3({A,B},sel[1],out);

endmodule