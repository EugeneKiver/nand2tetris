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
@1
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
(Main.fibonacci) // Main.C_FUNCTION1
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
@SP // LT
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@LT-GREATER4
D;JLT
@SP
A=M-1
M=0
@LT-END4
0;JMP
(LT-GREATER4)
@SP
A=M-1
M=-1
(LT-END4)
@SP // IF-GOTO
AM=M-1
D=M
@Main.fibonacci$IF_TRUE
D;JNE
@Main.fibonacci$IF_FALSE // GOTO
0;JMP
(Main.fibonacci$IF_TRUE) // LABEL
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
(Main.fibonacci$IF_FALSE) // LABEL
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
@RETURN-Main.fibonacci14 // C_CALL Main.fibonacci 1
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Main.fibonacci // end of call to Main.fibonacci
0; JMP
(RETURN-Main.fibonacci14)
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
@RETURN-Main.fibonacci18 // C_CALL Main.fibonacci 1
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Main.fibonacci // end of call to Main.fibonacci
0; JMP
(RETURN-Main.fibonacci18)
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
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
(Sys.init) // Sys.C_FUNCTION1
@4 // C_PUSH constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Main.fibonacci3 // C_CALL Main.fibonacci 1
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
@1
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Main.fibonacci // end of call to Main.fibonacci
0; JMP
(RETURN-Main.fibonacci3)
(Sys.init$WHILE) // LABEL
@Sys.init$WHILE // GOTO
0;JMP
