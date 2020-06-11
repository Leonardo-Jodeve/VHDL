`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/04 16:25:24
// Design Name: 
// Module Name: ram16x8
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


module ram16x8(
    input clk,
    input we,
    input [3:0] addr,
    input [7:0] datain,
    output [7:0] dataout
    );
    
    ram16x2_1 U1(.clka(clk),.wea(we),.addra(addr),.dina({datain[1],datain[0]}),.douta({dataout[1],dataout[0]}));
    ram16x2_2 U2(.clka(clk),.wea(we),.addra(addr),.dina({datain[3],datain[2]}),.douta({dataout[3],dataout[2]}));
    ram16x2_3 U3(.clka(clk),.wea(we),.addra(addr),.dina({datain[5],datain[4]}),.douta({dataout[5],dataout[4]}));
    ram16x2_4 U4(.clka(clk),.wea(we),.addra(addr),.dina({datain[7],datain[6]}),.douta({dataout[7],dataout[6]}));
    
endmodule
