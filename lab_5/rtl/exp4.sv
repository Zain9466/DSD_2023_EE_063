`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2025 10:39:23
// Design Name: 
// Module Name: exp4
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


module exp4(
input logic [1:0]a,
input logic [1:0]b,
output logic R,
output logic G,
output logic B

    );
    assign R=(~b[1] & ~b[0])|(a[1] & a[0])|(a[0] & ~b[1] & b[0])|(a[1] & ~b[1] & b[0])|(a[1] & b[1] & ~b[0]);
    assign G=(~a[1] & b[1])|(~a[1] & ~b[1] & b[0])|(~a[1] & ~a[0] & ~b[1])|(a[1] & b[1] & b[0])|(a[1] & ~a[0] & b[1]);
    assign B=(a[1] & ~b[1])|(~a[1] & b[1])|(a[0] & ~b[1] & ~b[0])|(a[0] & b[1] & ~b[0])|(a[1] & ~a[0] & b[0])|(~a[0] & ~b[1] & b[0]); 
 
endmodule
