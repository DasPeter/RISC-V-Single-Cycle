/******************************************************************
* Description
*	This is  module represents the register file where the registers 
*	like $s0-$s7 are store. 
*	of MIPS processor.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Register_File
#(
	parameter N = 32
)
(
	input  clk,
	input  reset,
	input 			Reg_Write_i,
	input  [4:0] 	Write_Register_i,
	input  [4:0] 	Read_Register_1_i,
	input  [4:0] 	Read_Register_2_i,
	input  [31:0] 	Write_Data_i,
	
	output [31:0] 	Read_Data_1_o,
	output [31:0] 	Read_Data_2_o

);


wire [32 * N - 1 : 0] Intercnection_wire;
wire [31 : 0] select_register_w;


Decoder_Register_File
DECODER_REG_FILE
(
	.Write_Register_i(Write_Register_i),
	.Select_Register_o(select_register_w)
);

/****************************************************************/
/****************************************************************/
/****************************************************************/
/****************************************************************/
/****************************************************************/

Register
Register_zero
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[0] & Reg_Write_i),
	.DataInput(0),
	.DataOutput(Intercnection_wire[N-1:0])
);


	
	
	
Register
Register_ra
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[1]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[2*N-1:1*N])
);	
	

	
Register
Register_sp
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[2]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[3*N-1:2*N])
);	


Register
Register_gp
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[3]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[4*N-1:3*N])
);		
	


Register
Register_tp
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[4]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[5*N-1:4*N])
);



Register
Register_t0
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[5]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[6*N-1:5*N])
);



Register
Register_t1
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[6]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[7*N-1:6*N])
);




Register
Register_t2
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[7]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[8*N-1:7*N])
);



Register
Register_s0_fp
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[8]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[9*N-1:8*N])
);



Register
Register_s1
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[9]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[10*N-1:9*N])
);



Register
Register_a0
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[10]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[11*N-1:10*N])
);



Register
Register_a1
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[11]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[12*N-1:11*N])
);



Register
Register_a2
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[12]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[13*N-1:12*N])
);



Register
Register_a3
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[13]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[14*N-1:13*N])
);



Register
Register_a4
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[14]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[15*N-1:14*N])
);



Register
Register_a5
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[15]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[16*N-1:15*N])
);


Register
Register_a6
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[16]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[17*N-1:16*N])
);



Register
Register_a7
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[17]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[18*N-1:17*N])
);



Register
Register_s2
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[18]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[19*N-1:18*N])
);



Register
Register_s3
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[19]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[20*N-1:19*N])
);




Register
Register_s4
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[20]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[21*N-1:20*N])
);




Register
Register_s5
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[21]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[22*N-1:21*N])
);




Register
Register_s6
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[22]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[23*N-1:22*N])
);




Register
Register_s7
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[23]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[24*N-1:23*N])
);



Register
Register_s8
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[24]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[25*N-1:24*N])
);

Register
Register_s9
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[25]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[26*N-1:25*N])
);



Register
Register_s10
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[26]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[27*N-1:26*N])
);
	


Register
Register_s11
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[27]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[28*N-1:27*N])
);	



Register
Register_t3
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[28]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[29*N-1:28*N])
);


Register
Register_t4
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[29]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[30*N-1:29*N])
);




Register
Register_t5
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[30]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[31*N-1:30*N])
);



Register
Register_t6
(
	.clk(clk),
	.reset(reset),
	.enable(select_register_w[31]&Reg_Write_i),
	.DataInput(Write_Data_i),
	.DataOutput(Intercnection_wire[32*N-1:31*N])
);




MUXRegisterFile
#(
	.N(32)
)
MUXRegister1
(
	.Selector(Read_Register_1_i),

	.Data_0(Intercnection_wire[1*N-1:0*N]),
	.Data_1(Intercnection_wire[2*N-1:1*N]),
	.Data_2(Intercnection_wire[3*N-1:2*N]),
	.Data_3(Intercnection_wire[4*N-1:3*N]),
	.Data_4(Intercnection_wire[5*N-1:4*N]),
	.Data_5(Intercnection_wire[6*N-1:5*N]),
	.Data_6(Intercnection_wire[7*N-1:6*N]),
	.Data_7(Intercnection_wire[8*N-1:7*N]),
	.Data_8(Intercnection_wire[9*N-1:8*N]),
   	.Data_9(Intercnection_wire[10*N-1:9*N]),
	.Data_10(Intercnection_wire[11*N-1:10*N]),
	.Data_11(Intercnection_wire[12*N-1:11*N]),
	.Data_12(Intercnection_wire[13*N-1:12*N]),
	.Data_13(Intercnection_wire[14*N-1:13*N]),
	.Data_14(Intercnection_wire[15*N-1:14*N]),
	.Data_15(Intercnection_wire[16*N-1:15*N]),
	.Data_16(Intercnection_wire[17*N-1:16*N]),
	.Data_17(Intercnection_wire[18*N-1:17*N]),
	.Data_18(Intercnection_wire[19*N-1:18*N]),
	.Data_19(Intercnection_wire[20*N-1:19*N]),
	.Data_20(Intercnection_wire[21*N-1:20*N]),
	.Data_21(Intercnection_wire[22*N-1:21*N]),
	.Data_22(Intercnection_wire[23*N-1:22*N]),
	.Data_23(Intercnection_wire[24*N-1:23*N]),
	.Data_24(Intercnection_wire[25*N-1:24*N]),
	.Data_25(Intercnection_wire[26*N-1:25*N]),
	.Data_26(Intercnection_wire[27*N-1:26*N]),
	.Data_27(Intercnection_wire[28*N-1:27*N]),
	.Data_28(Intercnection_wire[29*N-1:28*N]),
	.Data_29(Intercnection_wire[30*N-1:29*N]),
	.Data_30(Intercnection_wire[31*N-1:30*N]),
	.Data_31(Intercnection_wire[32*N-1:31*N]),
	
	.MUX_Output(Read_Data_1_o)
);


MUXRegisterFile
#(
	.N(32)
)
MUXRegister2
(
	.Selector(Read_Register_2_i),

		.Data_0(Intercnection_wire[1*N-1:0*N]),
	.Data_1(Intercnection_wire[2*N-1:1*N]),
	.Data_2(Intercnection_wire[3*N-1:2*N]),
	.Data_3(Intercnection_wire[4*N-1:3*N]),
	.Data_4(Intercnection_wire[5*N-1:4*N]),
	.Data_5(Intercnection_wire[6*N-1:5*N]),
	.Data_6(Intercnection_wire[7*N-1:6*N]),
	.Data_7(Intercnection_wire[8*N-1:7*N]),
	.Data_8(Intercnection_wire[9*N-1:8*N]),
   .Data_9(Intercnection_wire[10*N-1:9*N]),
	.Data_10(Intercnection_wire[11*N-1:10*N]),
	.Data_11(Intercnection_wire[12*N-1:11*N]),
	.Data_12(Intercnection_wire[13*N-1:12*N]),
	.Data_13(Intercnection_wire[14*N-1:13*N]),
	.Data_14(Intercnection_wire[15*N-1:14*N]),
	.Data_15(Intercnection_wire[16*N-1:15*N]),
	.Data_16(Intercnection_wire[17*N-1:16*N]),
	.Data_17(Intercnection_wire[18*N-1:17*N]),
	.Data_18(Intercnection_wire[19*N-1:18*N]),
	.Data_19(Intercnection_wire[20*N-1:19*N]),
	.Data_20(Intercnection_wire[21*N-1:20*N]),
	.Data_21(Intercnection_wire[22*N-1:21*N]),
	.Data_22(Intercnection_wire[23*N-1:22*N]),
	.Data_23(Intercnection_wire[24*N-1:23*N]),
	.Data_24(Intercnection_wire[25*N-1:24*N]),
	.Data_25(Intercnection_wire[26*N-1:25*N]),
	.Data_26(Intercnection_wire[27*N-1:26*N]),
	.Data_27(Intercnection_wire[28*N-1:27*N]),
	.Data_28(Intercnection_wire[29*N-1:28*N]),
	.Data_29(Intercnection_wire[30*N-1:29*N]),
	.Data_30(Intercnection_wire[31*N-1:30*N]),
	.Data_31(Intercnection_wire[32*N-1:31*N]),
	
	.MUX_Output(Read_Data_2_o)
);
endmodule