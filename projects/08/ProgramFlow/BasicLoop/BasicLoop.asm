@256 // BOOTSTRAP
D=A
@SP
M=D
@RETURN-Sys.init0 // C_CALL Sys.init 0
D=A // push return-address
@SP
A=M
M=D
@SP // push LCL
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP // push ARG
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP // push THIS
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP // push THAT
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP // ARG = SP-n-5
M=M+1
D=M
@0
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Sys.init // end of call to Sys.init
0; JMP
(RETURN-Sys.init0)
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // C_POP local 0
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
($LOOP_START) // LABEL
@ARG // C_PUSH argument 0
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL // C_PUSH local 0
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@LCL // C_POP local 0
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG // C_PUSH argument 0
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@1 // C_PUSH constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // SUB
D=M
M=D-1
A=M
D=M
A=A-1
M=M-D
@ARG // C_POP argument 0
D=M
@0
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@ARG // C_PUSH argument 0
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // IF-GOTO
AM=M-1
D=M
@$LOOP_START
D;JNE
@LCL // C_PUSH local 0
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
