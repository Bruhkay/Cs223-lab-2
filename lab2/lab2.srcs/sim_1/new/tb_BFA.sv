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


module tb_full_adder();
logic A, B, Cin, S, Cout;

fulladder dut(
.A(A),
.B(B),
.Cin(Cin),
.S(S),
.Cout(Cout)
);

   initial begin
        A = 0; B = 0; Cin = 0; #10;
        Cin = 1; #10;
        B = 1; Cin = 0; #10;
        Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        Cin = 1; #10;
        B = 1; Cin = 0; #10;
        Cin = 1; #10;
    end
endmodule
