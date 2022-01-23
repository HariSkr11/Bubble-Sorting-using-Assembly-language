@0
D=A
@l
M=D
@30
D=A
@i
M=D
@SAS

(SAS)
    @l
    A=M
    D=M
    @1
    D=D&A
    @LOOP1
    D;JEQ 
    @LOOP 
    D-1;JEQ


(LOOP)
   @l
   A=M
   D=M 
   @i
   A=M
   M=D 
   @i
   M=M+1
   @l
   M=M+1
   @SAS
   0;JEQ


(LOOP1)
   @l
   D=M
   @6
   D=D-A 
   @SORT
   D;JEQ
   @l
   M=M+1
   @SAS 
   0;JEQ


(SORT)
 @30
 D=A
 @i
 M=D
 @SORT1
 0;JMP


(SORT1)
 @i
 A=M
 D=M
 @CHECK
 D;JEQ
 @i
 A=M+1
 D=M
 @CHECK
 D;JEQ
 @i
 A=M
 D=M
 A=A+1
 D=D-M
 @SWAP
 D;JGT
 @i
 M=M+1
 @SORT1
 0;JMP


(SWAP)
  @i
  D=M+1
  @l
  A=D
  D=M
  @l
  M=D
  @l
  M=D
  @i
  A=M
  D=M
  @i
  A=M+1
  M=D
  @l
  D=M
  @i
  A=M
  M=D
  @i
  M=M+1
  @SORT1
  0;JMP




(CHECK)
  @30
  D=A
  @i
  M=D
  @CHECK2
  0;JMP


(CHECK2)
  @i
  A=M
  D=M
  @ENDING
  D;JEQ
  @i
  A=M+1
  D=M
  @ENDING
  D;JEQ
  @i
  A=M
  D=M
  A=A+1
  D=D-M
  @SORT
  D;JGT
  @i
  M=M+1
  @CHECK2
  0;JMP


(ENDING)
@i
M=0
@l
M=0
@ENDING
0;JMP

