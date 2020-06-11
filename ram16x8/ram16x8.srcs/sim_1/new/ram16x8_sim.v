`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/04 16:32:39
// Design Name: 
// Module Name: ram16x8_sim
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


module ram16x8_sim(    );
        //input
    reg clk = 0;
    reg we = 0;
    reg [3:0] addr = 4'b0000;
    reg [7:0] din = 8'h00;
    
    //output
    wire [7:0] dout;
    
    //instantiate the Unit under test
    ram16x8 ut(
        .clk(clk),
        .we(we),
        .addr(addr),
        .datain(din),
        .dataout(dout)
        );
    
    initial begin
        #100  begin we = 1; addr = 4'b0011; din = 8'b10101010; end;
        #110  begin addr = 4'b0100; din = 8'b01010101; end;
        #120  begin addr = 4'b0101; din = 8'b10100101; end;
        #130  begin addr = 4'b0110; din = 8'b01011010; end;
        #140  begin we = 0;addr = 4'b0011; end;
        #160  addr = 4'b0100;
        #180  addr = 4'b0101; 
        #200  addr = 4'b0110; 
        #220  addr = 4'b0000; 
    end
    
    always  #5  clk = ~clk;        
endmodule
