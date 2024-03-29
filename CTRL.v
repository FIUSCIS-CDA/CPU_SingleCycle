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
// CREATED		"Wed Jan 03 15:48:28 2024"

module CTRL(
	eq,
	ir31_26,
	ir5_0,
	rf_wa_s,
	rf_we,
	add2_s,
	dm_we,
	lo_we,
	shamt_s,
	alu_op,
	pc_s,
	rf_wd_s
);


input wire	eq;
input wire	[31:26] ir31_26;
input wire	[5:0] ir5_0;
output wire	rf_wa_s;
output wire	rf_we;
output wire	add2_s;
output wire	dm_we;
output wire	lo_we;
output wire	shamt_s;
output wire	[6:0] alu_op;
output wire	[1:0] pc_s;
output wire	[1:0] rf_wd_s;

wire	[6:0] alu_op_ALTERA_SYNTHESIZED;
wire	[1:0] pc_s_ALTERA_SYNTHESIZED;
wire	[1:0] rf_wd_s_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_109;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_110;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_111;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_112;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_58;
wire	SYNTHESIZED_WIRE_113;
wire	SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_62;
wire	SYNTHESIZED_WIRE_64;
wire	SYNTHESIZED_WIRE_66;
wire	SYNTHESIZED_WIRE_68;
wire	SYNTHESIZED_WIRE_69;
wire	SYNTHESIZED_WIRE_70;
wire	SYNTHESIZED_WIRE_71;
wire	SYNTHESIZED_WIRE_72;
wire	SYNTHESIZED_WIRE_114;
wire	SYNTHESIZED_WIRE_115;
wire	SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_116;
wire	SYNTHESIZED_WIRE_117;
wire	SYNTHESIZED_WIRE_78;
wire	SYNTHESIZED_WIRE_79;
wire	SYNTHESIZED_WIRE_80;
wire	SYNTHESIZED_WIRE_81;
wire	SYNTHESIZED_WIRE_83;
wire	SYNTHESIZED_WIRE_118;
wire	SYNTHESIZED_WIRE_119;
wire	SYNTHESIZED_WIRE_88;
wire	SYNTHESIZED_WIRE_89;
wire	SYNTHESIZED_WIRE_94;
wire	SYNTHESIZED_WIRE_95;
wire	SYNTHESIZED_WIRE_96;
wire	SYNTHESIZED_WIRE_97;
wire	SYNTHESIZED_WIRE_98;
wire	SYNTHESIZED_WIRE_99;
wire	SYNTHESIZED_WIRE_100;
wire	SYNTHESIZED_WIRE_102;
wire	SYNTHESIZED_WIRE_104;

assign	shamt_s = SYNTHESIZED_WIRE_111;
assign	SYNTHESIZED_WIRE_109 = 0;
assign	SYNTHESIZED_WIRE_6 = 0;



assign	SYNTHESIZED_WIRE_36 = ir31_26[31] & SYNTHESIZED_WIRE_0 & ir31_26[27] & ir31_26[26];

assign	dm_we = ir31_26[29] & ir31_26[31] & SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_2 & ir31_26[27] & ir31_26[26];

assign	SYNTHESIZED_WIRE_20 =  ~ir31_26[27];

assign	SYNTHESIZED_WIRE_21 =  ~ir31_26[26];

assign	SYNTHESIZED_WIRE_113 = ~(ir31_26[31] | ir31_26[29] | ir31_26[30] | SYNTHESIZED_WIRE_109 | ir31_26[26] | ir31_26[27]);

assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_110;

assign	SYNTHESIZED_WIRE_54 = ~(ir31_26[31] | SYNTHESIZED_WIRE_6 | ir31_26[30] | ir31_26[28] | ir31_26[26] | ir31_26[27]);


assign	SYNTHESIZED_WIRE_112 = ir31_26[29] & SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_9 & ir31_26[27] & SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_1 =  ~ir31_26[30];

assign	SYNTHESIZED_WIRE_2 =  ~ir31_26[28];

assign	SYNTHESIZED_WIRE_102 = SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_110;

assign	SYNTHESIZED_WIRE_72 = ~(ir31_26[31] | ir31_26[29] | ir31_26[30] | ir31_26[27] | SYNTHESIZED_WIRE_109 | ir31_26[26]);

assign	SYNTHESIZED_WIRE_66 = ~(ir31_26[31] | ir31_26[30] | ir31_26[29] | ir31_26[27] | ir31_26[28] | ir31_26[26] | ir5_0[4] | ir5_0[5] | ir5_0[3] | ir5_0[1] | ir5_0[2] | ir5_0[0]);

assign	SYNTHESIZED_WIRE_53 = ~(ir31_26[31] | ir31_26[29] | ir31_26[30] | ir31_26[28] | SYNTHESIZED_WIRE_109 | ir31_26[26]);

assign	SYNTHESIZED_WIRE_23 = ~(ir31_26[31] | ir31_26[29] | ir31_26[30] | ir31_26[27] | SYNTHESIZED_WIRE_109 | ir31_26[26]);

assign	rf_wd_s_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_111 | SYNTHESIZED_WIRE_17;


assign	SYNTHESIZED_WIRE_7 =  ~ir31_26[31];

assign	SYNTHESIZED_WIRE_9 =  ~ir31_26[28];

assign	SYNTHESIZED_WIRE_18 = ~(ir5_0[4] | ir5_0[2] | ir5_0[0]);

assign	SYNTHESIZED_WIRE_27 =  ~ir5_0[3];

assign	SYNTHESIZED_WIRE_22 = ir5_0[5] & ir5_0[1] & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_19 & ir31_26[29] & SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_24 = SYNTHESIZED_WIRE_22 | ir31_26[28];

assign	SYNTHESIZED_WIRE_118 = SYNTHESIZED_WIRE_23 & SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_97 = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_112;

assign	SYNTHESIZED_WIRE_29 = ir5_0[1] | SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_30 = ~(ir31_26[29] | SYNTHESIZED_WIRE_109 | ir31_26[28] | ir5_0[4] | ir5_0[0] | ir5_0[2]);

assign	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_29 & SYNTHESIZED_WIRE_30 & ir5_0[5];

assign	SYNTHESIZED_WIRE_31 = ir31_26[29] ^ ir31_26[28];

assign	SYNTHESIZED_WIRE_33 = SYNTHESIZED_WIRE_31 | SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_34 = ~(ir31_26[31] | ir31_26[27] | ir31_26[26]);

assign	SYNTHESIZED_WIRE_39 = SYNTHESIZED_WIRE_33 & SYNTHESIZED_WIRE_34;

assign	SYNTHESIZED_WIRE_110 = SYNTHESIZED_WIRE_35 | SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_38 = ir31_26[31] & SYNTHESIZED_WIRE_37 & ir31_26[27] & ir31_26[26];

assign	SYNTHESIZED_WIRE_37 =  ~ir31_26[28];

assign	SYNTHESIZED_WIRE_40 = SYNTHESIZED_WIRE_38 | SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_81 = SYNTHESIZED_WIRE_40 & SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_41 =  ~ir31_26[30];

assign	SYNTHESIZED_WIRE_8 =  ~ir31_26[30];

assign	SYNTHESIZED_WIRE_10 =  ~ir31_26[26];


assign	SYNTHESIZED_WIRE_43 = ~(ir31_26[31] | ir31_26[29] | ir31_26[30] | ir31_26[28] | ir31_26[26] | ir31_26[27] | ir5_0[4] | SYNTHESIZED_WIRE_109);

assign	SYNTHESIZED_WIRE_62 = SYNTHESIZED_WIRE_43 & ir5_0[5] & SYNTHESIZED_WIRE_44;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_45 & SYNTHESIZED_WIRE_46;

assign	SYNTHESIZED_WIRE_52 = SYNTHESIZED_WIRE_47 & ir5_0[2] & SYNTHESIZED_WIRE_48 & ir5_0[0];

assign	SYNTHESIZED_WIRE_51 = ir5_0[3] & SYNTHESIZED_WIRE_49 & ir5_0[1] & SYNTHESIZED_WIRE_50;

assign	SYNTHESIZED_WIRE_47 =  ~ir5_0[3];

assign	SYNTHESIZED_WIRE_48 =  ~ir5_0[1];

assign	SYNTHESIZED_WIRE_49 =  ~ir5_0[2];

assign	SYNTHESIZED_WIRE_50 =  ~ir5_0[0];

assign	SYNTHESIZED_WIRE_44 = SYNTHESIZED_WIRE_51 | SYNTHESIZED_WIRE_52;

assign	pc_s_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_53 & ir31_26[27];

assign	SYNTHESIZED_WIRE_95 = SYNTHESIZED_WIRE_54 | SYNTHESIZED_WIRE_112;

assign	alu_op_ALTERA_SYNTHESIZED[3] = SYNTHESIZED_WIRE_56 | SYNTHESIZED_WIRE_112;

assign	SYNTHESIZED_WIRE_45 =  ~ir31_26[30];

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_58 & SYNTHESIZED_WIRE_113;

assign	SYNTHESIZED_WIRE_58 =  ~ir31_26[28];

assign	alu_op_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_60 | SYNTHESIZED_WIRE_112;

assign	alu_op_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_62 | SYNTHESIZED_WIRE_112;

assign	alu_op_ALTERA_SYNTHESIZED[4] = SYNTHESIZED_WIRE_64 | SYNTHESIZED_WIRE_112;

assign	SYNTHESIZED_WIRE_119 = ~(ir31_26[31] | ir31_26[29] | ir31_26[30] | ir31_26[28] | ir31_26[26] | ir31_26[27]);

assign	SYNTHESIZED_WIRE_96 =  ~rf_wd_s_ALTERA_SYNTHESIZED[1];

assign	alu_op_ALTERA_SYNTHESIZED[6] = SYNTHESIZED_WIRE_66 | SYNTHESIZED_WIRE_111;

assign	SYNTHESIZED_WIRE_117 = SYNTHESIZED_WIRE_68 & SYNTHESIZED_WIRE_69 & SYNTHESIZED_WIRE_70 & ir31_26[28] & SYNTHESIZED_WIRE_71 & ir31_26[26];

assign	SYNTHESIZED_WIRE_69 =  ~ir31_26[31];

assign	SYNTHESIZED_WIRE_46 =  ~ir31_26[28];

assign	SYNTHESIZED_WIRE_70 =  ~ir31_26[30];

assign	SYNTHESIZED_WIRE_68 =  ~ir31_26[29];

assign	SYNTHESIZED_WIRE_71 =  ~ir31_26[27];

assign	SYNTHESIZED_WIRE_79 = ir31_26[28] & eq & SYNTHESIZED_WIRE_72;

assign	SYNTHESIZED_WIRE_88 = ir5_0[3] & SYNTHESIZED_WIRE_114 & ir5_0[4] & SYNTHESIZED_WIRE_115 & SYNTHESIZED_WIRE_75 & SYNTHESIZED_WIRE_116;

assign	SYNTHESIZED_WIRE_114 =  ~ir5_0[5];

assign	SYNTHESIZED_WIRE_78 =  ~eq;

assign	SYNTHESIZED_WIRE_80 = SYNTHESIZED_WIRE_117 & SYNTHESIZED_WIRE_78;

assign	pc_s_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_79 | SYNTHESIZED_WIRE_80;

assign	SYNTHESIZED_WIRE_60 = SYNTHESIZED_WIRE_81 | SYNTHESIZED_WIRE_117;

assign	SYNTHESIZED_WIRE_0 =  ~ir31_26[29];

assign	SYNTHESIZED_WIRE_56 = SYNTHESIZED_WIRE_83 | SYNTHESIZED_WIRE_117;

assign	SYNTHESIZED_WIRE_64 = SYNTHESIZED_WIRE_118 | SYNTHESIZED_WIRE_117;

assign	SYNTHESIZED_WIRE_115 =  ~ir5_0[2];

assign	SYNTHESIZED_WIRE_75 =  ~ir5_0[1];

assign	SYNTHESIZED_WIRE_116 =  ~ir5_0[0];

assign	alu_op_ALTERA_SYNTHESIZED[2] = SYNTHESIZED_WIRE_119 & SYNTHESIZED_WIRE_88;

assign	SYNTHESIZED_WIRE_94 = SYNTHESIZED_WIRE_89 & SYNTHESIZED_WIRE_114 & ir5_0[4] & SYNTHESIZED_WIRE_115 & ir5_0[1] & SYNTHESIZED_WIRE_116;

assign	SYNTHESIZED_WIRE_89 =  ~ir5_0[3];

assign	rf_wd_s_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_119 & SYNTHESIZED_WIRE_94;

assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_95 & SYNTHESIZED_WIRE_96;

assign	SYNTHESIZED_WIRE_19 =  ~ir31_26[31];

assign	SYNTHESIZED_WIRE_104 = SYNTHESIZED_WIRE_97 & SYNTHESIZED_WIRE_98;

assign	SYNTHESIZED_WIRE_98 =  ~alu_op_ALTERA_SYNTHESIZED[2];

assign	SYNTHESIZED_WIRE_111 = ir31_26[29] & SYNTHESIZED_WIRE_99 & SYNTHESIZED_WIRE_100 & ir31_26[28] & ir31_26[27] & ir31_26[26];

assign	SYNTHESIZED_WIRE_99 =  ~ir31_26[31];

assign	SYNTHESIZED_WIRE_100 =  ~ir31_26[30];

assign	rf_wa_s = SYNTHESIZED_WIRE_111 | SYNTHESIZED_WIRE_102 | SYNTHESIZED_WIRE_112;

assign	rf_we = SYNTHESIZED_WIRE_104 | SYNTHESIZED_WIRE_111;

assign	add2_s = SYNTHESIZED_WIRE_113 | SYNTHESIZED_WIRE_117;


SameBit	b2v_sameBitUnit(
	.Ain(SYNTHESIZED_WIRE_118),
	.Aout(SYNTHESIZED_WIRE_83));

assign	lo_we = alu_op_ALTERA_SYNTHESIZED[2];
assign	alu_op = alu_op_ALTERA_SYNTHESIZED;
assign	pc_s = pc_s_ALTERA_SYNTHESIZED;
assign	rf_wd_s = rf_wd_s_ALTERA_SYNTHESIZED;
assign	alu_op_ALTERA_SYNTHESIZED[5] = 0;

endmodule
