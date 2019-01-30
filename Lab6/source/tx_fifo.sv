module tx_fifo
(
	output wire [7:0] read_data,
	input wire read_enable,
	input wire write_enable,
	output wire fifo_empty,
	input wire clk,
	input wire n_rst,
	input wire [7:0] write_data,
	output wire fifo_full
);
fifo FUBAR
(
	.r_clk(clk),
	.r_data(read_data),
	.w_data(write_data),
	.w_clk(clk),
	.n_rst(n_rst),
	.r_enable(read_enable),
	.w_enable(write_enable),
	.empty(fifo_empty),
	.full(fifo_full)
);
endmodule
