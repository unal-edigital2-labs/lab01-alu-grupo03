`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2020 18:06:54
// Design Name: 
// Module Name: restador
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


module restador(init, xi, yi,sal);

  input init;
  input [3 :0] xi;
  input [3 :0] yi;
  output [3 :0] sal;
  
  
  wire [4:0] st;
  assign sal= st[3:0];
  assign Cout = st[4];

  assign st  = 	xi-yi;

endmodule