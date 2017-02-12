`timescale 1ns / 1ps


module bin2bcd_tb;

	// Inputs
	reg [13:0] B;

	// Outputs
	wire [3:0] BCD_0;
	wire [3:0] BCD_1;
	wire [3:0] BCD_2;
	wire [3:0] BCD_3;

	// Instantiate the Unit Under Test (UUT)
	bin2bcd uut (
		.B(B), 
		.BCD_0(BCD_0), 
		.BCD_1(BCD_1), 
		.BCD_2(BCD_2), 
		.BCD_3(BCD_3)
	);

	initial begin
		// Initialize Inputs
		#10;
		B = 777;
		// Wait 100 ns for global reset to finish
		#10; $stop;
        
		// Add stimulus here

	end
      
endmodule

