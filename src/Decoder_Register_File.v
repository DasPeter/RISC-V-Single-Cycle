/******************************************************************
* Description
*	This a decoder used in the register file.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Decoder_Register_File
(
	input [4:0] Write_Register_i,
	output [31:0] Select_Register_o
);
reg [31:0] select_register_r;

always@(*)begin
	case(Write_Register_i)
		0:   select_register_r = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
		1:	  select_register_r = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
		2:	  select_register_r = 32'b0000_0000_0000_0000_0000_0000_0000_0100;
		3:	  select_register_r = 32'b0000_0000_0000_0000_0000_0000_0000_1000;
		4:	  select_register_r = 32'b0000_0000_0000_0000_0000_0000_0001_0000;		
		5:	  select_register_r = 32'b0000_0000_0000_0000_0000_0000_0010_0000;
		6:	  select_register_r = 32'b0000_0000_0000_0000_0000_0000_0100_0000;
		7:	  select_register_r = 32'b0000_0000_0000_0000_0000_0000_1000_0000;
		8:	  select_register_r = 32'b0000_0000_0000_0000_0000_0001_0000_0000;
		9:	  select_register_r = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
		10:  select_register_r = 32'b0000_0000_0000_0000_0000_0100_0000_0000;
		11:  select_register_r = 32'b0000_0000_0000_0000_0000_1000_0000_0000;
		12:  select_register_r = 32'b0000_0000_0000_0000_0001_0000_0000_0000;
		13:  select_register_r = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
		14:  select_register_r = 32'b0000_0000_0000_0000_0100_0000_0000_0000;
		15:  select_register_r = 32'b0000_0000_0000_0000_1000_0000_0000_0000;
		16:  select_register_r = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
		17:  select_register_r = 32'b0000_0000_0000_0010_0000_0000_0000_0000;
		18:  select_register_r = 32'b0000_0000_0000_0100_0000_0000_0000_0000;
		19:  select_register_r = 32'b0000_0000_0000_1000_0000_0000_0000_0000;
		20:  select_register_r = 32'b0000_0000_0001_0000_0000_0000_0000_0000;
		21:  select_register_r = 32'b0000_0000_0010_0000_0000_0000_0000_0000;		
		22:  select_register_r = 32'b0000_0000_0100_0000_0000_0000_0000_0000;
		23:  select_register_r = 32'b0000_0000_1000_0000_0000_0000_0000_0000;
		24:  select_register_r = 32'b0000_0001_0000_0000_0000_0000_0000_0000;
		25:  select_register_r = 32'b0000_0010_0000_0000_0000_0000_0000_0000;
		26:  select_register_r = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
		27:  select_register_r = 32'b0000_1000_0000_0000_0000_0000_0000_0000;
		28:  select_register_r = 32'b0001_0000_0000_0000_0000_0000_0000_0000;
		29:  select_register_r = 32'b0010_0000_0000_0000_0000_0000_0000_0000;
		30:  select_register_r = 32'b0100_0000_0000_0000_0000_0000_0000_0000;
		31:  select_register_r = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
	endcase
end

assign Select_Register_o = select_register_r;




endmodule