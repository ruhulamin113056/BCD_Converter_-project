`timescale 1ns / 1ps


module BCD_tb;

	// Inputs
	reg [3:0] B;

	// Outputs
	wire [3:0] BCD_0;
	wire [3:0] BCD_1;

	// Instantiate the Unit Under Test (UUT)
	binTObcd42 uut (
		.B(B), 
		.BCD_0(BCD_0), 
		.BCD_1(BCD_1)
	);

	initial begin
		// Initialize Inputs
		B = 4'b1011;
		#10;
		
		B = 4'b0011;
		#10;
		
		B = 4'b1110;
		#10; $stop;
        
		// Add stimulus here

	end
      
endmodule

