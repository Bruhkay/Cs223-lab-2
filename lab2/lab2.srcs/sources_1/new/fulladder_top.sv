`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2024 10:21:08
// Design Name: 
// Module Name: fulladder_top
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


module fulladder_top (
    input logic [15:0] sw,    // Switches for inputs (A, B, Cin)
    output logic [15:0] LED   // LEDs for outputs (S, Cout)
);
    logic A, B, Cin;         // Inputs to full adder
    logic S, Cout;           // Outputs from full adder

    // Map switches to inputs
    assign A = sw[15];
    assign B = sw[14];
    assign Cin = sw[13];

    // Instantiate fulladder
    fulladder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    // Map outputs to LEDs
    assign LED[15] = S;
    assign LED[14] = Cout;
endmodule
