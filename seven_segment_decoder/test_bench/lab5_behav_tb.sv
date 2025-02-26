`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 18:41:57
// Design Name: 
// Module Name: lab5_behav_tb
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


module lab5_behav_tb();
 // Testbench signals
    logic [3:0] a;
    logic [2:0] sel;
    logic A, B, C, D, E, F, G, DP;
    logic [7:0] AN;
    
    // Instantiate the DUT (Device Under Test)
    lab5_behavirol uut (
        .a(a),
        .sel(sel),
        .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G), .DP(DP),
        .AN(AN)
    );
    
    // Test procedure
    initial begin
        $display("Starting Testbench...");
        
        // Apply test cases
        for (int i = 0; i < 16; i++) begin
            a = i; // Assign input `a`
            for (int j = 0; j < 8; j++) begin
                sel = j; // Assign input `sel`
                #10; // Wait 10 time units
                $display("a = %b, sel = %b, Segments = %b%b%b%b%b%b%b, AN = %b", a, sel, A, B, C, D, E, F, G, AN);
            end
        end
        
        $display("Testbench completed.");
        $stop;
    end

endmodule
