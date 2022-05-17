#### MODULE NAME
       CPU_SingleCycle

#### DEPENDENCIES
       SE18_32, SPLICE_SL2, MUX2_5, MUX2_32, SE16_32, SameBit, MUX2, Flopr_32,
       MUX3_32,  INC4_32,  SPLICE_PCJ,  Adder_32,  OneBitAdder,  MUX3,  Flopr,
       DSwitch,  CTRL,  ALU_32,  RF,  Flopenr_32,  MUX32_32, MUX32, Decoder_32,
       Flopenr, DESwitch, ALUBit31, ALUBits0To30, MUX4, DM_synch, Grounder, IM,
       OverflowDetection

#### INPUTS
Name  | Size(Bits)
-------|------------
clk  |     1      
reset |     1      
Overflow|	1
PC	|	32
OPCODE	|	32

#### OUTPUTS
       None

#### DESCRIPTION
       CPU_SingleCycle Single-cycle MIPS CPU

#### SUPPORTED INSTRUCTIONS
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
