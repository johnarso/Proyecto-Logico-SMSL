`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:34:29 11/05/2015 
// Design Name: 
// Module Name:    Conversor_serie-paralelo 
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
module Conversor_serie_paralelo(
    input dato, clk, bit_control,
	 output q0,q1,q2,q3,q4,q5,q6,q7
	 );
	 wire Ucc;
	 assign Ucc=1;
	 
	 
	 Registro_desplazamiento instancia_registro(
	 .s0(Ucc), .s1(bit_control),.clock(clk),.SR(dato),.SL(),.P0(Ucc),.P1(Ucc),.P2(Ucc),.P3(Ucc),.P4(Ucc),.P5(Ucc),.P6(Ucc),.P7(Ucc),
	 .Q0(q0),.Q1(q1),.Q2(q2),.Q3(q3),.Q4(q4),.Q5(q5),.Q6(q6),.Q7(q7)
    ); 	 							//so, P0 y Q0 son MSB
	 

endmodule
