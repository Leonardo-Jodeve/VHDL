`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/03 11:22:02
// Design Name: 
// Module Name: alu8_verilog_sim
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


module alu8_verilog_sim();
    reg [7:0] a = 8'h16;
    reg [7:0] b = 8'h12;
    reg [3:0] op = 4'b0000;
    
    wire [7:0] res;
    wire cf;
    wire ovf;
    wire sf;
    wire zf;
    
    alu8_verilog U (.a(a),.b(b),.op(op),.res(res),.cf(cf),.ovf(ovf),.sf(sf),.zf(zf));
    initial begin
    #200 op = 4'b0001;
    #200 begin a=8'h7f; b=8'h2;op=4'b0000; end
    #200 begin a=8'hff; b=8'h2;op=4'b0000; end
    #200 begin a=8'h16; b=8'h17;op=4'b0001; end
    #200 begin a=8'hf0; b=8'h0f;op=4'b0100; end
    #200 begin a=8'hf0; b=8'h0f;op=4'b0101; end
    #200 begin a=8'hf0; b=8'h0f;op=4'b0110; end
    #200 begin a=8'hff; b=8'hff;op=4'b0111; end
    #200 begin a=8'hff; b=8'h03;op=4'b1000; end
    #200 begin a=8'hff; b=8'h03;op=4'b1001; end
    #200 begin a=8'hff; b=8'h03;op=4'b1010; end
    end
endmodule
