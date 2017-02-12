`timescale 1ns / 1ps

// Example 7d: quad 4-to-1 MUX

module mux44 (
					//input wire [15:0] x ,
					input wire [15:0] x ,
					input wire [1:0] s ,
					output reg [3:0] z
				 );

	always @(*)
		case(s)
			0: z = x[3:0];
			1: z = x[7:4];
			2: z = x[11:8];
			3: z = x[15:12];
			default: z = x[3:0];
		endcase

endmodule
