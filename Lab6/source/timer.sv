module timer ( 
	input wire clk, input wire n_rst, input wire rising_edge_found, input wire falling_edge_found, input wire stop_found, input wire start_found, output reg byte_received, output reg ack_prep, output reg check_ack, output reg ack_done );
logic count_enable, rollover_flag, clear;
logic [3:0]count_out;
flex_counter #(4) FLEX_COUNTER_DUT
( .clk(clk), .n_rst(n_rst), .clear(clear), .count_enable (rising_edge_found), .rollover_val (4'd9), .count_out(count_out), .rollover_flag(rollover_flag) );
typedef enum logic [2:0] 
{
	idle_state, count8_state, byte_received_state, falling_edge_state1, rising_edge_state, falling_edge_state2, clear_state
} StateType;
StateType CurrentState, NextState;
always_ff @ (posedge clk, negedge n_rst) begin
	if(!n_rst)
		CurrentState <=  idle_state;
	else 
		CurrentState <= NextState;
	end
always_comb begin
	NextState = CurrentState;
	case(CurrentState) 
		idle_state: begin
			if(start_found)
				NextState = clear_state;
			else
				NextState =  idle_state;
			end
		falling_edge_state1: begin
			if(rising_edge_found) begin
				NextState = rising_edge_state;
			end
			else begin
				NextState = falling_edge_state1;
			end
		end
		rising_edge_state: begin
			if(falling_edge_found) begin
				NextState = falling_edge_state2;
			end
			else begin
				NextState = rising_edge_state;
			end
		end
		falling_edge_state2:  begin
			NextState = count8_state;
		end
		clear_state: begin
			NextState = count8_state;
		end
		count8_state: begin
			if(count_out == 8) begin
				NextState = byte_received_state;
			end
			else begin
				NextState = count8_state;
			end
		end
		byte_received_state: begin
			if(falling_edge_found == 1) begin
				NextState = falling_edge_state1;
			end
			else begin
				NextState = byte_received_state;
			end
		end
	endcase
	if(stop_found) begin
		NextState =  idle_state;
	end
end
assign byte_received = (CurrentState == byte_received_state);
assign ack_done = (CurrentState == falling_edge_state2);
assign ack_prep = (CurrentState == falling_edge_state1);
assign check_ack = (CurrentState == rising_edge_state);
assign clear = (CurrentState == clear_state);
endmodule
