`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:25:03 11/07/2015 
// Design Name: 
// Module Name:    Memoria_LCD 
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
module Memoria_LCD(
    input [5:0] Dir_Memoria_LCD,
    output reg [8:0] Data_Memoria_LCD
    );

always @*

begin

if (Dir_Memoria_LCD == 6'b000000) begin Data_Memoria_LCD = 9'h30; end//0
if (Dir_Memoria_LCD == 6'b000001) begin Data_Memoria_LCD = 9'h30; end//1
if (Dir_Memoria_LCD == 6'b000010) begin Data_Memoria_LCD = 9'h30; end//2
if (Dir_Memoria_LCD == 6'b000011) begin Data_Memoria_LCD = 9'h38; end//3
if (Dir_Memoria_LCD == 6'b000100) begin Data_Memoria_LCD = 9'hF; end//4
if (Dir_Memoria_LCD == 6'b000101) begin Data_Memoria_LCD = 9'hE; end//5
if (Dir_Memoria_LCD == 6'b000110) begin Data_Memoria_LCD = 9'h1; end//6
if (Dir_Memoria_LCD == 6'b000111) begin Data_Memoria_LCD = 9'h3; end//7
if (Dir_Memoria_LCD == 6'b001000) begin Data_Memoria_LCD = 9'h3; end//8
if (Dir_Memoria_LCD == 6'b001001) begin Data_Memoria_LCD = 9'h146; end//9
if (Dir_Memoria_LCD == 6'b001010) begin Data_Memoria_LCD = 9'h172; end//10
if (Dir_Memoria_LCD == 6'b001011) begin Data_Memoria_LCD = 9'h165; end//11
if (Dir_Memoria_LCD == 6'b001100) begin Data_Memoria_LCD= 9'h163; end//12
if (Dir_Memoria_LCD == 6'b001101) begin Data_Memoria_LCD = 9'h13A; end//13
if (Dir_Memoria_LCD == 6'b001110) begin Data_Memoria_LCD = 9'h120; end//14
if (Dir_Memoria_LCD == 6'b001111) begin Data_Memoria_LCD = 9'h14E; end//15
if (Dir_Memoria_LCD == 6'b010000) begin Data_Memoria_LCD = 9'h16F; end//16
if (Dir_Memoria_LCD == 6'b010001) begin Data_Memoria_LCD = 9'h172; end//17
if (Dir_Memoria_LCD == 6'b010010) begin Data_Memoria_LCD = 9'h16D; end//18
if (Dir_Memoria_LCD == 6'b010011) begin Data_Memoria_LCD = 9'h161; end//19
if (Dir_Memoria_LCD == 6'b010100) begin Data_Memoria_LCD = 9'h16C; end//20
if (Dir_Memoria_LCD == 6'b010101) begin Data_Memoria_LCD = 9'h147; end//21
if (Dir_Memoria_LCD == 6'b010110) begin Data_Memoria_LCD = 9'h172; end//22
if (Dir_Memoria_LCD == 6'b010111) begin Data_Memoria_LCD = 9'h161; end//23
if (Dir_Memoria_LCD == 6'b011000) begin Data_Memoria_LCD = 9'h176; end//24
if (Dir_Memoria_LCD == 6'b011001) begin Data_Memoria_LCD = 9'h165; end//25
if (Dir_Memoria_LCD == 6'b011010) begin Data_Memoria_LCD = 9'h120; end//26
if (Dir_Memoria_LCD == 6'b011011) begin Data_Memoria_LCD = 9'hC0; end//27
if (Dir_Memoria_LCD == 6'b011100) begin Data_Memoria_LCD = 9'hC0; end//28
if (Dir_Memoria_LCD == 6'b011101) begin Data_Memoria_LCD = 9'h150; end//29
if (Dir_Memoria_LCD == 6'b011110) begin Data_Memoria_LCD = 9'h16F; end//30
if (Dir_Memoria_LCD == 6'b011111) begin Data_Memoria_LCD = 9'h173; end//31
if (Dir_Memoria_LCD == 6'b100000) begin Data_Memoria_LCD = 9'h13A; end//32
if (Dir_Memoria_LCD == 6'b100001) begin Data_Memoria_LCD = 9'h120; end//33
if (Dir_Memoria_LCD == 6'b100010) begin Data_Memoria_LCD = 9'h142; end//34
if (Dir_Memoria_LCD == 6'b100011) begin Data_Memoria_LCD = 9'h16F; end//35
if (Dir_Memoria_LCD == 6'b100100) begin Data_Memoria_LCD = 9'h163; end//36
if (Dir_Memoria_LCD == 6'b100101) begin Data_Memoria_LCD = 9'h161; end//37
if (Dir_Memoria_LCD == 6'b100110) begin Data_Memoria_LCD = 9'h120; end//38
if (Dir_Memoria_LCD == 6'b100111) begin Data_Memoria_LCD = 9'h141; end//39
if (Dir_Memoria_LCD == 6'b101000) begin Data_Memoria_LCD = 9'h172; end//40
if (Dir_Memoria_LCD == 6'b101001) begin Data_Memoria_LCD = 9'h172; end//41
if (Dir_Memoria_LCD == 6'b101010) begin Data_Memoria_LCD = 9'h169; end//42
if (Dir_Memoria_LCD == 6'b101011) begin Data_Memoria_LCD = 9'h162; end//43
if (Dir_Memoria_LCD == 6'b101100) begin Data_Memoria_LCD = 9'h161; end//44
if (Dir_Memoria_LCD == 6'b101101) begin Data_Memoria_LCD = 9'h162; end//45
if (Dir_Memoria_LCD == 6'b101110) begin Data_Memoria_LCD = 9'h161; end//46
if (Dir_Memoria_LCD == 6'b101111) begin Data_Memoria_LCD = 9'h16A; end//47
if (Dir_Memoria_LCD == 6'b110000) begin Data_Memoria_LCD = 9'h16F; end//48
if (Dir_Memoria_LCD == 6'b110001) begin Data_Memoria_LCD = 9'h120; end//49

end

endmodule
