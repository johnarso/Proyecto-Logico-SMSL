`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:53 11/06/2015 
// Design Name: 
// Module Name:    Contador4bits 
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
module Contador4bits(
    input clock,
    output [3:0] cont
    );
reg [0:3] cuenta;
initial 
cuenta=4'b0;
always @(posedge clock)
begin
cuenta=cuenta+1'b1;
end
assign cont=cuenta;
endmodule
