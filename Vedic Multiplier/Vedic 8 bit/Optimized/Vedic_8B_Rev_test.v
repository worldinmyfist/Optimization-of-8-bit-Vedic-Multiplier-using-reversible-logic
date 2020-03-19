`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:43:51 11/25/2019
// Design Name:   Vedic_8B_Rev
// Module Name:   /home/aryan/ISE_DS/Vedic_8B_Rev/Vedic_8B_Rev_test.v
// Project Name:  Vedic_8B_Rev
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Vedic_8B_Rev
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Vedic_8B_Rev_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [15:0] y;

	// Instantiate the Unit Under Test (UUT)
	Vedic_8B_Rev uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 65;
		b = 43;

		// Wait 100 ns for global reset to finish
		#100;
      a = 23;
		b = 47;
		#100
		a = 45;
		b = 31;
		// Add stimulus here

	end
      
endmodule

