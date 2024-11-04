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


module fulladder (
    input logic [15:0] sw,    // Switches for inputs (A, B, Cin)
    output logic [15:0] LED   // LEDs for outputs (S, Cout)
);
    logic A, B, Bin;         // Inputs to full adder
    logic D, Bout;           // Outputs from full adder

    
    // Map switches to inputs
    assign A = sw[15];
    assign B=sw[14];
    assign Bin=sw[13];

    logic s1, c1, c2;
    xor(s1, A , B);
    xor(D, s1, Bin); //gives us D
    and(c1, ~A, B);
    and(c2, ~s1, Bin);
    or(Bout, c1, c2); //gives us Bout
    

    // Map outputs to LEDs
    assign LED[15] = D;
    assign LED[14] = Bout;
endmodule
