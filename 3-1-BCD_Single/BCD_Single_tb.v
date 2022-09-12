 // Create a timescale to indicate units of delay 
 // Here: units = 1 ns; precision = 100 ps. 
`timescale 1 ns/100 ps

 // Declare test bench module 
 module BCD_Adder_tb;
 
 // Test bench generated signals 
reg [3:0] a;
reg  [3:0] b;
reg  cin;


 // DUT output signals
wire [3:0] sum;
wire cout;
 
 // DUT 
BCD_Adder bcdadder_dut (
 
	.a      ( a   ),
	.b      ( b   ),
	.cin    ( cin )
	
  );
  
  initial begin 
   a = 0; 
	b = 0;  
	cin = 0;  
	#10;
   a = 6; 
	b = 9;  
	cin = 0;   
	#10;
   a = 3; 
	b = 3;  
	cin = 1;   
	#10;
   a = 4; 
	b = 5;  
	cin = 0;   
	#10;
   a = 8;  
	b = 2; 
	cin = 0;   
	#10;
   a = 9;  
	b = 9;  
	cin = 1;   
	#10;
 end
      
endmodule