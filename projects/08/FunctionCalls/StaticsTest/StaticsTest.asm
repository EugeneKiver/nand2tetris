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
(Class1.set) // Class1.C_FUNCTION1
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
@SP // C_POP static 0
M=M-1
A=M
D=M
@Class1.0
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
@SP // C_POP static 1
M=M-1
A=M
D=M
@Class1.1
M=D
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // RETURN START: *FRAME = *LCL
D=M
@FRAME
M=D
@5 // RET = *(FRAME-5)
D=D-A
A=D
D=M
@RET
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
@RET // return to *(FRAME-5)
A=M
0; JMP
(Class1.get) // Class1.C_FUNCTION8
@Class1.0 // C_PUSH static 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@Class1.1 // C_PUSH static 1
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
@5 // RET = *(FRAME-5)
D=D-A
A=D
D=M
@RET
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
@RET // return to *(FRAME-5)
A=M
0; JMP
(Class2.set) // Class2.C_FUNCTION1
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
@SP // C_POP static 0
M=M-1
A=M
D=M
@Class2.0
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
@SP // C_POP static 1
M=M-1
A=M
D=M
@Class2.1
M=D
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // RETURN START: *FRAME = *LCL
D=M
@FRAME
M=D
@5 // RET = *(FRAME-5)
D=D-A
A=D
D=M
@RET
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
@RET // return to *(FRAME-5)
A=M
0; JMP
(Class2.get) // Class2.C_FUNCTION8
@Class2.0 // C_PUSH static 0
D=M
@SP
A=M
M=D
@SP
M=M+1
@Class2.1 // C_PUSH static 1
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
@5 // RET = *(FRAME-5)
D=D-A
A=D
D=M
@RET
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
@RET // return to *(FRAME-5)
A=M
0; JMP
(Sys.init) // Sys.C_FUNCTION1
@6 // C_PUSH constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@8 // C_PUSH constant 8
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Class1.set4 // C_CALL Class1.set 2
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Class1.set // end of call to Class1.set
0; JMP
(RETURN-Class1.set4)
@5 // C_POP temp 0
D=A
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
@23 // C_PUSH constant 23
D=A
@SP
A=M
M=D
@SP
M=M+1
@15 // C_PUSH constant 15
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Class2.set8 // C_CALL Class2.set 2
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
@2
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Class2.set // end of call to Class2.set
0; JMP
(RETURN-Class2.set8)
@5 // C_POP temp 0
D=A
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
@RETURN-Class1.get10 // C_CALL Class1.get 0
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
@Class1.get // end of call to Class1.get
0; JMP
(RETURN-Class1.get10)
@RETURN-Class2.get11 // C_CALL Class2.get 0
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
@Class2.get // end of call to Class2.get
0; JMP
(RETURN-Class2.get11)
(Sys.init$WHILE) // LABEL
@Sys.init$WHILE // GOTO
0;JMP
