module testbench_otherbranches();
`include "../Test/Test.v"
//Inputs
reg reset;
reg clk;

//Oututs
wire Overflow;
wire[31:26] OPCODE;
wire[5:0] FUNCTCODE;
wire[31:0] PC;

//--------------

localparam CLK_PERIOD = 200;
localparam TERMINALPC = 60;
CPU_SingleCycle myCPU(.clk(clk), .reset(reset), .Overflow(Overflow), .FUNCTCODE(FUNCTCODE), .OPCODE(OPCODE), .PC(PC));

//Test cases:
//Involves 3 tests that run in sequence.
//$t0 is set to -1, $t1 is set to 0, $t2 is set to 1.
//BGEZ instruction will take each respectively either will or won't branch.
//The test cases will check PC to track whether BGEZ branches correctly.

//program tests
initial begin
//Test 1
myCPU.b2v_im.memory[0] = 'b00100000000100000000001000000000; //addi $s0, $zero, 512  		0
//t0 = -1
myCPU.b2v_im.memory[1] = 'b00100000000010001111111111111111; //addi $t0, $zero, -1		4
myCPU.b2v_im.memory[2] = 'b00000101000000000000000000000001; //bgez $t0, branchto1		8
myCPU.b2v_im.memory[3] = 'b00001000000000000000000000000101; //j nobranch1 			12
myCPU.b2v_im.memory[4] = 'b00100010000100000000000000001010; //branchto1: addi $s0, $s0, 10 	16

//Test 2
//t1 = 0
myCPU.b2v_im.memory[5] = 'b00100000000010010000000000000000; //nobranch1: addi $t1, $zero, 0	20
myCPU.b2v_im.memory[6] = 'b00000101001000000000000000000001; //bgez $t1, branchto2		24
myCPU.b2v_im.memory[7] = 'b00001000000000000000000000001001; //j nobranch2			28
myCPU.b2v_im.memory[8] = 'b00100010000100000000000000001010; //branchto2: addi $s0, $s0, 10 	32

//Test 3
//t3 = 1
myCPU.b2v_im.memory[9] = 'b00100000000010110000000000000001; //nobranch2: addi $t3, $zero, 1	36
myCPU.b2v_im.memory[10] = 'b00000101011000000000000000000001; //bgez $t3, branchto3		40
myCPU.b2v_im.memory[11] = 'b00001000000000000000000000001101; //j nobranch3 			44
myCPU.b2v_im.memory[12] = 'b00100010000100000000000000001010; //branchto3: addi $s0, $s0, 10  	48

//Test4
//t2=5
//5&6=4
myCPU.b2v_im.memory[13] = 'b00100000000010100000000000000101; // addi $t2, $zero, 5		52
myCPU.b2v_im.memory[14] = 'b00110001010010110000000000000110; // andi $t3, $t2, 6		56
//Test 5
myCPU.b2v_im.memory[15] = 'b00100000000100000000001000000000; //addi $s0, $zero, 512  		60
//t0 = 1
myCPU.b2v_im.memory[16] = 'b00100000000010000000000000000001; //addi $t0, $zero, 1		64
myCPU.b2v_im.memory[17] = 'b00011001000000000000000000000001; //blez $t0, branchto4		68
myCPU.b2v_im.memory[18] = 'b00001000000000000000000000010100; //j nobranch4 			72
myCPU.b2v_im.memory[19] = 'b00100010000100000000000000001010; //branchto4: addi $s0, $s0, 10 	76

//Test 2
//t1 = 0
myCPU.b2v_im.memory[20] = 'b00100000000010010000000000000000; //nobranch4: addi $t1, $zero, 0	80
myCPU.b2v_im.memory[21] = 'b00011001001000000000000000000001; //blez $t1, branchto5		84
myCPU.b2v_im.memory[22] = 'b00001000000000000000000000011000; //j nobranch5			88
myCPU.b2v_im.memory[23] = 'b00100010000100000000000000001010; //branchto5: addi $s0, $s0, 10 	92

//Test 3
//t2 = -1
myCPU.b2v_im.memory[24] = 'b00100000000010111111111111111111; //nobranch5: addi $t3, $zero, -1	96
myCPU.b2v_im.memory[25] = 'b00011001011000000000000000000001; //blez $t3, branchto6		100
myCPU.b2v_im.memory[26] = 'b00001000000000000000000000011100; //j nobranch6 			104
myCPU.b2v_im.memory[27] = 'b00100010000100000000000000001010; //branchto6: addi $s0, $s0, 10  	108
reset <= 1;  # (CLK_PERIOD /2);
/////////////////////////////////////////////////////////////////////////////////////////////
reset <= 0;

end

always@(negedge clk)
	begin
	if(PC == 12) begin
		$display("Passed test 1."); //t0 is -1, should not branch
	end
	if(PC == 16) begin
		$display("Failed test 1.");
		$stop;
	end
	if(PC == 32) begin
		$display("Passed test 2."); //t1 is 0, should branch
	end
	if(PC == 28) begin
		$display("Failed test 2.");
		$stop;
	end
	if(PC == 48) begin
		$display("Passed test 3. Functional."); //t2 is 1, should branch
	
	end
	if(PC == 44) begin
		$display("Failed test 3.");
		$stop;
	end
        if(PC == 60) begin
           verifyEqual32(myCPU.b2v_rf.contents_t3,
                               4);
end
	if(PC == 72) begin
		$display("Passed test 4."); //t0 is 1, should not branch
	end
	if(PC == 76) begin
		$display("Failed test 4.");
		$stop;
	end
	if(PC == 92) begin
		$display("Passed test 5."); //t1 is 0, should branch
	end
	if(PC == 88) begin
		$display("Failed test 5.");
		$stop;
	end
	if(PC == 108) begin
		$display("Passed test 6. Functional."); //t3 is -1, should branch
	$stop;
	end
	if(PC == 104) begin
		$display("Failed test 6.");
		$stop;
	end

end
endmodule
