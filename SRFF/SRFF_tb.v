`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 14:11:02
// Design Name: 
// Module Name: SRFF_tb
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


module SRFF_tb();
reg s,r,reset,clk;
wire q,qbar;
SRFF dut (s,r,reset,clk,q,qbar);

initial begin
  clk=1'b0;
  #100
  $finish;
end 
always
begin
#10
clk=~clk;
end
initial begin
  reset = 1'b0; #25;
  reset = 1'b1; #15;
  reset = 1'b0; #30;
  reset = 1'b1; #15;
  end
initial begin
  s = 1'b0; r = 1'b0;
   #20
  s = 1'b0; r = 1'b1; 
  #20; 
  s = 1'b0; r = 1'b0; 
  #20; 
  s = 1'b1; r = 1'b0; 
  #20; 
  s = 1'b0; r = 1'b0;
   #20; 
  s = 1'b1; r = 1'b1;
   #20; 
  s = 1'b0; r = 1'b0; 
end

endmodule

