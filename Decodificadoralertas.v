`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:12 10/27/2015 
// Design Name: 
// Module Name:    Decodificador_alertas 
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
module Decodificador_alertas(
    input FrecCard, TempAlta, TempMedia, Posicion, Humo, Activacion,
    output Ventilacion, Iluminacion,AlarmSonGrave,AlarmSonLeve
    );
	 assign Iluminacion=(FrecCard|Posicion|TempAlta);
	 assign Ventilacion=(Humo|TempMedia)&Activacion;
	 assign AlarmSonGrave=Activacion&(FrecCard|TempAlta|(Posicion&TempMedia&Humo));
	 assign AlarmSonLeve=Activacion&(~TempAlta)&(~FrecCard)&((TempMedia&~Posicion)|(Humo&~TempMedia)|(Posicion&~Humo));
	 
endmodule
