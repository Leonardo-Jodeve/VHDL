`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/23 15:21:47
// Design Name: 
// Module Name: addsub
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


module addsub
#(parameter WIDTH=8)            //指定数据宽度参数，缺省值是8
(
    input [(WIDTH-1):0] a,      // 缺省位数由参数WIDTH决定
    input [(WIDTH-1):0] b,
    input  sub,                // =1为减法
    output [(WIDTH-1):0] sum,
    output cf,                  // 进位标志
    output ovf,                  // 溢出标志
    output sf,                  // 符号标志
    output zf                   // 为0标志
    );
	wire [WIDTH:0] subb;
    wire [(WIDTH-1):0] subb1;
    wire cf2;    // 进位
    assign subb1 = b ^ {WIDTH{sub}};  // 对于减法是取反
    assign subb  =  subb1 + sub;      // 对于减法是加1
    assign {cf2,sum} = a + subb;
    assign sf = sum[WIDTH-1];
    assign zf = (sum == 0) ? 1 : 0 ;
    assign cf = cf2 ^ sub;
    assign ovf = (a[WIDTH-1] ^ sum[WIDTH-1]) & (subb[WIDTH-1] ^ sum[WIDTH-1]);
endmodule

