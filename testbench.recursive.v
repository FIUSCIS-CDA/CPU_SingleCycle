///////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: CPU_SingleCycle (CLK=200)
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// Extended By: CDA3102 students
// License: MIT, (C) 2024 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////

module testbenchRecursive();
`include "../Test/Test.v"
///////////////////////////////////////////////////////////////////////////////////
// Inputs: clk, reset (1-bit)
   reg clk, rst;
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
// Outputs: Overflow (1-bit), PC (32-bit), OPCODE (6-bit) (For WAVE)
   wire Overflow;
   wire[31:0] PC;
   wire[31:26] OPCODE;
   wire[5:0] FUNCTCODE;
///////////////////////////////////////////////////////////////////////////////////
 
   integer address;

///////////////////////////////////////////////////////////////////////////////////
// Component is CLOCKED
// Set clk period to 200 in wave
// Approximating clock period as 100+100 (two accesses to RAM)
localparam CLK_PERIOD=200;
///////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////////////
// CPU will check result if PC hits this value
// Set to location of doneloop1 below
localparam TERMINALPC=20;
/////////////////////////////////////////////////////////////////////////////////////////////////////


   CPU_SingleCycle myCPU(.clk(clk), .reset(rst), .Overflow(Overflow), .FUNCTCODE(FUNCTCODE), .OPCODE(OPCODE), .PC(PC));
   
   initial begin 
 
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////
      // Initialize Instruction Memory                              //          INSTRUCTION                      PC
      myCPU.b2v_im.memory[0] = 'b00100000000111010000111111111100;  //system: addi $sp, $zero, 4092              0
      myCPU.b2v_im.memory[1] = 'b00100000000100000000000000000110;  //main: addi $s0, $zero, 6                   4
      myCPU.b2v_im.memory[2] = 'b00000010000000000010000000100000;  //      add $a0, $s0, $zero                  8
      myCPU.b2v_im.memory[3] = 'b00001100000000000000000000000110;  //      jal fact                             12
      myCPU.b2v_im.memory[4] = 'b10101100000000100000001000000000;  //      sw $v0, 512($zero)                   16
      myCPU.b2v_im.memory[5] = 'b00000000000000000000000000000000;  //                                           20
      myCPU.b2v_im.memory[6] = 'b00100011101111011111111111111100;  //fact: addi $sp, $sp, -4                    24  
      myCPU.b2v_im.memory[7] = 'b10101111101100000000000000000000;  //      sw $s0, 0($sp)                       28
      myCPU.b2v_im.memory[8] = 'b00100000000100000000000000000001;  //      addi $s0, $zero, 1                   32
      myCPU.b2v_im.memory[9] = 'b00010110000001000000000000000100;  //      bne $s0, $a0, reccall                36
      myCPU.b2v_im.memory[10] = 'b00100000000000100000000000000001; //      addi $v0, $zero, 1                   40
      myCPU.b2v_im.memory[11] = 'b10001111101100000000000000000000; //      lw $s0, 0($sp)                       44
      myCPU.b2v_im.memory[12] = 'b00100011101111010000000000000100; //      addi $sp, $sp, 4                     48
      myCPU.b2v_im.memory[13] = 'b00000011111000000000000000001000; //      jr $ra                               52
      myCPU.b2v_im.memory[14] = 'b00100011101111011111111111111000; //      reccall: addi $sp, $sp, -8           56
      myCPU.b2v_im.memory[15] = 'b10101111101001000000000000000000; //               sw $a0, 0($sp)              60
      myCPU.b2v_im.memory[16] = 'b10101111101111110000000000000100; //               sw $ra, 4($sp)              64
      myCPU.b2v_im.memory[17] = 'b00100000100001001111111111111111; //               addi $a0, $a0, -1           68
      myCPU.b2v_im.memory[18] = 'b00001100000000000000000000000110; //               jal fact                    72
      myCPU.b2v_im.memory[19] = 'b10001111101111110000000000000100; //               lw $ra, 4($sp)              76
      myCPU.b2v_im.memory[20] = 'b10001111101001000000000000000000; //               lw $a0, 0($sp)              80
      myCPU.b2v_im.memory[21] = 'b00100011101111010000000000001000; //               addi $sp, $sp, 8            84
      myCPU.b2v_im.memory[22] = 'b00000000100000100000000000011000; //               mult $a0, $v0               88
      myCPU.b2v_im.memory[23] = 'b00000000000000000001000000010010; //               mflo $v0                    92
      myCPU.b2v_im.memory[24] = 'b10001111101100000000000000000000; //               lw $s0, 0($sp)              96
      myCPU.b2v_im.memory[25] = 'b00100011101111010000000000000100; //               addi $sp, $sp, 4            100
      myCPU.b2v_im.memory[26] = 'b00000011111000000000000000001000; //               jr $ra                      104         
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////

      /////////////////////////////////////////////////////////////////////////////////////////////
      // Initial Array (Unsorted)
      myCPU.b2v_DM.memory[512 >> 2] = 55;
      myCPU.b2v_DM.memory[516 >> 2] = 88;
      myCPU.b2v_DM.memory[520 >> 2] = 0;
      myCPU.b2v_DM.memory[524 >> 2] = 22;
      myCPU.b2v_DM.memory[528 >> 2] = 77;
      myCPU.b2v_DM.memory[532 >> 2] = 11;
      myCPU.b2v_DM.memory[536 >> 2] = 99;
      myCPU.b2v_DM.memory[540 >> 2] = 33;
      myCPU.b2v_DM.memory[544 >> 2] = 110;
      myCPU.b2v_DM.memory[548 >> 2] = 66;
      myCPU.b2v_DM.memory[552 >> 2] = 121;
      myCPU.b2v_DM.memory[556 >> 2] = 44;
      /////////////////////////////////////////////////////////////////////////////////////////////
 
      /////////////////////////////////////////////////////////////////////////////////////////////
      // Turn power on for 1/2 tick
      rst <= 1;  # (CLK_PERIOD/2);
      /////////////////////////////////////////////////////////////////////////////////////////////
      rst <= 0; 
   end 

  always@(negedge clk)

    begin
        ///////////////////////////////////////////////////////////////////////////////////
        // When we hit the terminal PC, verify factorial value
        if(PC === TERMINALPC) begin
             verifyEqual32(myCPU.b2v_DM.memory[512 >> 2],
                               720);
          $display("CPU functional");
          $stop;
         end
        ///////////////////////////////////////////////////////////////////////////////////
   end
 
endmodule