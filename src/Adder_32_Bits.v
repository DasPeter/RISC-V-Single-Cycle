/******************************************************************
* Description
*	This is a  an adder that can be parameterized in its bit-width.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/

module Adder_32_Bits
#
(
	parameter NBits=32
)
(
	input [NBits-1:0] Data0,
	input [NBits-1:0] Data1,
	
	output [NBits-1:0] Result
);

assign Result = Data1 + Data0;


endmodule