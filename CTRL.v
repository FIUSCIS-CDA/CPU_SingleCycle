// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"
// CREATED		"Tue Feb  2 07:31:57 2021"

module CTRL(
	eq,
	ir31_26,
	ir5_0,
	rf_we,
	add2_s,
	rf_wd_s,
	dm_we,
	rf_wa_s,
	alu_op,
	pc_s
);


input wire	eq;
input wire	[31:26] ir31_26;
input wire	[5:0] ir5_0;
output wire	rf_we;
output wire	add2_s;
output wire	rf_wd_s;
output wire	dm_we;
output wire	rf_wa_s;
output wire	[4:0] alu_op;
output wire	[1:0] pc_s;

wire	[4:0] alu_op_ALTERA_SYNTHESIZED;
wire	[1:0] pc_s_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_48;

assign	add2_s = SYNTHESIZED_WIRE_48;
assign	SYNTHESIZED_WIRE_49 = 0;
assign	SYNTHESIZED_WIRE_6 = 0;



assign	SYNTHESIZED_WIRE_28 = ir31_26[31] & SYNTHESIZED_WIRE_0 & ir31_26[27] & ir31_26[26];

assign	dm_we = ir31_26[29] & ir31_26[31] & SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_2 & ir31_26[27] & ir31_26[26];

assign	SYNTHESIZED_WIRE_14 =  ~ir31_26[27];

assign	SYNTHESIZED_WIRE_15 =  ~ir31_26[26];

assign	SYNTHESIZED_WIRE_48 = ~(ir31_26[31] | ir31_26[29] | ir31_26[30] | SYNTHESIZED_WIRE_49 | ir31_26[26] | ir31_26[27]);

assign	rf_we = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_50;

assign	rf_wd_s = ~(ir31_26[31] | SYNTHESIZED_WIRE_6 | ir31_26[30] | ir31_26[28] | ir31_26[26] | ir31_26[27]);


assign	SYNTHESIZED_WIRE_1 =  ~ir31_26[30];

assign	SYNTHESIZED_WIRE_2 =  ~ir31_26[28];

assign	rf_wa_s = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_50;

assign	SYNTHESIZED_WIRE_46 = ~(ir31_26[31] | ir31_26[29] | ir31_26[30] | ir31_26[27] | SYNTHESIZED_WIRE_49 | ir31_26[26]);

assign	SYNTHESIZED_WIRE_45 = ~(ir31_26[31] | ir31_26[29] | ir31_26[30] | ir31_26[28] | SYNTHESIZED_WIRE_49 | ir31_26[26]);

assign	SYNTHESIZED_WIRE_17 = ~(ir31_26[31] | ir31_26[29] | ir31_26[30] | ir31_26[27] | SYNTHESIZED_WIRE_49 | ir31_26[26]);


assign	SYNTHESIZED_WIRE_12 = ~(ir5_0[4] | ir5_0[2] | ir5_0[0]);

assign	SYNTHESIZED_WIRE_19 =  ~ir5_0[3];

assign	SYNTHESIZED_WIRE_16 = ir5_0[5] & ir5_0[1] & SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_27 = SYNTHESIZED_WIRE_13 & ir31_26[29] & SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_16 | ir31_26[28];

assign	alu_op_ALTERA_SYNTHESIZED[3] = SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_21 = ir5_0[1] | SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_22 = ~(ir31_26[29] | SYNTHESIZED_WIRE_49 | ir31_26[28] | ir5_0[4] | ir5_0[0] | ir5_0[2]);

assign	SYNTHESIZED_WIRE_24 = SYNTHESIZED_WIRE_21 & SYNTHESIZED_WIRE_22 & ir5_0[5];

assign	SYNTHESIZED_WIRE_23 = ir31_26[29] ^ ir31_26[28];

assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_23 | SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_26 = ~(ir31_26[31] | ir31_26[27] | ir31_26[26]);

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_25 & SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_50 = SYNTHESIZED_WIRE_27 | SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_30 = ir31_26[31] & SYNTHESIZED_WIRE_29 & ir31_26[27] & ir31_26[26];

assign	SYNTHESIZED_WIRE_29 =  ~ir31_26[28];

assign	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_30 | SYNTHESIZED_WIRE_31;

assign	alu_op_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_33 =  ~ir31_26[30];


assign	SYNTHESIZED_WIRE_35 = ~(ir31_26[31] | ir31_26[29] | ir31_26[30] | ir31_26[28] | ir31_26[26] | ir31_26[27] | ir5_0[4] | SYNTHESIZED_WIRE_49);

assign	alu_op_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_35 & ir5_0[5] & SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_44 = SYNTHESIZED_WIRE_39 & ir5_0[2] & SYNTHESIZED_WIRE_40 & ir5_0[0];

assign	SYNTHESIZED_WIRE_43 = ir5_0[3] & SYNTHESIZED_WIRE_41 & ir5_0[1] & SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_39 =  ~ir5_0[3];

assign	SYNTHESIZED_WIRE_40 =  ~ir5_0[1];

assign	SYNTHESIZED_WIRE_41 =  ~ir5_0[2];

assign	SYNTHESIZED_WIRE_42 =  ~ir5_0[0];

assign	SYNTHESIZED_WIRE_36 = SYNTHESIZED_WIRE_43 | SYNTHESIZED_WIRE_44;

assign	pc_s_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_45 & ir31_26[27];

assign	pc_s_ALTERA_SYNTHESIZED[1] = ir31_26[28] & eq & SYNTHESIZED_WIRE_46;

assign	SYNTHESIZED_WIRE_37 =  ~ir31_26[30];

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_47 & SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_47 =  ~ir31_26[28];

assign	SYNTHESIZED_WIRE_38 =  ~ir31_26[28];

assign	SYNTHESIZED_WIRE_0 =  ~ir31_26[29];

assign	SYNTHESIZED_WIRE_13 =  ~ir31_26[31];


SameBit	b2v_sameBitUnit(
	.Ain(alu_op_ALTERA_SYNTHESIZED[3]),
	.Aout(alu_op_ALTERA_SYNTHESIZED[2]));

assign	alu_op = alu_op_ALTERA_SYNTHESIZED;
assign	pc_s = pc_s_ALTERA_SYNTHESIZED;
assign	alu_op_ALTERA_SYNTHESIZED[4] = 0;

endmodule
