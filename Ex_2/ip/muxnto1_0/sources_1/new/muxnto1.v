`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/02/06 11:59:42
// Design Name: 
// Module Name: mux8to1
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


module muxnto1
#(parameter Sel_Width = 4,
parameter WIDTH = 8)
(    input [WIDTH-1:0] a0,
     input [WIDTH-1:0] a1,
     input [WIDTH-1:0] a2,
     input [WIDTH-1:0] a3,
     input [WIDTH-1:0] a4,
     input [WIDTH-1:0] a5,
     input [WIDTH-1:0] a6,
     input [WIDTH-1:0] a7,
     input [WIDTH-1:0] a8,
     input [WIDTH-1:0] a9,
     input [WIDTH-1:0] a10,
     input [WIDTH-1:0] a11,
     input [WIDTH-1:0] a12,
     input [WIDTH-1:0] a13,
     input [WIDTH-1:0] a14,
     input [WIDTH-1:0] a15,
     input [Sel_Width-1:0] s,
     output reg [WIDTH-1:0] q
    );
    
    always @(*)
    begin
      case(s)
        4'b0000:q = a0;
        4'b0001:q = a1;
        4'b0010:q = a2;
        4'b0011:q = a3;
        4'b0100:q = a4;
        4'b0101:q = a5;
        4'b0110:q = a6;
        4'b0111:q = a7;
        4'b1000:q = a8;
        4'b1001:q = a9;
        4'b1010:q = a10;
        4'b1011:q = a11;
        4'b1100:q = a12;
        4'b1101:q = a13;
        4'b1110:q = a14;
        4'b1111:q = a15;
        default q=4'bzzz;
      endcase
    end
endmodule
