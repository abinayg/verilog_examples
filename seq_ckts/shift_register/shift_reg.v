// shift_reg using flipflops.

module shift_reg(data_in,clk,reset,data_out);
input data_in,clk,reset;
output[3:0] data_out;


d_ff inst_1(.data(data_in),.clk(clk),.reset(reset),.out(data_out[0]));
d_ff inst_2(.data(data_out[0]),.clk(clk),.reset(reset),.out(data_out[1]));
d_ff inst_3(.data(data_out[1]),.clk(clk),.reset(reset),.out(data_out[2]));
d_ff inst_4(.data(data_out[2]),.clk(clk),.reset(reset),.out(data_out[3]));

endmodule