`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:04 11/12/2015 
// Design Name: 
// Module Name:    Conversor_Paralelo-Serie 
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
module Conversor_Paralelo_Serie(
    input humo, pos, tempG, tempL, frec, alL, alG, clk,
	 output Dserie
	 );
	 
	 wire [3:0] Selec;
	 
	 Contador4bits inst_cont(
    .clock(clk),
    .cont(Selec)
    );
	 reg [15:0] datos;	 

	 always @(posedge clk)
	 begin
	 datos[9]=alG;
	 datos[8]=alL;
	 datos[7]=frec;
	 datos[6]=tempL;
	 datos[5]=tempG;
	 datos[4]=pos;
	 datos[3]=humo;
	 
	 datos[15]=1'b1;
	 datos[14]=1'b1;
	 datos[13]=1'b1;
	 datos[12]=1'b1;
	 datos[11]=1'b1;
	 datos[10]=1'b0;
	 datos[2]=1'b0;
	 datos[1]=1'b1;
	 datos[0]=1'b1;
	 end
	 
	 MUX16 instancia_mux(.Seleccion(Selec),.Dn(datos),.Y(Dserie));


endmodule
