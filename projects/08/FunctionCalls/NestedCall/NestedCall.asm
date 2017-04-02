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
(Sys.init) // Sys.C_FUNCTION1
@4000 // C_PUSH constant 4000
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // C_POP pointer 0
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
@5000 // C_PUSH constant 5000
D=A
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
@RETURN-Sys.main6 // C_CALL Sys.main 0
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
@Sys.main // end of call to Sys.main
0; JMP
(RETURN-Sys.main6)
@5 // C_POP temp 1
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
(Sys.init$LOOP) // LABEL
@Sys.init$LOOP // GOTO
0;JMP
(Sys.main) // Sys.C_FUNCTION10
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
@SP
A=M
M=0
@SP
M=M+1
@4001 // C_PUSH constant 4001
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // C_POP pointer 0
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
@5001 // C_PUSH constant 5001
D=A
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
@200 // C_PUSH constant 200
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // C_POP local 1
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
@40 // C_PUSH constant 40
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // C_POP local 2
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
@6 // C_PUSH constant 6
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // C_POP local 3
D=M
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
@123 // C_PUSH constant 123
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Sys.add1222 // C_CALL Sys.add12 1
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
@Sys.add12 // end of call to Sys.add12
0; JMP
(RETURN-Sys.add1222)
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
@LCL // C_PUSH local 2
D=M
@2
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL // C_PUSH local 3
D=M
@3
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL // C_PUSH local 4
D=M
@4
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
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
(Sys.add12) // Sys.C_FUNCTION34
@4002 // C_PUSH constant 4002
D=A
@SP
A=M
M=D
@SP
M=M+1
@3 // C_POP pointer 0
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
@5002 // C_PUSH constant 5002
D=A
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
@12 // C_PUSH constant 12
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
