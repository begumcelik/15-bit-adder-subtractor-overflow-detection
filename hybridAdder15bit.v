`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:29 11/14/2019 
// Design Name: 
// Module Name:    hybridAdder15bit 
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
/*module carryLookAhead(A, B, C0, Carry , S);
	
	input [2:0] A, B;
	input C0;
	output [2:0] Carry;
	output [2:0] S;*/
//////////////////////////////////////////////////////////////////////////////////
module hybridAdder15bit(A, B, C0, S, V);
	 input [14:0] A;
	 input [14:0] B;
	 input C0;
	 output [14:0] S;
	 output V;
	 
	 wire [14:0] C;
	 wire [14:0] B1;
	 
	 assign B1[14] = B[14] ^ C0;
	 assign B1[13] = B[13] ^ C0;
	 assign B1[12] = B[12] ^ C0;
	 assign B1[11] = B[11] ^ C0;
	 assign B1[10] = B[10] ^ C0;
	 assign B1[9] = B[9] ^ C0;
	 assign B1[8] = B[8] ^ C0;
	 assign B1[7] = B[7] ^ C0;
	 assign B1[6] = B[6] ^ C0;
	 assign B1[5] = B[5] ^ C0;
	 assign B1[4] = B[4] ^ C0;
	 assign B1[3] = B[3] ^ C0;
	 assign B1[2] = B[2] ^ C0;
	 assign B1[1] = B[1] ^ C0;
	 assign B1[0] = B[0] ^ C0;
	 
	 carryLookAhead CLA0 (.A(A[2:0]), .B(B1[2:0]), .C0(C0), .Carry(C[2:0]), .S(S[2:0]));
	 carryLookAhead CLA1 (.A(A[5:3]), .B(B1[5:3]), .C0(C[2]), .Carry(C[5:3]), .S(S[5:3]));
    carryLookAhead CLA2 (.A(A[8:6]), .B(B1[8:6]), .C0(C[5]), .Carry(C[8:6]), .S(S[8:6]));
    carryLookAhead CLA3 (.A(A[11:9]), .B(B1[11:9]), .C0(C[8]), .Carry(C[11:9]), .S(S[11:9]));
	 carryLookAhead CLA4 (.A(A[14:12]), .B(B1[14:12]), .C0(C[11]), .Carry(C[14:12]), .S(S[14:12]));
	 
	 assign V = C[13] ^ C[14];

endmodule
