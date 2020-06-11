`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/29 14:26:49
// Design Name: 
// Module Name: alu8_verilog
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


module alu8_verilog(
    input [7:0] a,
    input [7:0] b,
    input [3:0] op,
    output [7:0] res,
    output cf,
    output of,
    output zf,
    output sf
    );
    wire [7:0] res1,res2,res3,res4,res5,res6;
        wire cf1,of1,sf1,zf1;
        wire [2:0] sel;
        //sel[2:0]
        //000   addsub
        //001   shift
        //010   --
        //011   --
        //100   and
        //101   or
        //110   not
        //111   xor
        assign sel[0] = op[3] | (op[2] & op[0]);
        assign sel[1] = op[1] & op[2] & (! op[3]);
        assign sel[2] = (! op[3]) & op[2];
        assign cf = (sel[2:0] == 3'b000) ? cf1 : 1'b0;
        assign ovf = (sel[2:0] == 3'b000) ? of1 : 1'b0;
        assign zf = (res == 8'h00) ? 1'b1 : 1'b0;
        assign sf = res[7];
    
        addsub_0 U1(.a(a),.b(b),.sub(op[0]),.sum(res1),.cf(cf1),.ovf(of1),.zf(zf1),.sf(sf1));
        barrelshifter8_0 U2 (.d(a),.s(b[2:0]),.t(op[1:0]),.q(res2));
        andgate_0 U3 (.a(a),.b(b),.q(res3));
        orgate_0  U4 (.a(a),.b(b),.q(res4));
        notgate_0 U5 (.a(a),.c(res5));
        xorgate_0 U6 (.a(a),.b(b),.q(res6));
        muxnto1_0 U7 (.a0(res1),.a1(res2),.a2(8'h01),.a3(8'h01),.a4(res3),
                      .a5(res4),.a6(res5),.a7(res6),.s(sel),.q(res));
endmodule
