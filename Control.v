`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:29 11/13/2015 
// Design Name: 
// Module Name:    Control 
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
module Control(
input ub,CLKnexys,
output bcontrol, clk1200, clk15
    );
wire clk12;

DivisorClock instancia_clocks (
.clock(CLKnexys), .clock1200(clk12), .clock15(clk15)
);

FF_D instancia_FFD (
.D(ub), .clock(clk12), .Q(), .NOTQ(bcontrol)
);

assign clk1200=clk12;
 
endmodule
