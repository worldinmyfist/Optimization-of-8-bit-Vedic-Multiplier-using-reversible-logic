`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:13 11/10/2019
// Design Name:   Vedic_8B
// Module Name:   /home/aryan/ISE_DS/Vedic_8B/Vedic_8B_test.v
// Project Name:  Vedic_8B
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Vedic_8B
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Vedic_8B_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [15:0] c;

	// Instantiate the Unit Under Test (UUT)
	Vedic_8B uut (
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 255;
		b = 255;

		// Wait 100 ns for global reset to finish
		#100;
		a = 153;
		b = 47;
		#100;
		a = 31;
		b = 63;
        
		// Add stimulus here

	end
      
endmodule

