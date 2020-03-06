`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:32:16 11/13/2019 
// Design Name: 
// Module Name:    RCA15bit 
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

/*module fullAdder (A, B, Cin, S, Carry);*/

module RCA15bit(A, B, C0, S, V);
	 
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
	 
	 fullAdder FA0 (.A(A[0]), .B(B1[0]), .Cin(C0), .S(S[0]), .Carry(C[0]));
	 fullAdder FA1 (.A(A[1]), .B(B1[1]), .Cin(C[0]), .S(S[1]), .Carry(C[1]));
    fullAdder FA2 (.A(A[2]), .B(B1[2]), .Cin(C[1]), .S(S[2]), .Carry(C[2]));
    fullAdder FA3 (.A(A[3]), .B(B1[3]), .Cin(C[2]), .S(S[3]), .Carry(C[3]));
	 fullAdder FA4 (.A(A[4]), .B(B1[4]), .Cin(C[3]), .S(S[4]), .Carry(C[4]));
    fullAdder FA5 (.A(A[5]), .B(B1[5]), .Cin(C[4]), .S(S[5]), .Carry(C[5]));
	 fullAdder FA6 (.A(A[6]), .B(B1[6]), .Cin(C[5]), .S(S[6]), .Carry(C[6]));
	 fullAdder FA7 (.A(A[7]), .B(B1[7]), .Cin(C[6]), .S(S[7]), .Carry(C[7]));
	 fullAdder FA8 (.A(A[8]), .B(B1[8]), .Cin(C[7]), .S(S[8]), .Carry(C[8]));
	 fullAdder FA9 (.A(A[9]), .B(B1[9]), .Cin(C[8]), .S(S[9]), .Carry(C[9]));
	 fullAdder FA10 (.A(A[10]), .B(B1[10]), .Cin(C[9]), .S(S[10]), .Carry(C[10]));
	 fullAdder FA11 (.A(A[11]), .B(B1[11]), .Cin(C[10]), .S(S[11]), .Carry(C[11]));
	 fullAdder FA12 (.A(A[12]), .B(B1[12]), .Cin(C[11]), .S(S[12]), .Carry(C[12]));
	 fullAdder FA13 (.A(A[13]), .B(B1[13]), .Cin(C[12]), .S(S[13]), .Carry(C[13]));
	 fullAdder FA14 (.A(A[14]), .B(B1[14]), .Cin(C[13]), .S(S[14]), .Carry(C[14]));
	 
	 assign V = C[13] ^ C[14];

endmodule
