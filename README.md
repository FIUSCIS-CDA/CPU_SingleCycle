#### MODULE NAME
       CPU_SingleCycle

#### DEPENDENCIES
       SE18_32, SL2_16, MUX2_5, MUX2_32, SE16_32, SameBit, MUX2, Flopr_32,
       MUX3_32,  INC4_32,  SPLICE_PCJ,  Adder_32,  OneBitAdder,  MUX3,  Flopr,
       DSwitch,  CTRL,  ALU_32,  RF,  Flopenr_32,  MUX32_32, MUX32, Decoder_32,
       Flopenr, DESwitch, ALUBit31, ALUBits0To30, MUX4, DM_synch, Grounder, IM,
       OverflowDetection, Sixteen, ZE16_32

#### INPUTS
Name  | Size(Bits)
-------|------------
clk  |     1      
reset |     1      

#### OUTPUTS
Name  | Size(Bits)
-------|------------
Overflow|	1
PC	|	32
OPCODE	|	32
FUNCTCODE |     32

#### DESCRIPTION
       CPU_SingleCycle Single-cycle MIPS CPU

#### SUPPORTED INSTRUCTIONS
       BGTZ (SP25)
       JR (FA24)
       JAL (FA24)
       ANDI (FA24)
       BLEZ (FA24)
       BGEZ (FA24)
       ORI (SP24)
       LUI (FA23)
       MFLO (SP23)
       MULT (SP23)
       SLL (FA22)
       SLTI (SP22)
       BNE (SP21)
       ADDI (FA20)
       J
       BEQ
       LW
       SW
       ADD
       SUB
       AND
       OR
       SLT

#### AUTHOR
       Alexander T Pastoriza
       Trevor Cickovski

#### SEE ALSO
       qms(1), modclone(1)
