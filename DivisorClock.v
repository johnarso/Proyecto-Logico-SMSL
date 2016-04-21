`timescale 1ns / 1ps

module DivisorClock(
input clock,
output clock1200, clock15);
	
	reg [25:0] contador1;
	reg [25:0] contador2;
	reg clk1200,clk15 ;
	
	initial 
	contador1=26'd0;
	initial
	contador2=26'd0;
	initial
	clk1200=1'b0;
	initial
	clk15=1'b0;
	
	always @(posedge clock) 
	begin
			if (contador1==26'd20833) 
			begin
				contador1<=26'd0;
				clk1200 <= ~clk1200;
			end
	  else
	   begin
			contador1 <=contador1+1'b1;
		end
		
		if (contador2==26'd1666667) 
			begin
				contador2<=26'd0;
				clk15 <= ~clk15;
			end
	  else
	   begin
			contador2 <=contador2+1'b1;
		end
	end
	assign clock1200=clk1200;
	assign clock15=clk15;

endmodule
