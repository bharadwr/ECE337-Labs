module adder_nbit
#(
parameter BIT_WIDTH = 4
)
(
	input wire [(BIT_WIDTH - 1):0] a,
	input wire [(BIT_WIDTH - 1):0] b,
	input wire carry_in,
	output wire [(BIT_WIDTH - 1):0] sum,
	output wire overflow
);
wire [(BIT_WIDTH):0] carry_flags;
genvar i;
assign carry_flags[0] = carry_in;

generate
	for (i = 0; i <= (BIT_WIDTH - 1); i= i +1)
	begin
		adder_1bit IX (.a(a[i]), .b(b[i]), .carry_in(carry_flags[i]), .sum(sum[i]), .carry_out(carry_flags[i+1]));
	end
endgenerate

assign overflow = carry_flags[(BIT_WIDTH)];

endmodule
