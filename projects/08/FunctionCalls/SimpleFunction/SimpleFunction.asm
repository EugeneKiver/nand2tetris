@317 // Setup Memory Mapping
D=A
@SP
M=D
@317
D=A
@LCL
M=D
@310
D=A
@ARG
M=D
@3000
D=A
@THIS
M=D
@4000
D=A
@THAT
M=D
@1234
D=A
@310
M=D
@37
D=A
@311
M=D
@9
D=A
@312
M=D
@305
D=A
@313
M=D
@300
D=A
@314
M=D
@3010
D=A
@315
M=D
@4010
D=A
@136
M=D
(SimpleFunction.test) // C_FUNCTION1
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
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
@LCL // C_PUSH local 1
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
@SP // NOT
D=M-1
A=D
M=!M
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
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
@SP // SUB
D=M
M=D-1
A=M
D=M
A=A-1
M=M-D
@LCL // RETURN START: *FRAME = *LCL
D=M
@FRAME
M=D
@SP // *ARG=*(*SP-1) RETURN value placed
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG // *SP=*ARG+1
D=M+1
@SP
M=D
@FRAME // *THAT=*(FRAME-1)
D=M
@1
D=D-A
A=D
D=M
@THAT
M=D
@FRAME // *THIS=*(FRAME-2)
D=M
@2
D=D-A
A=D
D=M
@THIS
M=D
@FRAME // *ARG=*(FRAME-3)
D=M
@3
D=D-A
A=D
D=M
@ARG
M=D
@FRAME // *LCL=*(FRAME-4)
D=M
@4
D=D-A
A=D
D=M
@LCL
M=D
@FRAME // return to *(FRAME-5)
D=M
@5
A=D-A
A=M
0; JMP
