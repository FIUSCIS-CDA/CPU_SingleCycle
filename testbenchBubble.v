`timescale 1ps / 1ps
module testbenchBubble();
// Approximating clock period as 100+100 (two accesses to RAM) + 100 (everything else)
   reg clk_tb, rst_tb;
   
   localparam CLK_PERIOD = 300;
   
   CPU_SingleCycle myCPU(clk_tb, rst_tb);
   
   initial begin
      // initialize instruction memory
      myCPU.b2v_im.memory[0] = 'b00100000000100000000001000000000; // addi $s0, $zero, 512   # Assume arr=512
      myCPU.b2v_im.memory[1] = 'b00100000000100010000000000001100; // addi $s1, $zero, 12    # Size (N) is 12  
      myCPU.b2v_im.memory[2] = 'b00100000000100100000000000000010; // addi $s2, $zero, 2     # i = 2
      myCPU.b2v_im.memory[3] = 'b00100000000100110000000000000101; // addi $s3, $zero, 5     # j = 5
      /////////////////////////////////////////////////////////////
      // PUT BUBBLE SORT CODE HERE
      myCPU.b2v_im.memory[4] = 'b00100010001100101111111111111111; // addi $s2, $s1, -1
      myCPU.b2v_im.memory[5] = 'b00100000000011010000000000000001; // addi $t5, $zero, 1
      myCPU.b2v_im.memory[6] = 'b00000000000100100100000000101010; // loop1:   slt $t0, $zero, $s2 
      myCPU.b2v_im.memory[7] = 'b00010001000000000000000000010001; // beq $t0, $zero, doneloop1
      myCPU.b2v_im.memory[8] = 'b00100000000100110000000000000000; // addi $s3, $zero, 0
      myCPU.b2v_im.memory[9] = 'b00000010011100100100100000101010; // loop2:   slt $t1, $s3, $s2
      myCPU.b2v_im.memory[10] = 'b00010001001000000000000000001100; // beq $t1, $zero, doneloop2
      myCPU.b2v_im.memory[11] = 'b00000010011100110101000000100000; // add $t2, $s3, $s3
      myCPU.b2v_im.memory[12] = 'b00000001010010100101000000100000; // add $t2, $t2, $t2
      myCPU.b2v_im.memory[13] = 'b00000010000010100101100000100000; // add $t3, $s0, $t2
      myCPU.b2v_im.memory[14] = 'b10001101011101000000000000000000; // lw $s4, 0($t3)
      myCPU.b2v_im.memory[15] = 'b10001101011101010000000000000100; // lw $s5, 4($t3)
      myCPU.b2v_im.memory[16] = 'b00000010101101000110000000101010; // slt $t4, $s5, $s4 
      myCPU.b2v_im.memory[17] = 'b00010001100000000000000000000011; // beq $t4, $zero, doneif
      myCPU.b2v_im.memory[18] = 'b10101101011101010000000000000000; // sw $s5, 0($t3)
      myCPU.b2v_im.memory[19] = 'b00100001011010110000000000000100; // addi $t3, $t3, 4
      myCPU.b2v_im.memory[20] = 'b10101101011101000000000000000000; // sw $s4, 0($t3)
      myCPU.b2v_im.memory[21] = 'b00100010011100110000000000000001; // doneif:    addi $s3, $s3, 1
      myCPU.b2v_im.memory[22] = 'b00001000000000000000000000001001; // j loop2 //instruction 9
      myCPU.b2v_im.memory[23] = 'b00100010010100101111111111111111; //doneloop2: addi $s2, $s2, -1
      myCPU.b2v_im.memory[24] = 'b00001000000000000000000000000110; // j loop1 //instruction 6
      // doneloop1:
      // Next instruction, uses myCPU.b2v_im.memory[4]

      /////////////////////////////////////////////////////////////


      // Initialized array manually
      myCPU.b2v_dm.memory[512 >> 2] = 55;
      myCPU.b2v_dm.memory[516 >> 2] = 88;
      myCPU.b2v_dm.memory[520 >> 2] = 0;
      myCPU.b2v_dm.memory[524 >> 2] = 22;
      myCPU.b2v_dm.memory[528 >> 2] = 77;
      myCPU.b2v_dm.memory[532 >> 2] = 11;
      myCPU.b2v_dm.memory[536 >> 2] = 99;
      myCPU.b2v_dm.memory[540 >> 2] = 33;
      myCPU.b2v_dm.memory[544 >> 2] = 110;
      myCPU.b2v_dm.memory[548 >> 2] = 66;
      myCPU.b2v_dm.memory[552 >> 2] = 121;
      myCPU.b2v_dm.memory[556 >> 2] = 44;
      rst_tb <= 1;  # (CLK_PERIOD/2);
      rst_tb <= 0; 
   end


   // Generate clock
   always @*
   begin
      clk_tb <= 1;       # (CLK_PERIOD/2);
      clk_tb <= 0;       # (CLK_PERIOD/2);
   end
   

  always@(posedge clk_tb)
    begin
        //////////////////////////////////////////////////
        // CHANGE PC VALUE IN THIS IF STATEMENT
        // ADD 4 TIMES THE AMOUNT OF INSTRUCTIONS YOU RUN
        if(myCPU.b2v_PC.Q === 100) begin
        //////////////////////////////////////////////////
        // CHANGE THIS TEST
        // CURRENT TEST ASSUMES YOU SWAPPED THE THIRD AND SIXTH
          if ( 
             (myCPU.b2v_dm.memory[512 >> 2] < myCPU.b2v_dm.memory[516 >> 2]) &&
             (myCPU.b2v_dm.memory[516 >> 2] < myCPU.b2v_dm.memory[520 >> 2]) &&
             (myCPU.b2v_dm.memory[520 >> 2] < myCPU.b2v_dm.memory[524 >> 2]) &&
             (myCPU.b2v_dm.memory[524 >> 2] < myCPU.b2v_dm.memory[528 >> 2]) &&
             (myCPU.b2v_dm.memory[528 >> 2] < myCPU.b2v_dm.memory[532 >> 2]) &&
             (myCPU.b2v_dm.memory[532 >> 2] < myCPU.b2v_dm.memory[536 >> 2]) &&
             (myCPU.b2v_dm.memory[536 >> 2] < myCPU.b2v_dm.memory[540 >> 2]) &&
             (myCPU.b2v_dm.memory[540 >> 2] < myCPU.b2v_dm.memory[544 >> 2]) &&
             (myCPU.b2v_dm.memory[544 >> 2] < myCPU.b2v_dm.memory[548 >> 2]) &&
             (myCPU.b2v_dm.memory[548 >> 2] < myCPU.b2v_dm.memory[552 >> 2]) &&
             (myCPU.b2v_dm.memory[552 >> 2] < myCPU.b2v_dm.memory[556 >> 2])  )


 begin
             $display("CPU functional");
             $stop;
          end
          else begin
             $display("CPU not functional");
             $stop;
           end
       end
   end
 
endmodule
