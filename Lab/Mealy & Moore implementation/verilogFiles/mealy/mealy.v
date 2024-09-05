`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:52 12/20/2021 
// Design Name: 
// Module Name:    mealy 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mealy(money,coffee,clock,remain);
input wire [2:0]money;
input wire clock;
output reg coffee=0;
output reg [1:0]remain=0;
parameter s0=3'b000,s50=3'b001,s100=3'b010,s150=3'b011,s200=3'b100,s250=3'b101,s300=3'b110;

reg [3:0]nextState = s0;
reg [3:0]currentState = s0;

always @(posedge clock) begin
	currentState <= nextState;
end

always @(currentState, money)
	begin
		case(currentState[3:0])
			s0:
				begin
				case(money[2:0])
				3'b000:
				begin
				nextState[3:0]=s0;
				coffee=0;
				remain=2'b00;
				end
				3'b001:
				begin
				nextState[3:0]=s50;
				coffee=0;
				remain=2'b00;
				end
				3'b010:
				begin
				nextState[3:0]=s100;
				coffee=0;
				remain=2'b00;
				end
				3'b100:
				begin
				nextState[3:0]=s200;
				coffee=0;
				remain=2'b00;
				end
				endcase
				end
			s50:
				begin
				case(money[2:0])
				3'b000:
				begin
				nextState[3:0]=s50;
				coffee=0;
				remain=2'b00;
				end
				3'b001:
				begin
				nextState[3:0]=s100;
				coffee=0;
				remain=2'b00;
				end
				3'b010:
				begin
				nextState[3:0]=s150;
				coffee=0;
				remain=2'b00;
				end
				3'b100:
				begin
				nextState[3:0]=s250;
				coffee=0;
				remain=2'b00;
				end
				endcase
				end
			s100:
				begin
				case(money[2:0])
				3'b000:
				begin
				nextState[3:0]=s100;
				coffee=0;
			   remain=2'b00;
				end
				3'b001:
				begin
				nextState[3:0]=s150;
				coffee=0;
				remain=2'b00;
				end
				3'b010:
				begin
				nextState[3:0]=s200;
				coffee=0;
				remain=2'b00;
				end
				3'b100:
				begin
				nextState[3:0]=s300;
				coffee=0;
				remain=2'b00;
		   	end
				endcase
				end
			s150:
				begin
				case(money[2:0])
				3'b000:
				begin
				nextState[3:0]=s150;
				coffee=0;
				remain=2'b00;
				end
				3'b001:
				begin
				nextState[3:0]=s200;
				coffee=0;
				remain=2'b00;
				end
				3'b010:
				begin
				nextState[3:0]=s250;
				coffee=0;
				remain=2'b00;
				end
				3'b100:
				begin
				nextState[3:0]=s0;
				coffee=1;
				remain=2'b00;
				end
				endcase
				end
			s200:
				begin
				case(money[2:0])
				3'b000:
				begin
				nextState[3:0]=s200;
				coffee=0;
				remain=2'b00;
				end
				3'b001:
				begin
				nextState[3:0]=s250;
				coffee=0;
				remain=2'b00;
				end
				3'b010:
				begin
				nextState[3:0]=s300;
				coffee=0;
				remain=2'b00;
				end
				3'b100:
				begin
				nextState[3:0]=s0;
				coffee=1;
				remain=2'b01;
				end
				endcase
				end
			s250:
				begin
				case(money[2:0])
				3'b000:
				begin
				nextState[3:0]=s250;
				coffee=0;
				remain=2'b00;
				end
				3'b001:
				begin
				nextState[3:0]=s300;
				coffee=0;
				remain=2'b00;
				end
				3'b010:
				begin
				nextState[3:0]=s0;
				coffee=1;
				remain=2'b00;
				end
				3'b100:
				begin
				nextState[3:0]=s0;
				coffee=1;
				remain=2'b10;
				end
				endcase
				end
			s300:
				begin
				case(money[2:0])
				3'b000:
				begin
				nextState[3:0]=s300;
				coffee=0;
				remain=2'b00;
				end
				3'b001:
				begin
				nextState[3:0]=s0;
				coffee=1;
				remain=2'b00;
				end
				3'b010:
				begin
				nextState[3:0]=s0;
				coffee=1;
				remain=2'b01;
				end
				3'b100:
				begin
				nextState[3:0]=s0;
				coffee=1;
				remain=2'b11;
				end
				endcase
				end
				endcase

	end
endmodule
