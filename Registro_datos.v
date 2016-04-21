`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:20 11/05/2015 
// Design Name: 
// Module Name:    Registro_datos 
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
module Registro_datos(
    input bit_ctrl, clock, d0,d1,d2,d3,d4,d5,d6,d7,
	 output q0,q1,q2,q3,q4,q5,q6,q7
	 );
	 
	 Registro_desplazamiento instancia_registro2(
	 .s0(bit_ctrl), .s1(bit_ctrl),.clock(clock),.SR(),.SL(),.P0(d0),.P1(d1),.P2(d2),.P3(d3),.P4(d4),.P5(d5),.P6(d6),.P7(d7),
	 .Q0(q0),.Q1(q1),.Q2(q2),.Q3(q3),.Q4(q4),.Q5(q5),.Q6(q6),.Q7(q7)
    ); 	 							//so, P0 y Q0 son MSB


endmodule
