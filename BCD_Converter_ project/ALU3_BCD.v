`timescale 1ns / 1ps

module ALU3_BCD(
    input [2:0] left,right,
    input [1:0] mode,
	 input wire clk, 
	 input wire [3:3] btn,
    output wire [6:0] seg,
    output wire [3:0] an,
    output wire dp
    );

	reg [3:0] alu_out = 4'bx;
	wire [7:0] data ;
	
	assign dp = 1;
	// for ALU 3 bit operation
	
	always @(left,right,mode)
		begin
			case(mode)
				0: alu_out = left + right;
				1: alu_out = left - right;
				2: if(left >= right)
				      alu_out = left ;
					else
					   alu_out = right;
				3: alu_out = left & right;
				default: alu_out = 4'bX;
			endcase
		end
		
	// for BCD converter
	
	binTObcd42 U1 (.B(alu_out),.BCD_0(data));
	
	// for 7 segment display
	//module x7seg_top (input wire clk,input wire [3:3] btn,output wire [3:0] an,output wire [6:0] seg);
	
	x7seg_top U2 (.clk(clk),.btn(btn[3]),.an(an),.seg(seg),.x(data));
	
endmodule
