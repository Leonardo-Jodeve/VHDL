`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/01/26 16:52:14
// Design Name: 
// Module Name: rshifter8
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


module rshifter8(
    input [7:0] d,
    input [2:0] s,
    input sar,         // 0--�߼�����  1--��������
    output [7:0] q
    );
    
    wire sign;
    wire tq00,tq10,tq20,tq30,tq40,tq50,tq60,tq70;
    wire tq01,tq11,tq21,tq31,tq41,tq51,tq61,tq71;
    assign sign = d[7] & sar;
    
    mux2 u00(d[0],d[1],s[0],tq00);
    mux2 u10(d[1],d[2],s[0],tq10);
    mux2 u20(d[2],d[3],s[0],tq20);
    mux2 u30(d[3],d[4],s[0],tq30);
    mux2 u40(d[4],d[5],s[0],tq40);
    mux2 u50(d[5],d[6],s[0],tq50);
    mux2 u60(d[6],d[7],s[0],tq60);
    mux2 u70(d[7],sign,s[0],tq70);
    
    mux2 u01(tq00,tq20,s[1],tq01);
    mux2 u11(tq10,tq30,s[1],tq11);
    mux2 u21(tq20,tq40,s[1],tq21);
    mux2 u31(tq30,tq50,s[1],tq31);
    mux2 u41(tq40,tq60,s[1],tq41);
    mux2 u51(tq50,tq70,s[1],tq51);
    mux2 u61(tq60,sign,s[1],tq61);
    mux2 u71(tq70,sign,s[1],tq71);
    
    mux2 u02(tq01,tq41,s[2],q[0]);
    mux2 u12(tq11,tq51,s[2],q[1]);
    mux2 u22(tq21,tq61,s[2],q[2]);
    mux2 u32(tq31,tq71,s[2],q[3]);
    mux2 u42(tq41,sign,s[2],q[4]);
    mux2 u52(tq51,sign,s[2],q[5]);
    mux2 u62(tq61,sign,s[2],q[6]);
    mux2 u72(tq71,sign,s[2],q[7]);

endmodule
