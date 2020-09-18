`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg [2:0] portA;
	reg [2:0] portB;
	reg [1:0] opcode;
	reg clk;
	reg rst;

	// Outputs
	wire [0:6] sseg;
	wire signo;
	//wire [3:0] an;
	

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.portA(portA), 
		.portB(portB), 
		.opcode(opcode), 
		.sseg(sseg), 
		.signo(signo), 
		.clk(clk), 
		.rst(rst)
		
	);


	initial begin
		// Initialize Inputs
		opcode = 0;
		clk = 0;
		rst = 1;

		portA=1;
		portB=2;
		portA=6;
		portB=3;

		
		// Wait 100 ns for global reset to finish
		#10;
		rst = 0;
		// Add stimulus here
		
		#5 opcode = 2'b00;//Suma
    	#5 opcode = 2'b01;//Resta
		
//		#50 opcode =3;
//		#50 opcode =4;
		
		
		#5
		$finish;
	end
   
	always #1 clk = ~clk;
      
endmodule



