`timescale 1ns / 1ps

// Example 10b: x7seg

module x7seg (
					input wire clk,       // clk = clk
					input wire clr, // btn = clr
					input wire [7:0] x,
					output wire [6:0] a_to_g,// seg = a_to_g
					output wire [3:0] an  // an = an
				 );

	wire nq0;
	wire nq1;
	wire [3:0] digit;
	wire [1:0] q;

	assign nq1 = ~(q[1]);
	assign nq0 = ~(q[0]);
	assign an[0] = q[0] | q[1];
	assign an[1] = nq0 | q[1];
	assign an[2] = q[0] | nq1;
	assign an[3] = nq0 | nq1;

	hex7seg U1 ( .a_to_g(a_to_g),.x(digit));
	
	mux44 U2 ( .s({q[1:0]}),.x(x),.z(digit));
	
	counter #( .N(2)) U3( .clk(clk),.clr(clr),.q(q[1:0]));

endmodule
