`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2024 09:50:53
// Design Name: 
// Module Name: behavioralFullAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fulladder (input logic A, B, Cin, output logic S, Cout);
	assign S = ( A ^ B ^ Cin );
	assign Cout = ( A & B ) | ( (A ^ B) & Cin );
endmodule


