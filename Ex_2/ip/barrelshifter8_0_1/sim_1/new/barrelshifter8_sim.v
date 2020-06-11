`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/10/17 10:02:48
// Design Name: 
// Module Name: barrelshifter8_sim
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


module barrelshifter8_sim(

    );
    // input
    reg [7:0] d = 8'h00;
    reg [2:0] s = 3'b000;
    reg [1:0] t = 2'b00;
    
    //output 
    wire [7:0] q;
    
    barrelshifter8 ut(d,s,t,q);
    initial begin
      #50 d = 8'h87;
      #50 s = 3'b100;
      #50 t = 2'b10;
      #100 t = 2'b00;
      #100 t = 2'b01;
    end;       
endmodule
