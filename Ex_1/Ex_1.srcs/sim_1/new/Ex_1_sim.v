`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/25 10:49:35
// Design Name: 
// Module Name: Ex_1_sim
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


module Ex_1_sim();
    reg [23:0] sw=24'h000000;
    wire [23:0] led;
    Ex_1 uut(
    .sw(sw),
    .led(led)
    );
    always #10 sw=sw+1;
endmodule
