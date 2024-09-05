`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:56:42 12/22/2021
// Design Name:   machine__moore
// Module Name:   D:/arsham/TERM 3/Logic Circuit/VerilogFiles/EXP7_2/test0.v
// Project Name:  EXP7_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: machine__moore
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test0;

	// Inputs
	reg [2:0] money;
	reg clock;

	// Outputs
	wire coffee;
	wire [1:0] remain;
	wire error;

	// Instantiate the Unit Under Test (UUT)
	machine__moore uut (
		.money(money),
		.coffee(coffee),
		.clock(clock),
		.remain(remain),
		.error(error)
	);

	initial begin
		// Initialize Inputs
		money = 0;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
		
		reg[3:0] counter = 4'd0;
		
		always begin
		#5
			clock = ~clock;
			#3
			counter = counter+1;
			
			if (counter == 4'd3)
				money = 3'b010;
			else if (counter == 4'd5)
				money = 3'b100;
			else if (counter == 4'd7)
				money = 3'b001;
		end
		
		
		
		
endmodule

