`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:42 10/27/2015 
// Design Name: 
// Module Name:    Decodificador_de_Temperatura 
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
module Decodificador_de_Temperatura(
    input [3:0] temp,
    output TempLeve,
    output TempNormal,
    output TempGrave
    );
assign TempNormal=(~(temp[1]|temp[2]))&temp[3];
assign TempLeve=temp[1]&((~temp[3]&temp[2]&temp[0])|(temp[3]&~(temp[2]|temp[0])));
assign TempGrave=~(temp[3]|temp[2])|(temp[2]&~(temp[1]&temp[0]))|(temp[3]&temp[1]&temp[0]);

endmodule
