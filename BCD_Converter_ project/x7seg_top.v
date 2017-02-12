`timescale 1ns / 1ps

// Example 10c: x7seg_top

module x7seg_top (
						input wire clk,
						input wire [3:3] btn,
						input wire [7:0] x,
						output wire [3:0] an,
						output wire [6:0] seg
					  );
					  
	wire clk190;
	
	clkdiv U1
				( 
				.clk190(clk190),
				.clr(btn[3]),
				.clk(clk)
				);
	
	x7seg U3
				( 
				.a_to_g(seg),
				.an(an),
				.clk(clk190),
				.clr(btn[3]),
				.x(x)
				);

endmodule
