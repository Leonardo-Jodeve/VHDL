`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/10/21 22:05:34
// Design Name: 
// Module Name: andgate32_sim
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

module andgate32_sim(  );
    // input 
    reg [31:0] a=32'h00000000;
    reg [31:0] b=32'h00000000;
    reg [31:0] c=32'hffffffff;
    reg [31:0] d=32'hffffffff;
    reg [31:0] e=32'hffffffff;
    reg [31:0] f=32'hffffffff;
    reg [31:0] g=32'hffffffff;
    reg [31:0] h=32'hffffffff;
    //outbut
    wire [31:0] q;
    andgate #(8,32) u(.a(a),.b(b),.c(c),.d(d),
                    .e(e),.f(f),.g(g),.h(h),.q(q));    // 实例化与门的时候，设定宽度为32
    initial begin
    #100  a=32'hffffffff;
    #100  begin a=32'h00000000;b=32'hffffffff;end
    #100  a = 32'h007fa509;
    #100  a=32'hffffffff;
  end
endmodule

