@111 // C_PUSH D_CONSTANT 111
D=A
@SP
A=M
M=D
@SP
M=M+1
@333 // C_PUSH D_CONSTANT 333
D=A
@SP
A=M
M=D
@SP
M=M+1
@888 // C_PUSH D_CONSTANT 888
D=A
@SP
A=M
M=D
@SP
M=M+1
@16 // C_POP D_STATIC 8
D=A
@8
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@16 // C_POP D_STATIC 3
D=A
@3
D=D+A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@16 // C_POP D_STATIC 1
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
@16 // C_PUSH D_STATIC 3
D=A
@3
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@16 // C_PUSH D_STATIC 1
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
@SP // SUB
D=M
M=D-1
A=M
D=M
A=A-1
M=M-D
@16 // C_PUSH D_STATIC 8
D=A
@8
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
