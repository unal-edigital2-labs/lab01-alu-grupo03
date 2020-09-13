module BCDtoSSeg (BCD, sseg);

  input [3:0] BCD;
  output reg [6:0] sseg;



always @ ( * ) begin
  case (BCD)
    4'b0000: sseg = 7'b1000000; // "0"  
	4'b0001: sseg = 7'b1111001; // "1" 
	4'b0010: sseg = 7'b0100100; // "2" 
	4'b0011: sseg = 7'b0110000; // "3" 
	4'b0100: sseg = 7'b0011001; // "4" 
	4'b0101: sseg = 7'b0010010; // "5" 
	4'b0110: sseg = 7'b0000010; // "6" 
	4'b0111: sseg = 7'b1111000; // "7" 
	4'b1000: sseg = 7'b0000000; // "8"  
	4'b1001: sseg = 7'b0011000; // "9" 
   4'ha: sseg = 7'b0001000;  
   4'hb: sseg = 7'b0000011;
   4'hc: sseg = 7'b0100111;
   4'hd: sseg = 7'b0100001;
   4'he: sseg = 7'b0000100;
   4'hf: sseg = 7'b0001110;
    default:
    sseg = 0;
    endcase
end

endmodule