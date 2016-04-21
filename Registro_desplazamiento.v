`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:47:17 11/03/2015 
// Design Name: 
// Module Name:    Registro_desplazamiento 
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
module Registro_desplazamiento(
	 input s0, s1,clock,SR,SL,P0,P1,P2,P3,P4,P5,P6,P7,
	 output Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7
    ); 	 							//so, P0 y Q0 son MSB
	 reg QQ0,QQ1,QQ2,QQ3,QQ4,QQ5,QQ6,QQ7;
	 reg Qp0,Qp1,Qp2,Qp3,Qp4,Qp5,Qp6,Qp7;
	 
	 initial 
	 begin
	 QQ0=1'b1;
	 QQ1=1'b1;
	 QQ2=1'b1;
	 QQ3=1'b1;
	 QQ4=1'b1;
	 QQ5=1'b1;
	 QQ6=1'b1;
	 QQ7=1'b1;
	 end

	 always @(posedge clock)
	 begin 
			if (s0&s1)    //LOAD
			begin	
				Qp0=P0;
				Qp1=P1;
				Qp2=P2;
				Qp3=P3;
				Qp4=P4;
				Qp5=P5;
				Qp6=P6;
				Qp7=P7;
			end
			else if (s0&(~s1))   //Shift Right
			begin
				Qp0=SR;
				Qp1=QQ0;
				Qp2=QQ1;
				Qp3=QQ2;
				Qp4=QQ3;
				Qp5=QQ4;
				Qp6=QQ5;
				Qp7=QQ6;
			end
			else if ((~s0)&s1)   //Shift Left
			begin	
				Qp0=QQ1;
				Qp1=QQ2;
				Qp2=QQ3;
				Qp3=QQ4;
				Qp4=QQ5;
				Qp5=QQ6;
				Qp6=QQ7;
				Qp7=SL;
			end
			else if ((~s0)&(~s1))  //Hold
			begin	
				Qp0=QQ0;
				Qp1=QQ1;
				Qp2=QQ2;
				Qp3=QQ3;
				Qp4=QQ4;
				Qp5=QQ5;
				Qp6=QQ6;
				Qp7=QQ7;
			end
	QQ0=Qp0;
	QQ1=Qp1;
	QQ2=Qp2;
	QQ3=Qp3;
	QQ4=Qp4;
	QQ5=Qp5;
	QQ6=Qp6;
	QQ7=Qp7;
	end
		
	assign Q0=QQ0;
	assign Q1=QQ1;
	assign Q2=QQ2;
	assign Q3=QQ3;
	assign Q4=QQ4;
	assign Q5=QQ5;
	assign Q6=QQ6;
	assign Q7=QQ7;
	
endmodule
