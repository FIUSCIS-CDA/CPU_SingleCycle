///////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: CPU_SingleCycle (CLK=200)
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// Extended By: CDA3102 students
// License: MIT, (C) 2023 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////

module testbenchLui();
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
// CPU will check if the array sorted if PC hits this value
// Set to location of doneloop1 below
localparam TERMINALPC=8;
/////////////////////////////////////////////////////////////////////////////////////////////////////


   CPU_SingleCycle myCPU(.clk(clk), .reset(rst), .Overflow(Overflow), .FUNCTCODE(FUNCTCODE), .OPCODE(OPCODE), .PC(PC));
   
   initial begin
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////
      // Initialize Instruction Memory with MIPS Code              //          INSTRUCTION                      PC
      myCPU.b2v_im.memory[0] = 'b00111100000010000000000000000001; //          lui $t0, 1	 		0	
      myCPU.b2v_im.memory[1] = 'b00110101000010000000000000000001; //          ori $t0, $t0, 1	 		4	
      ////////////////////////////////////////////////////////////////////////////////////////////////////////////
 
      /////////////////////////////////////////////////////////////////////////////////////////////
      // Turn power on for 1/2 tick
      rst <= 1;  # (CLK_PERIOD/2);
      /////////////////////////////////////////////////////////////////////////////////////////////
      rst <= 0; 
   end 

  always@(posedge clk)

    begin
        ///////////////////////////////////////////////////////////////////////////////////
        // When we hit the terminal PC, verify every pair of elements is ascending
        // This implies the array is sorted, and bubble sort worked correctly
        if(PC === TERMINALPC) begin
             $display("Testing lui with immediate=1");
             verifyEqual32(myCPU.b2v_rf.contents_t0,
                               65537);
          $display("CPU functional");
          $stop;
         end
        ///////////////////////////////////////////////////////////////////////////////////
   end
 
endmodule