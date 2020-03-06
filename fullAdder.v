`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:19:58 11/13/2019 
// Design Name: 
// Module Name:    fullAdder 
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
module fullAdder(A, B, Cin, S, Carry);
	 
	 input A, B, Cin;
	 output S,Carry;
	 
	 assign Carry = (A & B) | (A & Cin) | (B & Cin);
	 assign S = A ^ B ^ Cin;

endmodule
