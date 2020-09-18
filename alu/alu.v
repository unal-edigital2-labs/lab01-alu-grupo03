
`timescale 1ns / 1ps


module alu(
    input [2:0] portA,
    input [2:0] portB,
    input [1:0] opcode,
    output [0:6] sseg,
    output signo,
    input clk,
    input rst
 );

// Declaración de salidas de cada bloque 
wire [3:0] sal_suma;
wire [3:0] sal_resta;
wire [5:0] sal_mult;


// Declaración de las entradas init de cada bloque 
reg [3:0] init; 
wire init_suma;
wire init_resta;
wire init_mult;

// 

assign init_suma= init[0];
assign init_resta=init[1];
assign init_mult=init[2];
assign init_div=init[3];

reg [5:0]int_bcd;
wire [3:0] operacion;
wire rt;
reg rs;

always @(*) begin
	case(opcode) 
		2'b00: init<=1;
		2'b01: init<=2;
		2'b10: init<=4;

	default:
		init <= 0;
	endcase
	
end

always @(*) begin

	case(opcode) 
		2'b00: 
		begin
		int_bcd <= sal_suma;
		rs <=0;
		end
		2'b01:
		begin
		int_bcd <=sal_resta;
		rs<=rt;
		end
		2'b10: 
		begin
		int_bcd <=sal_mult;
	     rs <=0;
	     end
	default:
		int_bcd <= 0;
	endcase
	
end


//Instanciación de los operaciones

sum4b sum(. init(init_suma),.xi({1'b0,portA}), .yi({1'b0,portB}),.sal(sal_suma));
restador res(. init(init_resta),.xi({1'b0,portA}), .yi({1'b0,portB}),.sal(sal_resta),.sresta(rt));
//multiplicador mul( .MR(portA), .MD(portB), .init(init_mult),.clk(clk), .pp(sal_mult));
BCDtoSSeg bcd( int_bcd,sseg,rs,signo);


endmodule
