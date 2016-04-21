`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:15 11/16/2015 
// Design Name: 
// Module Name:    Monitor_Infantil 
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
module Monitor_Infantil(
    HUMO, posicion, frecuencia, temperatura, TheClock, MAXrecepcion,
	 ventilacion, iluminacion, SonidoLeve, SonidoGrave, LEDRojo, LEDVerde, LEDNaranja, dataLCD, MAXtransmision,
	 clockprueba
	 );
	 
	 /*--------Declaración de entradas y salidas--------*/
	 input HUMO, TheClock, MAXrecepcion;
	 input posicion;
	 input frecuencia;
	 input [3:0] temperatura; 
	 output ventilacion, iluminacion, SonidoLeve;
	 output SonidoGrave, LEDRojo, LEDVerde;
    output LEDNaranja;
	 output [8:0] dataLCD;
	 output MAXtransmision;
	 
	 output clockprueba;	 
	 	 
	 /*----------WIRES NECESARIOS----------*/
	 wire DecoTemp_TGrave, DecoTemp_TLeve;   //Proviene del Deco de temperatura y va al conversor paralelo-serie y al deco de alertas
	 wire Clock1200,ClockLCD;
	 wire bit_activacion, bit_total;    //bit total es el bit que activa todas las alarmas
	 wire bit_final;
	 wire bit_de_control;
	 wire dt0, dt1, dt2, dt3, dt4, dt5, dt6;
	 wire Alarma_Leve,Alarma_Grave;
	 wire VENT,ILUM;
	 
	 /*----------------INSTANCIAS----------------*/
	 //Conversor Paralelo-Serie																				//LISTO
	 Conversor_Paralelo_Serie instancia_Conv_ParaleloSerie(
    .humo(HUMO), .pos(posicion), .tempG(DecoTemp_TGrave), .tempL(DecoTemp_TLeve), .frec(frecuencia), .alL(Alarma_Leve), .alG(Alarma_Grave), .clk(Clock1200),
	 .Dserie(MAXtransmision)         //MAXtransmision es el P9
	 );
	 
	 //Decodificador de temperatura																			//LISTO
	 Decodificador_de_Temperatura instancia_DecoTemp(
    .temp(temperatura),
    .TempLeve(DecoTemp_TLeve), .TempNormal(LEDVerde), .TempGrave(DecoTemp_TGrave)
    );
	 
	 //Conversion Serie-Paralelo
	 Conversor_serie_paralelo instancia_Conv_SerieParalelo(											//LISTO
    .dato(MAXrecepcion), .clk(Clock1200), .bit_control(bit_de_control),
	 .q0(dt0),.q1(dt1),.q2(dt2),.q3(dt3),.q4(dt4),.q5(dt5),.q6(dt6),.q7(bit_final)
	 );
	 
	 //Decodificador de alertas
	 Decodificador_alertas instancia_DecoAlertas(														//LISTO
    .FrecCard(frecuencia), .TempAlta(DecoTemp_TGrave), .TempMedia(DecoTemp_TLeve), .Posicion(posicion), .Humo(HUMO), .Activacion(bit_activacion),
    .Ventilacion(VENT), .Iluminacion(ILUM), .AlarmSonGrave(Alarma_Grave), .AlarmSonLeve(Alarma_Leve)
    );
	 
	 //Administrador de alertas
	 Registro_Administrador_de_Alertas instancia_REG_Administrador(								//LISTO
    .clock(Clock1200), .OE(bit_total), .D0(VENT),.D1(ILUM),.D2(Alarma_Leve),.D3(Alarma_Grave),
    .Q0(ventilacion),.Q1(iluminacion),.Q2(SonidoLeve),.Q3(SonidoGrave)
    );
	 
	 //Registro de datos
	 Registro_datos instancia_REG_datos(																	//LISTO
    .bit_ctrl(bit_de_control), .clock(Clock1200), .d0(dt0),.d1(dt1),.d2(dt2),.d3(dt3),.d4(dt4),.d5(dt5),.d6(dt6),.d7(bit_final),
	 .q0(),.q1(bit_total),.q2(),.q3(),.q4(bit_activacion),.q5(),.q6(),.q7()
	 );
	 
	 //Control
	 Control instancia_control(																				//LISTO
	 .ub(bit_final),.CLKnexys(TheClock),
	 .bcontrol(bit_de_control), .clk1200(Clock1200), .clk15(ClockLCD)
    );
	 
	 //Máquina de estados
	 Maquina_Estados instancia_FSM(
	 .FrecCard(frecuencia),.Pos(posicion),.CLOCK(ClockLCD),
	 .Datos_LCD(dataLCD)
	 );
	  
	 /*----------Asignacion de variables----------*/
	 assign LEDRojo=DecoTemp_TGrave;
	 assign LEDNaranja=DecoTemp_TLeve;
	 assign clockprueba=ClockLCD;



endmodule
