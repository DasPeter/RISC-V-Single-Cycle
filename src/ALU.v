/******************************************************************
* Description
*	This is an 32-bit arithetic logic unit that can execute the next set of operations:
*		add

* This ALU is written by using behavioral description.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/

module ALU 
(
	input [3:0] ALU_Operation_i,
	input signed [31:0] A_i,
	input signed [31:0] B_i,
	output reg Zero_o,
	output reg [31:0] ALU_Result_o
);

localparam ADD  = 4'b0000;
localparam LUI  = 4'b0001;
localparam ORI  = 4'b0010;
localparam SLLI = 4'b0011;
localparam SRLI = 4'b0100;
localparam SUB  = 4'b0101;


   
   always @ (A_i or B_i or ALU_Operation_i)
     begin
		case (ALU_Operation_i)
		ADD:  ALU_Result_o = A_i + B_i;
		LUI:  ALU_Result_o = B_i;
		ORI:  ALU_Result_o = A_i | B_i;
		SLLI: ALU_Result_o = A_i << B_i[4:0];
		SRLI: ALU_Result_o = A_i >> B_i[4:0];
		SUB:	ALU_Result_o = A_i - B_i;
		
		
		
		
		default:
			ALU_Result_o = 0;
		endcase // case(control)
		
		Zero_o = (ALU_Result_o == 0) ? 1'b1 : 1'b0;
		
     end // always @ (A or B or control)
endmodule // ALU