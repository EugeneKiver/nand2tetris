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
@3
D=A
@ARG
A=M
M=D
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
(LOOP_START) // LABEL
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
@LOOP_START
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
