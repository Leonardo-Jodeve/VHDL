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


module mux8to1
#(parameter WIDTH = 8)
(    input [WIDTH-1:0] a0,
     input [WIDTH-1:0] a1,
     input [WIDTH-1:0] a2,
     input [WIDTH-1:0] a3,
     input [WIDTH-1:0] a4,
     input [WIDTH-1:0] a5,
     input [WIDTH-1:0] a6,
     input [WIDTH-1:0] a7,
     input [2:0] s,
     output reg [WIDTH-1:0] q
    );
    
    always @(*)
    begin
      case(s)
        3'b000:q = a0;
        3'b001:q = a1;
        3'b010:q = a2;
        3'b011:q = a3;
        3'b100:q = a4;
        3'b101:q = a5;
        3'b110:q = a6;
        3'b111:q = a7;
        default q=3'bzzz;
      endcase
    end
endmodule
