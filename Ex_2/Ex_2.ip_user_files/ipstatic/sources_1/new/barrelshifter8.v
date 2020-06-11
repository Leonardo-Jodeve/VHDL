`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/10/17 09:52:47
// Design Name: 
// Module Name: barrelshifter8
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


module barrelshifter8(
    input [7:0] d,
    input [2:0] s,              //  ÒÆ¶¯ÎªÊı
    input [1:0] t,              //  1X--×óÒÆ  00--Âß¼­ÓÒÒÆ  01--ËãÊõÓÒÒÆ
    output [7:0] q
    );
    wire [7:0] rq,lq;
    
    rshifter8 u1(d,s,t[0],rq);   //  ÓÒÒÆ
    lshifter8 u2(d,s,lq);        // ×óÒÆ
    
    assign q = (t[1] ==1) ? lq : rq;
endmodule
