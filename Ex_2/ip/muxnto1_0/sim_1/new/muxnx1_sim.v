`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/10/22 19:18:19
// Design Name: 
// Module Name: muxnx1_sim
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

module muxnto1_sim(

    );
    // input
    reg [7:0] a0 = 8'b00000000;
    reg [7:0] a1 = 8'b00010001;
    reg [7:0] a2 = 8'b00100010;
    reg [7:0] a3 = 8'b00110011;
    reg [7:0] a4 = 8'b01000100;
    reg [7:0] a5 = 8'b01010101;
    reg [7:0] a6 = 8'b01100110;
    reg [7:0] a7 = 8'b01110111;
    
    reg [2:0] s = 3'b000;
    
    //output
    wire [7:0] q;
    
    muxnto1 #(3,8) u(.a0(a0),.a1(a1),.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),.s(s),.q(q));
    
    initial begin
    #200 s = 3'b001;
    #200 s = 3'b010;
    #200 s = 3'b011;
    #200 s = 3'b100;
    #200 s = 3'b101;
    #200 s = 3'b110;
    #200 s = 3'b111;
    end
endmodule

