`timescale 1ms / 1us
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:14:58 11/05/2015 
// Design Name: 
// Module Name:    Divisor_Frecuencia 
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
module Contador_conCarga    (
out      ,  // Output of the counter
data     ,  // Parallel load for the counter
load     ,  // Parallel load enable
enable   ,  // Enable counting
clk        // clock input
//reset       // reset input
);
//----------Output Ports--------------
output [5:0] out;
//------------Input Ports-------------- 
input [5:0] data;
input load, enable, clk;
//------------Internal Variables--------
reg [5:0] out;
//-------------Code Starts Here-------

initial begin out = 6'b0; end

always @(posedge clk)
//if (reset) begin out <= 6'b0 ;end 

if (load) begin out <= data; end 

else if (enable) begin out <= out + 1; end
    
endmodule  