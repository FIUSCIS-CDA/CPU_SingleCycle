// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Tue May 06 10:40:58 2025"

module CTRL(
	eq,
	less,
	ir31_26,
	ir5_0,
	shamt_s,
	rf_we,
	lo_we,
	dm_we,
	add2_s,
	alu_op,
	pc_s,
	rf_wa_s,
	rf_wd_s
);


input wire	eq;
input wire	less;
input wire	[31:26] ir31_26;
input wire	[5:0] ir5_0;
output wire	shamt_s;
output wire	rf_we;
output wire	lo_we;
output wire	dm_we;
output wire	[1:0] add2_s;
output wire	[6:0] alu_op;
output wire	[1:0] pc_s;
output wire	[1:0] rf_wa_s;
output wire	[1:0] rf_wd_s;

wire	[1:0] add2_s_ALTERA_SYNTHESIZED;
wire	[6:0] alu_op_ALTERA_SYNTHESIZED;
wire	[1:0] pc_s_ALTERA_SYNTHESIZED;
wire	[1:0] rf_wa_s_ALTERA_SYNTHESIZED;
wire	[1:0] rf_wd_s_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_61;
wire	SYNTHESIZED_WIRE_62;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_63;
wire	SYNTHESIZED_WIRE_64;
wire	SYNTHESIZED_WIRE_65;
wire	SYNTHESIZED_WIRE_66;
wire	SYNTHESIZED_WIRE_67;
wire	SYNTHESIZED_WIRE_68;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_69;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_70;
wire	SYNTHESIZED_WIRE_71;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_72;
wire	SYNTHESIZED_WIRE_73;
wire	SYNTHESIZED_WIRE_74;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_56;

assign	shamt_s = SYNTHESIZED_WIRE_65;
assign	dm_we = SYNTHESIZED_WIRE_4;
assign	SYNTHESIZED_WIRE_24 = 0;




RTYPE	b2v_inst(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_69));


BGEZ	b2v_inst1(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_60));

assign	alu_op_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_60 | alu_op_ALTERA_SYNTHESIZED[3] | SYNTHESIZED_WIRE_61 | SYNTHESIZED_WIRE_62 | SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_63 | SYNTHESIZED_WIRE_64;


ADDI	b2v_inst100(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_63));


ORI	b2v_inst101(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_67));

assign	rf_wa_s_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_65 | SYNTHESIZED_WIRE_66 | SYNTHESIZED_WIRE_62 | SYNTHESIZED_WIRE_63 | SYNTHESIZED_WIRE_67 | SYNTHESIZED_WIRE_68;


LW	b2v_inst105(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_62));


MULT	b2v_inst108(
	.Funct(ir5_0),
	.Op(ir31_26),
	.Y(alu_op_ALTERA_SYNTHESIZED[5]));

assign	SYNTHESIZED_WIRE_16 =  ~alu_op_ALTERA_SYNTHESIZED[5];

assign	SYNTHESIZED_WIRE_56 = SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_64;

assign	SYNTHESIZED_WIRE_50 = SYNTHESIZED_WIRE_69 & SYNTHESIZED_WIRE_16;


BEQ	b2v_inst112(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_72));


BNE	b2v_inst113(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_73));


MFLO	b2v_inst116(
	.Funct(ir5_0),
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_70));

assign	rf_wd_s_ALTERA_SYNTHESIZED[0] = ~(SYNTHESIZED_WIRE_70 | SYNTHESIZED_WIRE_62);


SW	b2v_inst118(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_4));

assign	alu_op_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_71 | SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_66 | SYNTHESIZED_WIRE_67 | SYNTHESIZED_WIRE_60 | SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_54 = SYNTHESIZED_WIRE_72 & eq;

assign	SYNTHESIZED_WIRE_53 = SYNTHESIZED_WIRE_73 & SYNTHESIZED_WIRE_74;

assign	SYNTHESIZED_WIRE_74 =  ~eq;

assign	SYNTHESIZED_WIRE_55 = eq & SYNTHESIZED_WIRE_60;


SLL	b2v_inst127(
	.Functcode(ir5_0),
	.Opcode(ir31_26),
	.Y(SYNTHESIZED_WIRE_30));

assign	alu_op_ALTERA_SYNTHESIZED[6] = SYNTHESIZED_WIRE_65 | SYNTHESIZED_WIRE_30;


SUB	b2v_inst129(
	.Funct(ir5_0),
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_36));

assign	alu_op_ALTERA_SYNTHESIZED[3] = SYNTHESIZED_WIRE_60 | SYNTHESIZED_WIRE_73 | SYNTHESIZED_WIRE_72 | SYNTHESIZED_WIRE_66 | SYNTHESIZED_WIRE_71 | SYNTHESIZED_WIRE_36 | SYNTHESIZED_WIRE_64 | SYNTHESIZED_WIRE_61;


SLT	b2v_inst130(
	.Funct(ir5_0),
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_71));


ORR	b2v_inst134(
	.Funct(ir5_0),
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_20));



J	b2v_inst143(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_40));


BGTZ	b2v_inst15(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_61));

assign	pc_s_ALTERA_SYNTHESIZED[0] = rf_wa_s_ALTERA_SYNTHESIZED[1] | SYNTHESIZED_WIRE_75 | SYNTHESIZED_WIRE_40;

assign	add2_s_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_64 | SYNTHESIZED_WIRE_72 | SYNTHESIZED_WIRE_69 | SYNTHESIZED_WIRE_73 | SYNTHESIZED_WIRE_60 | SYNTHESIZED_WIRE_61;


JR	b2v_inst2(
	.Funct(ir5_0),
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_75));

assign	SYNTHESIZED_WIRE_52 = SYNTHESIZED_WIRE_61 & SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_74;

assign	rf_we = rf_wa_s_ALTERA_SYNTHESIZED[1] | SYNTHESIZED_WIRE_50 | rf_wa_s_ALTERA_SYNTHESIZED[0];

assign	rf_wd_s_ALTERA_SYNTHESIZED[1] = rf_wa_s_ALTERA_SYNTHESIZED[1] | SYNTHESIZED_WIRE_70;


JAL	b2v_inst23(
	.Op(ir31_26),
	.Y(rf_wa_s_ALTERA_SYNTHESIZED[1]));


assign	SYNTHESIZED_WIRE_48 =  ~less;


ADD	b2v_inst3(
	.Funct(ir5_0),
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_3));

assign	pc_s_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_52 | SYNTHESIZED_WIRE_53 | SYNTHESIZED_WIRE_54 | SYNTHESIZED_WIRE_55 | SYNTHESIZED_WIRE_56 | SYNTHESIZED_WIRE_75;


ANDI	b2v_inst5(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_68));


BLEZ	b2v_inst6(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_64));


SameBit	b2v_inst7(
	.Ain(alu_op_ALTERA_SYNTHESIZED[3]),
	.Aout(alu_op_ALTERA_SYNTHESIZED[2]));

assign	add2_s_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_68 | SYNTHESIZED_WIRE_67;

assign	SYNTHESIZED_WIRE_13 = less | eq;


LUI	b2v_inst92(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_65));


SLTI	b2v_inst99(
	.Op(ir31_26),
	.Y(SYNTHESIZED_WIRE_66));

assign	lo_we = alu_op_ALTERA_SYNTHESIZED[5];
assign	add2_s = add2_s_ALTERA_SYNTHESIZED;
assign	alu_op = alu_op_ALTERA_SYNTHESIZED;
assign	pc_s = pc_s_ALTERA_SYNTHESIZED;
assign	rf_wa_s = rf_wa_s_ALTERA_SYNTHESIZED;
assign	rf_wd_s = rf_wd_s_ALTERA_SYNTHESIZED;
assign	alu_op_ALTERA_SYNTHESIZED[4] = 0;

endmodule
