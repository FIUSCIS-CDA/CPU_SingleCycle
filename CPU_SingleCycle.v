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
// CREATED		"Tue May 17 14:44:56 2022"

module CPU_SingleCycle(
	clk,
	reset,
	Overflow,
	OPCODE,
	PC
);


input wire	clk;
input wire	reset;
output wire	Overflow;
output wire	[31:26] OPCODE;
output wire	[31:0] PC;

wire	[31:0] add1;
wire	[31:0] add2;
wire	add2_s;
wire	[31:0] add_sum;
wire	[4:0] alu_op;
wire	[31:0] dm_rd;
wire	[31:0] dm_wd;
wire	dm_we;
wire	eq;
wire	[31:0] ir;
wire	[31:0] ir15_0_se;
wire	[17:0] offset_times_4;
wire	[31:0] offset_times_4_se;
wire	[31:0] pc_beq;
wire	[31:0] pc_inc4;
wire	[31:0] pc_j;
wire	[31:0] pc_new;
wire	[31:0] pc_out;
wire	[1:0] pc_s;
wire	[4:0] rf_wa;
wire	rf_wa_s;
wire	[31:0] rf_wd;
wire	rf_wd_s;
wire	rf_we;





MUX2_32	b2v_add2_mux(
	.S(add2_s),
	.A(ir15_0_se),
	.B(dm_wd),
	.Y(add2));


CTRL	b2v_ctrlUnit(
	.eq(eq),
	.ir31_26(ir[31:26]),
	.ir5_0(ir[5:0]),
	.rf_wa_s(rf_wa_s),
	.rf_we(rf_we),
	.add2_s(add2_s),
	.rf_wd_s(rf_wd_s),
	.dm_we(dm_we),
	.alu_op(alu_op),
	.pc_s(pc_s));


DM_synch	b2v_DM(
	.clk(clk),
	.we(dm_we),
	.a(add_sum),
	.wd(dm_wd),
	.rd(dm_rd));


IM	b2v_im(
	.a(pc_out),
	.d(ir));


INC4_32	b2v_inc4(
	.A(pc_out),
	.S(pc_inc4));


ALU_32	b2v_inst(
	.A(add1),
	.alu_op(alu_op),
	.B(add2),
	.Overflow(Overflow),
	.Zero(eq),
	.Result(add_sum));


Adder_32	b2v_myAdder(
	.A(pc_inc4),
	.B(offset_times_4_se),
	.S(pc_beq));


MUX3_32	b2v_pcMUX(
	.A(pc_inc4),
	.B(pc_j),
	.C(pc_beq),
	.S(pc_s),
	.Y(pc_new));


Flopr_32	b2v_PCREG(
	.reset(reset),
	.clk(clk),
	.D(pc_new),
	.Q(pc_out));


RF	b2v_rf(
	.reset(reset),
	.clk(clk),
	.we(rf_we),
	.r1a(ir[25:21]),
	.r2a(ir[20:16]),
	.wa(rf_wa),
	.wd(rf_wd),
	.r1d(add1),
	.r2d(dm_wd));


MUX2_5	b2v_rf_wa_mux(
	.S(rf_wa_s),
	.A(ir[15:11]),
	.B(ir[20:16]),
	.Y(rf_wa));


MUX2_32	b2v_rf_wd_mux(
	.S(rf_wd_s),
	.A(dm_rd),
	.B(add_sum),
	.Y(rf_wd));


SE16_32	b2v_se(
	.A(ir[15:0]),
	.Y(ir15_0_se));


SE18_32	b2v_signExt(
	.A(offset_times_4),
	.Y(offset_times_4_se));


SL2_16	b2v_spliceUnit(
	.A(ir[15:0]),
	.Y(offset_times_4));


SPLICE_PCJ	b2v_spliceUnitforPC(
	.ir25_0(ir[25:0]),
	.pc31_28(pc_out[31:28]),
	.Y(pc_j));

assign	OPCODE[31:26] = ir[31:26];
assign	PC = pc_out;

endmodule
