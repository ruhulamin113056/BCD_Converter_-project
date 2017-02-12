`timescale 1ns / 1ps

module binTObcd42(
						input [3:0] B,
						output wire [7:0] BCD_0
					  );
		
		wire [3:0] w,a;
		
		assign w = {1'b0,B[3:1]};
		
		add3_ge5 A(w,a);
		
		assign BCD_0 = {3'b0,a[3:0],B[0]};

endmodule
