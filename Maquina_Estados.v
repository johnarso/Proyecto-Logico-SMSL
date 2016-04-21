`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:53 11/05/2015 
// Design Name: 
// Module Name:    FSM 
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
module Maquina_Estados(FrecCard,Pos,CLOCK,Datos_LCD);

input FrecCard,Pos,CLOCK;
output [8:0] Datos_LCD;

wire [5:0] Out_Contador;
wire [9:0] Out_Memo_Micro;
wire [1:0] Memo_Micro_MuxC;
wire [1:0] Memo_Micro_MuxS;
wire [5:0] Memo_Micro_Cont; //Entradas estáticas para saltos
wire Out_MuxC, Out_MuxS;

supply0 Ground;

assign Memo_Micro_MuxC = Out_Memo_Micro [9:8];
assign Memo_Micro_MuxS = Out_Memo_Micro [7:6];
assign Memo_Micro_Cont = Out_Memo_Micro [5:0];

Contador_conCarga instancia_Contador(
.out(Out_Contador),  
.data(Memo_Micro_Cont), 
.load(Out_MuxS), 
.enable(Out_MuxC),  
.clk(CLOCK)
);

MUX_Cuentas instancia_MUX_Cuentas(
.Seleccion(Memo_Micro_MuxC),
.D0(Ground),
.D1(~Ground),
.D2(FrecCard),
.D3(Pos),
.Y(Out_MuxC)
);

MUX_Saltos instancia_MUX_Saltos(
.Seleccion(Memo_Micro_MuxS),
.D0(Ground),
.D1(~Ground),
.D2(FrecCard),
.D3(Pos),
.Y(Out_MuxS)
);

Memoria_LCD instancia_Memoria_LCD(
.Dir_Memoria_LCD(Out_Contador),
.Data_Memoria_LCD(Datos_LCD)
);

Memoria_Microprogramada instancia_Memoria_Micro(
.Dir_Memoria_Micro(Out_Contador),
.Data_Memoria_Micro(Out_Memo_Micro)
);

endmodule
