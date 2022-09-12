/*
 * Bcd digit addition
 * ----------------
 *
 * The module performs "add 6 if grater or equal to 10" using a pair of 4-bit adders
 *
 *
 *
 */
 
 module BCD_Adder (
	input [3:0] a,
	input [3:0] b,
	input cin,

	output reg [3:0] sum, // max output bcd number is 18 which is 10010 in binary
	output reg cout
 );
 
reg [3:0] sum_temp;


always @ (a,b,cin) begin 
	
	sum_temp = a+b+cin;
	
	if (sum_temp > 9) begin 
		sum_temp = sum_temp + 6; // add 6 if sum_temp is greater than 9
		sum = {1'b1,sum_temp};
		cout = 1'b1;
	end 
	else begin 
		sum = sum_temp;
		cout = 1'b0;
	end
	
end

 endmodule
 
 