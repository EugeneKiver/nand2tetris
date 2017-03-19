@256 // Setup Memory Mapping
D=A
@SP
M=D
@300
D=A
@LCL
M=D
@400
D=A
@ARG
M=D
@3000
D=A
@THIS
M=D
@3010
D=A
@THAT
M=D
@6
D=A
@400
M=D
@3000
D=A
@401
M=D
@ARG // C_PUSH argument 1
D=M
@1
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@3 // C_POP pointer 1
D=A
@1
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@THAT // C_POP that 0
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
@1 // C_PUSH constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@THAT // C_POP that 1
D=M
@1
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
@2 // C_PUSH constant 2
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
(MAIN_LOOP_START) // LABEL
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
@COMPUTE_ELEMENT
D;JNE
@END_PROGRAM // GOTO
0;JMP
(COMPUTE_ELEMENT) // LABEL
@THAT // C_PUSH that 0
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
@THAT // C_PUSH that 1
D=M
@1
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
@THAT // C_POP that 2
D=M
@2
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@3 // C_PUSH pointer 1
D=A
@1
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@3 // C_POP pointer 1
D=A
@1
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
@MAIN_LOOP_START // GOTO
0;JMP
(END_PROGRAM) // LABEL
