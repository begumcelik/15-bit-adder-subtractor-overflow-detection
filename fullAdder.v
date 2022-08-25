`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Begum Celik
// 
// Create Date:    23:19:58 11/13/2019 
// Design Name: 
// Module Name:    fullAdder 
// Project Name: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module fullAdder(A, B, Cin, S, Carry);
	 
	 input A, B, Cin;
	 output S,Carry;
	 
	 assign Carry = (A & B) | (A & Cin) | (B & Cin);
	 assign S = A ^ B ^ Cin;

endmodule
