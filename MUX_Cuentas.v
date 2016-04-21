`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:32 11/03/2015 
// Design Name: 
// Module Name:    MUX16 
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
module MUX_Cuentas(Seleccion,D0,D1,D2,D3,Y);

input [1:0] Seleccion;
input  D0,D1,D2,D3;
output Y;

reg Y;

always @(Seleccion or D0 or D1 or D2 or D3)
  case(Seleccion)
   2'b00: Y = D0;
   2'b01: Y = D1;
   2'b10: Y = D2;
	2'b11: Y = D3;
   default: Y = 0;
  endcase

endmodule
