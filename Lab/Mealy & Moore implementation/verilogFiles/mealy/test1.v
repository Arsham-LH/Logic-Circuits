`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:18 12/21/2021
// Design Name:   mealy
// Module Name:   D:/arsham/TERM 3/Logic Circuit/VerilogFiles/EXP7_1/test1.v
// Project Name:  EXP7_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mealy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1;

	// Inputs
	reg [2:0] money;
	reg clock;

	// Outputs
	wire coffee;
	wire [1:0] remain;

	// Instantiate the Unit Under Test (UUT)
	mealy uut (
		.money(money), 
		.coffee(coffee), 
		.clock(clock), 
		.remain(remain)
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
	counter = counter +1;
	if (counter == 4'd3)
		money = 3'b100;
	if (counter == 4'd5)
		money = 3'b100;
	if (counter == 4'd7)
		money = 3'b010;
end

endmodule

