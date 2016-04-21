`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:44:49 11/03/2015 
// Design Name: 
// Module Name:    FF_D 
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
module FF_D(
    input D, clock,
    output Q, NOTQ
    );
	 

reg DQ,Qnegado;
initial Qnegado=1'b1;
always @(posedge clock)
begin
DQ=D;
Qnegado=~D;
end
assign Q = DQ;
assign NOTQ =Qnegado;
endmodule
