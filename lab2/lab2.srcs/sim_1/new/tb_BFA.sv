`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2024 09:52:01
// Design Name: 
// Module Name: tb_BFA
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


module tb_twobitadder;
    
    logic [1:0] A, [1:0] B, Cin, [1:0] S, Cout;
    twobitadder dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout) );
    initial begin
        A[0] = 0; A[1]= 0; B[0] = 0; B[1]=0; Cin = 0; #10;
        Cin = 1; #10;
        B[1]=1; Cin = 0; #10;
        Cin = 1; #10;
        B[0] = 1; B[1]=0; Cin = 0; #10;
        Cin = 1; #10;
        B[1]=1; Cin = 0; #10;
        Cin = 1; #10;
        A[1]= 1; B[0] = 0; B[1]=0; Cin = 0; #10;
        Cin = 1; #10;
        B[1]=1; Cin = 0; #10;
        Cin = 1; #10;
        B[0] = 1; B[1]=0; Cin = 0; #10;
        Cin = 1; #10;
        B[1]=1; Cin = 0; #10;
        Cin = 1; #10;
        A[0] = 1; A[1]= 0; B[0] = 0; B[1]=0; Cin = 0; #10;
        Cin = 1; #10;
        B[1]=1; Cin = 0; #10;
        Cin = 1; #10;
        B[0] = 1; B[1]=0; Cin = 0; #10;
        Cin = 1; #10;
        B[1]=1; Cin = 0; #10;
        Cin = 1; #10;
        A[1]= 1; B[0] = 0; B[1]=0; Cin = 0; #10;
        Cin = 1; #10;
        B[1]=1; Cin = 0; #10;
        Cin = 1; #10;
        B[0] = 1; B[1]=0; Cin = 0; #10;
        Cin = 1; #10;
        B[1]=1; Cin = 0; #10;
        Cin = 1; #10;
     end
endmodule


