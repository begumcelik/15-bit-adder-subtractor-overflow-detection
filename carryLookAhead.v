`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:39:38 11/14/2019 
// Design Name: 
// Module Name:    carryLookAhead 
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
module carryLookAhead(A, B, C0, Carry , S);
	
	input [2:0] A, B;
	input C0;
	output [2:0] Carry;
	output [2:0] S;
	
	wire [2:0] P, G;
	
	assign P[0] = A[0] ^ B[0];
	assign G[0] = A[0] & B[0];
	
	assign P[1] = A[1] ^ B[1];
	assign G[1] = A[1] & B[1];
	
	assign P[2] = A[2] ^ B[2];
	assign G[2] = A[2] & B[2];
	
	assign Carry[0] = (C0 & P[0]) | G[0];
	assign Carry[1] = (C0 & P[0] & P[1]) | (G[0] & P[1]) | G[1];
	assign Carry[2] = (C0 & P[0] & P[1] & P[2]) | (G[0] & P[1] & P[2]) | (G[1] & P[2]) | G[2];
	
	assign S[0] = C0 ^ P[0];
	assign S[1] = Carry[0] ^ P[1];
	assign S[2] = Carry[1] ^ P[2];

endmodule
