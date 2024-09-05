`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:19 12/21/2021 
// Design Name: 
// Module Name:    moore 
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
module machine__moore(money,coffee,clock,remain,error);
input wire [2:0]money;
input wire clock;
output reg coffee=0;
output reg [1:0]remain=0;
output reg error=0;
parameter s0=3'b000,s50=3'b001,s100=3'b010,s150=3'b011,s200=3'b100,s250=3'b101,s300=3'b110,s350=4'b0111,s400=4'b1000,s450=4'b1001,s500=4'b1010,out_of_range=4'b1111;
reg [3:0]nextState = s0;
reg [3:0]currentState = s0;

always@(posedge clock) begin
currentState <= nextState;
end

always @(currentState,money)
begin
	if (currentState != out_of_range)
		error = 0;
	case(currentState[3:0])
		s0:
			begin
			case(money[2:0])
			3'b000:
			begin
			nextState[3:0]=s0;
			end
			3'b001:
			begin
			nextState[3:0]=s50;
			end
			3'b010:
			begin
			nextState[3:0]=s100;
			end
			3'b100:
			begin
			nextState[3:0]=s200;
			end
			endcase
			end
		s50:
			begin
			case(money[2:0])
			3'b000:
			begin
			nextState[3:0]=s50;
			end
			3'b001:
			begin
			nextState[3:0]=s100;
			end
			3'b010:
			begin
			nextState[3:0]=s150;
			end
			3'b100:
			begin
			nextState[3:0]=s250;
			end
			endcase
			end
		s100:
			begin
			case(money[2:0])
			3'b000:
			begin
			nextState[3:0]=s100;
			end
			3'b001:
			begin
			nextState[3:0]=s150;
			end
			3'b010:
			begin
			nextState[3:0]=s200;
			end
			3'b100:
			begin
			nextState[3:0]=s300;
			end
			endcase
			end
		s150:
			begin
			case(money[2:0])
			3'b000:
			begin
			nextState[3:0]=s150;
			end
			3'b001:
			begin
			nextState[3:0]=s200;
			end
			3'b010:
			begin
			nextState[3:0]=s250;
			end
			3'b100:
			begin
			nextState[3:0]=s0;
			end
			endcase
			end
		s200:
			begin
			case(money[2:0])
			3'b000:
			begin
			nextState[3:0]=s200;
			end
			3'b001:
			begin
			nextState[3:0]=s250;
			end
			3'b010:
			begin
			nextState[3:0]=s300;
			end
			3'b100:
			begin
			nextState[3:0]=s400;
			end
			endcase
			end
		s250:
			begin
			case(money[2:0])
			3'b000:
			begin
			nextState[3:0]=s250;
			end
			3'b001:
			begin
			nextState[3:0]=s300;
			end
			3'b010:
			begin
			nextState[3:0]=s350;
			end
			3'b100:
			begin
			nextState[3:0]=s450;
			end
			endcase
			end
		s300:
			begin
			case(money[2:0])
			3'b000:
			begin
			nextState[3:0]=s300;
			end
			3'b001:
			begin
			nextState[3:0]=s350;
			end
			3'b010:
			begin
			nextState[3:0]=s400;
			end
			3'b100:
			begin
			nextState[3:0]=s500;
			end
			endcase
			end
			
			s350:
			begin
				nextState = s0;
			end

			s400:
			begin
				nextState = s0;
			end
			
			s450:
			begin
				nextState = s0;
			end

			s500:
			begin
				nextState = s0;
			end
				
		endcase
end


always @(currentState)
	begin
		case(currentState)
			s0:
				begin
					coffee=0;
					remain=2'b00;
				end
			s50:
				begin
					coffee=0;
					remain=2'b00;
				end
			s100:
				begin
					coffee=0;
					remain=2'b00;
				end
			s150:
				begin
					coffee=0;
					remain=2'b00;
				end
			s200:
				begin
					coffee=0;
					remain=2'b00;
				end
			s250:
				begin
					coffee=0;
					remain=2'b00;
				end
			s300:
				begin
					coffee=0;
					remain=2'b00;
				end					
				s350:
				begin
					coffee = 1;
					remain = 2'b00;
				end

				s400:
				begin
					coffee = 1;
					remain = 2'b01;
				end
				
				s450:
				begin
					coffee = 1;
					remain = 2'b10;
				end

				s500:
				begin
					coffee = 1;
					remain = 2'b11;
				end
								
	endcase
end

endmodule