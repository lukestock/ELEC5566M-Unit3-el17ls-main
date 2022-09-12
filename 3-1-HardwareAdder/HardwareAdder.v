/*
 * 4-Bit Full Adder to 7-segment Hex display
 * ----------------
 *
 * The module displays the output from a simple 4-bit Full Adder to 7-segment displays.
 *
 */

module HardwareAdder #(

	parameter INVERT_OUTPUT = 1

)(
    // Declare input and output ports
    input        cin,
    input  [3:0] a,
    input  [3:0] b,
    output [3:0] sum,
    output       cout,
	 
	 output [6:0] HEX0_seven_seg_display,
	 output [6:0] HEX1_seven_seg_display,
	 
	 output [6:0] HEX3_seven_seg_display,
	 output [6:0] HEX4_seven_seg_display,
	 output [6:0] HEX5_seven_seg_display
	 
);

// wires to instantiated sub-modules 


// Instantiate module

Adder4Bit theAdder (
   .cin (cin ),
   .a   (a   ),
   .b   (b   ),
   .sum (sum ),
   .cout(cout)
);

 HexTo7Segment  #(
		// Declare Parameters
		.INVERT_OUTPUT ( INVERT_OUTPUT )
		
) decoderHEX5 (
		// Declare input and output ports
		.hex        ( a ),
		.display    ( HEX5_seven_seg_display )
);

HexTo7Segment  #(
		// Declare Parameters
		.INVERT_OUTPUT ( INVERT_OUTPUT )
		
) decoderHEX4 (
		// Declare input and output ports
		.hex        ( b ),
		.display    ( HEX4_seven_seg_display )
);

HexTo7Segment #(
		// Declare Parameters
		.INVERT_OUTPUT ( INVERT_OUTPUT )
		
) decoderHEX3  (
		// Declare input and output ports
		.hex        ( cin ),
		.display    ( HEX3_seven_seg_display )
);

HexTo7Segment  #(
		// Declare Parameters
		.INVERT_OUTPUT ( INVERT_OUTPUT )
		
) decoderHEX0 (
		// Declare input and output ports
		.hex        ( sum ),
		.display    ( HEX0_seven_seg_display )
);

HexTo7Segment  #(
		// Declare Parameters
		.INVERT_OUTPUT ( INVERT_OUTPUT )
		
) decoderHEX1 (
		// Declare input and output ports
		.hex        ( cout ),
		.display    ( HEX1_seven_seg_display )
);


endmodule

