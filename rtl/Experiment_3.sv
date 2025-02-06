`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 19:58:04
// Design Name: 
// Module Name: Experiment_3
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


module Experiment_3(
input logic a,
input logic b,
input logic c,
output logic x,
output logic y

    );
    assign x=!c^(a|b);
    assign y=(a|b)&(!(a&b)^(a|b));
endmodule
