`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 17:35:07
// Design Name: 
// Module Name: lab5
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


module lab5(
    input logic [3:0] a,
    input logic [2:0] sel,
    output logic A, B, C, D, E, F, G,
    output logic [7:0] AN

  );
    
    assign A = (~a[3] & ~a[2] & ~a[1] & a[0]) | (~a[3] & a[2] & ~a[1] & ~a[0]) | 
               (a[3] & a[2] & ~a[1] & a[0]) | (a[3] & ~a[2] & a[1] & a[0]);
    assign B = (a[2] & a[1] & ~a[0]) | (a[3] & a[1] & a[0]) |
               (a[3] & a[2] & ~a[0]) | (~a[3] & a[2] & ~a[1] & a[0]);
    assign C = (~a[3] & ~a[2] & a[1] & ~a[0]) | (a[3] & a[2] & a[1]) |
               (a[3] & a[2] & ~a[0]);
    assign D = (~a[3] & a[2] & ~a[1] & ~a[0]) | (~a[3] & ~a[2] & ~a[1] & a[0]) |
               (a[2] & a[1] & a[0]) | (a[3] & ~a[2] & a[1] & ~a[0]);
    assign E = (~a[3] & a[0]) | (~a[2] & ~a[1] & a[0]) |
               (~a[3] & a[2] & ~a[1]);
    assign F = (~a[3] & ~a[2] & a[0]) | (~a[3] & ~a[2] & a[1]) |
               (~a[3] & a[1] & a[0]) | (a[3] & a[2] & ~a[1] & a[0]);
    assign G = (~a[3] & ~a[2] & ~a[1]) | (a[3] & a[2] & ~a[1] & ~a[0]) |
               (~a[3] & a[2] & a[1] & a[0]);
    
    assign AN[0] = (sel[2] | sel[1] | sel[0]);
    assign AN[1] = (sel[2] | sel[1] | ~sel[0]);
    assign AN[2] = (sel[2] | ~sel[1] | sel[0]);
    assign AN[3] = (sel[2] | ~sel[1] | ~sel[0]);
    assign AN[4] = (~sel[2] | sel[1] | sel[0]);
    assign AN[5] = (~sel[2] | sel[1] | ~sel[0]);   
    assign AN[6] = (~sel[2] | ~sel[1] | sel[0]);
    assign AN[7] = (~sel[2] | ~sel[1] | ~sel[0]);

endmodule
