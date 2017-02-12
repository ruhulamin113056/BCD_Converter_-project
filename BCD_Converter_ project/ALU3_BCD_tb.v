`timescale 1ns / 1ps


module ALU3_BCD_tb;

	// Inputs
	reg [2:0] left;
	reg [2:0] right;
	reg [1:0] mode;

	// Outputs
	wire [7:0] data;

	// Instantiate the Unit Under Test (UUT)
	ALU3_BCD uut (
		.left(left), 
		.right(right), 
		.mode(mode), 
		.data(data)
	);

	initial begin
		// Initialize Inputs
		left = 7;
		right = 5;
		mode = 0;
		#10;
		
		mode = 1;
		#10;
		
		mode = 2;
		#10;
		
		mode = 3;
		#10;
        $stop;
		// Add stimulus here

	end
      
endmodule

