`timescale 1ns / 1ps

// Example 9b: Hex to 7-segment decoder; a-g active low

module hex7seg (
						input wire [3:0] x ,
						output reg [6:0] a_to_g
					 );

	
	always @(*)
		case(x)
			0: a_to_g = 7'b0000001;
			1: a_to_g = 7'b1001111;
			2: a_to_g = 7'b0010010;
			3: a_to_g = 7'b0000110;
			4: a_to_g = 7'b1001100;
			5: a_to_g = 7'b0100100;
			6: a_to_g = 7'b0100000;
			7: a_to_g = 7'b0001111;
			8: a_to_g = 7'b0000000;
			9: a_to_g = 7'b0000100;
			default: a_to_g = 7'bz; // 0
		endcase

endmodule
