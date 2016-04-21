`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:02:13 11/03/2015 
// Design Name: 
// Module Name:    Registro_Tercer_Estado 
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
module Registro_Administrador_de_Alertas(
    input clock,
    input OE,
    input D0,D1,D2,D3,
    output Q0,Q1,Q2,Q3
    );
reg Qp0,Qp1,Qp2,Qp3;
always @(posedge clock)
begin
if (OE)
	begin
		Qp0=D0;
		Qp1=D1;
		Qp2=D2;
		Qp3=D3;
	end
else
	begin
		Qp0=1'b1;
		Qp1=1'b1;
		Qp2=1'b1;
		Qp3=1'b1;
	end
end
assign Q0=Qp0;
assign Q1=Qp1;
assign Q2=Qp2;
assign Q3=Qp3;

endmodule
