module BCDtoSSeg (BCD, sseg,rs,signo);

  input [4:0] BCD;
  input rs;
  output reg [6:0] sseg;
output reg signo;


always @ ( * ) begin
    case(rs)
    1'b1:signo=1'b1;
    default:signo=1'b0;
    endcase
  case (BCD)
    4'b0000: sseg = 7'b0000001; // "0"  
	4'b0001: sseg = 7'b1111001; // "1" 
	4'b0010: sseg = 7'b0010010; // "2" 
	4'b0011: sseg = 7'b0000110; // "3" 
	4'b0100: sseg = 7'b1001100; // "4" 
	4'b0101: sseg = 7'b0100100; // "5" 
	4'b0110: sseg = 7'b0100000; // "6" 
	4'b0111: sseg = 7'b0001111; // "7" 
	4'b1000: sseg = 7'b0000000; // "8"  
	4'b1001: sseg = 7'b0001100; // "9" 
   4'ha: sseg = 7'b0001000;  
   4'hb: sseg = 7'b1100000;
   4'hc: sseg = 7'b0110001;
   4'hd: sseg = 7'b1000010;
   4'he: sseg = 7'b0110000;
   4'hf: sseg = 7'b0111000;
    default:
    sseg = 7'b1111111;
    endcase
    end
endmodule
