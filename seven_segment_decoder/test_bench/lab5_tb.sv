`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 18:31:21
// Design Name: 
// Module Name: lab5_tb
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


module lab5_tb();
logic [3:0] a;
    logic [2:0] sel;
    logic A, B, C, D, E, F, G;
    logic [7:0] AN;
    
    lab5 uut (.a(a), .sel(sel), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G),  .AN(AN));
    
    initial begin
        a = 0;
        sel = 0;
        repeat (16) #10 a = a + 1;
        repeat (8) #10 sel = sel + 1;
        #50 $stop;
    end
    
endmodule
