`timescale 1ns / 1ps


module restador(init, xi, yi,sal,sresta);

  input init;
  input [3 :0] xi;
  input [3 :0] yi;
  output [3:0] sal;
  output sresta;

  wire [3:0] st;
  wire rs;

assign st=(xi>yi)? xi-yi:yi-xi;
assign rs=(xi>=yi)? 1'b0:1'b1;
assign sresta=rs;
assign sal= st;
 
endmodule