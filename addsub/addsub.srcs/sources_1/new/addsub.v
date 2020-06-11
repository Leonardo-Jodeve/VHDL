`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/06 15:32:22
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
#(parameter WIDTH=8)
(
    input [(WIDTH-1):0] a,
    input [(WIDTH-1):0] b,
    input  sub,
    output [(WIDTH-1):0] sum,
    output cf,
    output ovf,
    output sf,
    output zf
    );
	wire [WIDTH:0] subb;
    wire [(WIDTH-1):0] subb1;
    wire cf2;
    assign subb1 = b ^ {WIDTH{sub}};
    assign subb  =  subb1 + sub;
    assign {cf2,sum} = a + subb;
    assign sf = sum[WIDTH-1];
    assign zf = (sum == 0) ? 1 : 0 ;
    assign cf = cf2 ^ sub;
    assign ovf = (a[WIDTH-1] ^ sum[WIDTH-1]) & (subb[WIDTH-1] ^ sum[WIDTH-1]);
endmodule
