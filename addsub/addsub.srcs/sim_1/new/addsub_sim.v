`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/06 15:36:03
// Design Name: 
// Module Name: addsub_sim
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


module addsub_sim(    );

    reg [31:0] a = 32'd16;
    reg [31:0] b = 32'd12;
    reg sub = 0;
    
    wire [31:0] sum;
    wire cf;
    wire ovf;
    wire sf;
    wire zf;
    
    addsub #(32) U (a,b,sub,sum,cf,ovf,sf,zf);
    initial begin
    #200 sub = 1;
    #200 begin a = 32'h7f; b = 32'h2; sub = 0; end
    #200 begin a = 32'hff; b = 32'h2; sub = 0; end
    #200 begin a = 32'h7fffffff; b = 32'h2; sub = 0; end
    #200 begin a = 32'h16; b = 32'h17; sub = 1; end
    #200 begin a = 32'hffff; b = 32'h1; sub = 0; end
    #200 begin a = 32'hffffffff; b = 32'h1; sub = 0; end
    end
endmodule
