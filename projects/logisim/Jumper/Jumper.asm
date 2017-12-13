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
(Jumper.new) // Jumper.C_FUNCTION1
@4 // C_PUSH constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.alloc3 // C_CALL Memory.alloc 1
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
@Memory.alloc // end of call to Memory.alloc
0; JMP
(RETURN-Memory.alloc3)
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
@THIS // C_POP this 0
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
@THIS // C_POP this 1
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
@ARG // C_PUSH argument 2
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
@THIS // C_POP this 2
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
@3 // C_PUSH pointer 0
D=A
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Jumper.draw12 // C_CALL Jumper.draw 1
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
@Jumper.draw // end of call to Jumper.draw
0; JMP
(RETURN-Jumper.draw12)
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
@3 // C_PUSH pointer 0
D=A
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
(Jumper.dispose) // Jumper.C_FUNCTION16
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
@3 // C_PUSH pointer 0
D=A
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.deAlloc20 // C_CALL Memory.deAlloc 1
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
@Memory.deAlloc // end of call to Memory.deAlloc
0; JMP
(RETURN-Memory.deAlloc20)
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
(Jumper.draw) // Jumper.C_FUNCTION24
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
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // NOT
D=M-1
A=D
M=!M
@RETURN-Screen.setColor29 // C_CALL Screen.setColor 1
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
@Screen.setColor // end of call to Screen.setColor
0; JMP
(RETURN-Screen.setColor29)
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
@3 // C_PUSH pointer 0
D=A
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS // C_PUSH this 0
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
@RETURN-Jumper.drawStanding33 // C_CALL Jumper.drawStanding 2
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
@Jumper.drawStanding // end of call to Jumper.drawStanding
0; JMP
(RETURN-Jumper.drawStanding33)
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
(Jumper.drawStanding) // Jumper.C_FUNCTION37
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
@16384 // C_PUSH constant 16384
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@THIS // C_POP this 3
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
@THIS // C_PUSH this 3
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
@0 // C_PUSH constant 0
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
@992 // C_PUSH constant 992
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke48 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke48)
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
@THIS // C_PUSH this 3
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
@32 // C_PUSH constant 32
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
@8176 // C_PUSH constant 8176
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke54 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke54)
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
@THIS // C_PUSH this 3
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
@64 // C_PUSH constant 64
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
@1648 // C_PUSH constant 1648
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke60 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke60)
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
@THIS // C_PUSH this 3
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
@96 // C_PUSH constant 96
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
@6696 // C_PUSH constant 6696
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke66 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke66)
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
@THIS // C_PUSH this 3
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
@128 // C_PUSH constant 128
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
@8296 // C_PUSH constant 8296
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke72 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke72)
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
@THIS // C_PUSH this 3
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
@160 // C_PUSH constant 160
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
@4120 // C_PUSH constant 4120
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke78 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke78)
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
@THIS // C_PUSH this 3
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
@192 // C_PUSH constant 192
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
@4064 // C_PUSH constant 4064
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke84 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke84)
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
@THIS // C_PUSH this 3
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
@224 // C_PUSH constant 224
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
@1168 // C_PUSH constant 1168
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke90 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke90)
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
@THIS // C_PUSH this 3
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
@256 // C_PUSH constant 256
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
@8072 // C_PUSH constant 8072
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke96 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke96)
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
@THIS // C_PUSH this 3
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
@288 // C_PUSH constant 288
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
@11076 // C_PUSH constant 11076
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke102 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke102)
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
@THIS // C_PUSH this 3
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
@320 // C_PUSH constant 320
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
@12260 // C_PUSH constant 12260
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke108 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke108)
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
@THIS // C_PUSH this 3
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
@352 // C_PUSH constant 352
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
@10212 // C_PUSH constant 10212
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke114 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke114)
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
@THIS // C_PUSH this 3
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
@384 // C_PUSH constant 384
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
@16380 // C_PUSH constant 16380
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke120 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke120)
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
@THIS // C_PUSH this 3
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
@416 // C_PUSH constant 416
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
@3696 // C_PUSH constant 3696
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke126 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke126)
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
@THIS // C_PUSH this 3
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
@448 // C_PUSH constant 448
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
@7224 // C_PUSH constant 7224
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke132 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke132)
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
@THIS // C_PUSH this 3
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
@480 // C_PUSH constant 480
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
@15420 // C_PUSH constant 15420
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.poke138 // C_CALL Memory.poke 2
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
@Memory.poke // end of call to Memory.poke
0; JMP
(RETURN-Memory.poke138)
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
(Jumper.erase) // Jumper.C_FUNCTION142
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
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Screen.setColor146 // C_CALL Screen.setColor 1
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
@Screen.setColor // end of call to Screen.setColor
0; JMP
(RETURN-Screen.setColor146)
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@RETURN-Screen.drawRectangle156 // C_CALL Screen.drawRectangle 4
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Screen.drawRectangle // end of call to Screen.drawRectangle
0; JMP
(RETURN-Screen.drawRectangle156)
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
(Jumper.moveUp) // Jumper.C_FUNCTION160
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
@THIS // C_PUSH this 1
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
@1 // C_PUSH constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // GT
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@GT-GREATER165
D;JGT
@SP
A=M-1
M=0
@GT-END165
0;JMP
(GT-GREATER165)
@SP
A=M-1
M=-1
(GT-END165)
@SP // IF-GOTO
AM=M-1
D=M
@Jumper.moveUp$IF_TRUE0
D;JNE
@Jumper.moveUp$IF_FALSE0 // GOTO
0;JMP
(Jumper.moveUp$IF_TRUE0) // LABEL
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Screen.setColor170 // C_CALL Screen.setColor 1
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
@Screen.setColor // end of call to Screen.setColor
0; JMP
(RETURN-Screen.setColor170)
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@RETURN-Screen.drawRectangle184 // C_CALL Screen.drawRectangle 4
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Screen.drawRectangle // end of call to Screen.drawRectangle
0; JMP
(RETURN-Screen.drawRectangle184)
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
@THIS // C_PUSH this 1
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
@THIS // C_POP this 1
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
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // NOT
D=M-1
A=D
M=!M
@RETURN-Screen.setColor192 // C_CALL Screen.setColor 1
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
@Screen.setColor // end of call to Screen.setColor
0; JMP
(RETURN-Screen.setColor192)
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@THIS // C_PUSH this 1
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
@RETURN-Screen.drawRectangle202 // C_CALL Screen.drawRectangle 4
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Screen.drawRectangle // end of call to Screen.drawRectangle
0; JMP
(RETURN-Screen.drawRectangle202)
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
(Jumper.moveUp$IF_FALSE0) // LABEL
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
(Jumper.moveDown) // Jumper.C_FUNCTION207
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
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@254 // C_PUSH constant 254
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
@LT-GREATER214
D;JLT
@SP
A=M-1
M=0
@LT-END214
0;JMP
(LT-GREATER214)
@SP
A=M-1
M=-1
(LT-END214)
@SP // IF-GOTO
AM=M-1
D=M
@Jumper.moveDown$IF_TRUE0
D;JNE
@Jumper.moveDown$IF_FALSE0 // GOTO
0;JMP
(Jumper.moveDown$IF_TRUE0) // LABEL
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Screen.setColor219 // C_CALL Screen.setColor 1
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
@Screen.setColor // end of call to Screen.setColor
0; JMP
(RETURN-Screen.setColor219)
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@THIS // C_PUSH this 1
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
@RETURN-Screen.drawRectangle229 // C_CALL Screen.drawRectangle 4
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Screen.drawRectangle // end of call to Screen.drawRectangle
0; JMP
(RETURN-Screen.drawRectangle229)
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
@THIS // C_PUSH this 1
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
@2 // C_PUSH constant 2
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
@THIS // C_POP this 1
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
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // NOT
D=M-1
A=D
M=!M
@RETURN-Screen.setColor237 // C_CALL Screen.setColor 1
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
@Screen.setColor // end of call to Screen.setColor
0; JMP
(RETURN-Screen.setColor237)
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@RETURN-Screen.drawRectangle251 // C_CALL Screen.drawRectangle 4
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Screen.drawRectangle // end of call to Screen.drawRectangle
0; JMP
(RETURN-Screen.drawRectangle251)
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
(Jumper.moveDown$IF_FALSE0) // LABEL
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
(Jumper.moveLeft) // Jumper.C_FUNCTION256
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
@THIS // C_PUSH this 0
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
@SP // GT
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@GT-GREATER261
D;JGT
@SP
A=M-1
M=0
@GT-END261
0;JMP
(GT-GREATER261)
@SP
A=M-1
M=-1
(GT-END261)
@SP // IF-GOTO
AM=M-1
D=M
@Jumper.moveLeft$IF_TRUE0
D;JNE
@Jumper.moveLeft$IF_FALSE0 // GOTO
0;JMP
(Jumper.moveLeft$IF_TRUE0) // LABEL
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Screen.setColor266 // C_CALL Screen.setColor 1
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
@Screen.setColor // end of call to Screen.setColor
0; JMP
(RETURN-Screen.setColor266)
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
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
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@RETURN-Screen.drawRectangle280 // C_CALL Screen.drawRectangle 4
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Screen.drawRectangle // end of call to Screen.drawRectangle
0; JMP
(RETURN-Screen.drawRectangle280)
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
@THIS // C_PUSH this 0
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
@THIS // C_POP this 0
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
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // NOT
D=M-1
A=D
M=!M
@RETURN-Screen.setColor288 // C_CALL Screen.setColor 1
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
@Screen.setColor // end of call to Screen.setColor
0; JMP
(RETURN-Screen.setColor288)
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 0
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@RETURN-Screen.drawRectangle298 // C_CALL Screen.drawRectangle 4
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Screen.drawRectangle // end of call to Screen.drawRectangle
0; JMP
(RETURN-Screen.drawRectangle298)
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
(Jumper.moveLeft$IF_FALSE0) // LABEL
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
(Jumper.moveRight) // Jumper.C_FUNCTION303
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@510 // C_PUSH constant 510
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
@LT-GREATER310
D;JLT
@SP
A=M-1
M=0
@LT-END310
0;JMP
(LT-GREATER310)
@SP
A=M-1
M=-1
(LT-END310)
@SP // IF-GOTO
AM=M-1
D=M
@Jumper.moveRight$IF_TRUE0
D;JNE
@Jumper.moveRight$IF_FALSE0 // GOTO
0;JMP
(Jumper.moveRight$IF_TRUE0) // LABEL
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Screen.setColor315 // C_CALL Screen.setColor 1
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
@Screen.setColor // end of call to Screen.setColor
0; JMP
(RETURN-Screen.setColor315)
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 0
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@RETURN-Screen.drawRectangle325 // C_CALL Screen.drawRectangle 4
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Screen.drawRectangle // end of call to Screen.drawRectangle
0; JMP
(RETURN-Screen.drawRectangle325)
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
@THIS // C_PUSH this 0
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@THIS // C_POP this 0
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
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // NOT
D=M-1
A=D
M=!M
@RETURN-Screen.setColor333 // C_CALL Screen.setColor 1
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
@Screen.setColor // end of call to Screen.setColor
0; JMP
(RETURN-Screen.setColor333)
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
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
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 0
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@THIS // C_PUSH this 1
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
@THIS // C_PUSH this 2
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
@SP // ADD
D=M
M=D-1
A=M
D=M
A=A-1
M=M+D
@RETURN-Screen.drawRectangle347 // C_CALL Screen.drawRectangle 4
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
@4
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Screen.drawRectangle // end of call to Screen.drawRectangle
0; JMP
(RETURN-Screen.drawRectangle347)
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
(Jumper.moveRight$IF_FALSE0) // LABEL
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
(JumperGame.new) // JumperGame.C_FUNCTION1
@2 // C_PUSH constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.alloc3 // C_CALL Memory.alloc 1
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
@Memory.alloc // end of call to Memory.alloc
0; JMP
(RETURN-Memory.alloc3)
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
@16 // C_PUSH constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@16 // C_PUSH constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Math.multiply7 // C_CALL Math.multiply 2
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
@Math.multiply // end of call to Math.multiply
0; JMP
(RETURN-Math.multiply7)
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@16 // C_PUSH constant 16
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Jumper.new10 // C_CALL Jumper.new 3
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
@3
D=D-A
@5
D=D-A
@ARG
M=D
@SP // LCL = SP
D=M
@LCL
M=D
@Jumper.new // end of call to Jumper.new
0; JMP
(RETURN-Jumper.new10)
@THIS // C_POP this 0
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
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS // C_POP this 1
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
@3 // C_PUSH pointer 0
D=A
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
(JumperGame.dispose) // JumperGame.C_FUNCTION16
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
@THIS // C_PUSH this 0
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
@RETURN-Jumper.dispose20 // C_CALL Jumper.dispose 1
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
@Jumper.dispose // end of call to Jumper.dispose
0; JMP
(RETURN-Jumper.dispose20)
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
@3 // C_PUSH pointer 0
D=A
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Memory.deAlloc23 // C_CALL Memory.deAlloc 1
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
@Memory.deAlloc // end of call to Memory.deAlloc
0; JMP
(RETURN-Memory.deAlloc23)
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
(JumperGame.moveJumper) // JumperGame.C_FUNCTION27
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
@THIS // C_PUSH this 1
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
@1 // C_PUSH constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // EQ
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@EQ-EQUAL32
D;JEQ
@SP
A=M-1
M=0
@EQ-END32
0;JMP
(EQ-EQUAL32)
@SP
A=M-1
M=-1
(EQ-END32)
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.moveJumper$IF_TRUE0
D;JNE
@JumperGame.moveJumper$IF_FALSE0 // GOTO
0;JMP
(JumperGame.moveJumper$IF_TRUE0) // LABEL
@THIS // C_PUSH this 0
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
@RETURN-Jumper.moveUp37 // C_CALL Jumper.moveUp 1
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
@Jumper.moveUp // end of call to Jumper.moveUp
0; JMP
(RETURN-Jumper.moveUp37)
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
(JumperGame.moveJumper$IF_FALSE0) // LABEL
@THIS // C_PUSH this 1
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
@2 // C_PUSH constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // EQ
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@EQ-EQUAL42
D;JEQ
@SP
A=M-1
M=0
@EQ-END42
0;JMP
(EQ-EQUAL42)
@SP
A=M-1
M=-1
(EQ-END42)
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.moveJumper$IF_TRUE1
D;JNE
@JumperGame.moveJumper$IF_FALSE1 // GOTO
0;JMP
(JumperGame.moveJumper$IF_TRUE1) // LABEL
@THIS // C_PUSH this 0
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
@RETURN-Jumper.moveDown47 // C_CALL Jumper.moveDown 1
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
@Jumper.moveDown // end of call to Jumper.moveDown
0; JMP
(RETURN-Jumper.moveDown47)
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
(JumperGame.moveJumper$IF_FALSE1) // LABEL
@THIS // C_PUSH this 1
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
@3 // C_PUSH constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // EQ
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@EQ-EQUAL52
D;JEQ
@SP
A=M-1
M=0
@EQ-END52
0;JMP
(EQ-EQUAL52)
@SP
A=M-1
M=-1
(EQ-END52)
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.moveJumper$IF_TRUE2
D;JNE
@JumperGame.moveJumper$IF_FALSE2 // GOTO
0;JMP
(JumperGame.moveJumper$IF_TRUE2) // LABEL
@THIS // C_PUSH this 0
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
@RETURN-Jumper.moveLeft57 // C_CALL Jumper.moveLeft 1
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
@Jumper.moveLeft // end of call to Jumper.moveLeft
0; JMP
(RETURN-Jumper.moveLeft57)
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
(JumperGame.moveJumper$IF_FALSE2) // LABEL
@THIS // C_PUSH this 1
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
@4 // C_PUSH constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // EQ
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@EQ-EQUAL62
D;JEQ
@SP
A=M-1
M=0
@EQ-END62
0;JMP
(EQ-EQUAL62)
@SP
A=M-1
M=-1
(EQ-END62)
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.moveJumper$IF_TRUE3
D;JNE
@JumperGame.moveJumper$IF_FALSE3 // GOTO
0;JMP
(JumperGame.moveJumper$IF_TRUE3) // LABEL
@THIS // C_PUSH this 0
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
@RETURN-Jumper.moveRight67 // C_CALL Jumper.moveRight 1
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
@Jumper.moveRight // end of call to Jumper.moveRight
0; JMP
(RETURN-Jumper.moveRight67)
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
(JumperGame.moveJumper$IF_FALSE3) // LABEL
@5 // C_PUSH constant 5
D=A
@SP
A=M
M=D
@SP
M=M+1
@RETURN-Sys.wait71 // C_CALL Sys.wait 1
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
@Sys.wait // end of call to Sys.wait
0; JMP
(RETURN-Sys.wait71)
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
(JumperGame.run) // JumperGame.C_FUNCTION75
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
@0 // C_PUSH constant 0
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
(JumperGame.run$WHILE_EXP0) // LABEL
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
@SP // NOT
D=M-1
A=D
M=!M
@SP // NOT
D=M-1
A=D
M=!M
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.run$WHILE_END0
D;JNE
(JumperGame.run$WHILE_EXP1) // LABEL
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
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // EQ
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@EQ-EQUAL88
D;JEQ
@SP
A=M-1
M=0
@EQ-END88
0;JMP
(EQ-EQUAL88)
@SP
A=M-1
M=-1
(EQ-END88)
@SP // NOT
D=M-1
A=D
M=!M
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.run$WHILE_END1
D;JNE
@RETURN-Keyboard.keyPressed91 // C_CALL Keyboard.keyPressed 0
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
@Keyboard.keyPressed // end of call to Keyboard.keyPressed
0; JMP
(RETURN-Keyboard.keyPressed91)
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
@3 // C_PUSH pointer 0
D=A
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN-JumperGame.moveJumper94 // C_CALL JumperGame.moveJumper 1
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
@JumperGame.moveJumper // end of call to JumperGame.moveJumper
0; JMP
(RETURN-JumperGame.moveJumper94)
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
@JumperGame.run$WHILE_EXP1 // GOTO
0;JMP
(JumperGame.run$WHILE_END1) // LABEL
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
@81 // C_PUSH constant 81
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // EQ
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@EQ-EQUAL100
D;JEQ
@SP
A=M-1
M=0
@EQ-END100
0;JMP
(EQ-EQUAL100)
@SP
A=M-1
M=-1
(EQ-END100)
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.run$IF_TRUE0
D;JNE
@JumperGame.run$IF_FALSE0 // GOTO
0;JMP
(JumperGame.run$IF_TRUE0) // LABEL
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // NOT
D=M-1
A=D
M=!M
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
(JumperGame.run$IF_FALSE0) // LABEL
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
@131 // C_PUSH constant 131
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // EQ
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@EQ-EQUAL110
D;JEQ
@SP
A=M-1
M=0
@EQ-END110
0;JMP
(EQ-EQUAL110)
@SP
A=M-1
M=-1
(EQ-END110)
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.run$IF_TRUE1
D;JNE
@JumperGame.run$IF_FALSE1 // GOTO
0;JMP
(JumperGame.run$IF_TRUE1) // LABEL
@1 // C_PUSH constant 1
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS // C_POP this 1
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
(JumperGame.run$IF_FALSE1) // LABEL
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
@133 // C_PUSH constant 133
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // EQ
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@EQ-EQUAL119
D;JEQ
@SP
A=M-1
M=0
@EQ-END119
0;JMP
(EQ-EQUAL119)
@SP
A=M-1
M=-1
(EQ-END119)
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.run$IF_TRUE2
D;JNE
@JumperGame.run$IF_FALSE2 // GOTO
0;JMP
(JumperGame.run$IF_TRUE2) // LABEL
@2 // C_PUSH constant 2
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS // C_POP this 1
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
(JumperGame.run$IF_FALSE2) // LABEL
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
@130 // C_PUSH constant 130
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // EQ
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@EQ-EQUAL128
D;JEQ
@SP
A=M-1
M=0
@EQ-END128
0;JMP
(EQ-EQUAL128)
@SP
A=M-1
M=-1
(EQ-END128)
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.run$IF_TRUE3
D;JNE
@JumperGame.run$IF_FALSE3 // GOTO
0;JMP
(JumperGame.run$IF_TRUE3) // LABEL
@3 // C_PUSH constant 3
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS // C_POP this 1
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
(JumperGame.run$IF_FALSE3) // LABEL
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
@132 // C_PUSH constant 132
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // EQ
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@EQ-EQUAL137
D;JEQ
@SP
A=M-1
M=0
@EQ-END137
0;JMP
(EQ-EQUAL137)
@SP
A=M-1
M=-1
(EQ-END137)
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.run$IF_TRUE4
D;JNE
@JumperGame.run$IF_FALSE4 // GOTO
0;JMP
(JumperGame.run$IF_TRUE4) // LABEL
@4 // C_PUSH constant 4
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS // C_POP this 1
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
(JumperGame.run$IF_FALSE4) // LABEL
(JumperGame.run$WHILE_EXP2) // LABEL
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
@0 // C_PUSH constant 0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // EQ
D=M
M=D-1
A=M
D=M
A=A-1
D=M-D
@EQ-EQUAL147
D;JEQ
@SP
A=M-1
M=0
@EQ-END147
0;JMP
(EQ-EQUAL147)
@SP
A=M-1
M=-1
(EQ-END147)
@SP // NOT
D=M-1
A=D
M=!M
@SP // NOT
D=M-1
A=D
M=!M
@SP // IF-GOTO
AM=M-1
D=M
@JumperGame.run$WHILE_END2
D;JNE
@RETURN-Keyboard.keyPressed151 // C_CALL Keyboard.keyPressed 0
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
@Keyboard.keyPressed // end of call to Keyboard.keyPressed
0; JMP
(RETURN-Keyboard.keyPressed151)
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
@3 // C_PUSH pointer 0
D=A
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
@RETURN-JumperGame.moveJumper154 // C_CALL JumperGame.moveJumper 1
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
@JumperGame.moveJumper // end of call to JumperGame.moveJumper
0; JMP
(RETURN-JumperGame.moveJumper154)
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
@JumperGame.run$WHILE_EXP2 // GOTO
0;JMP
(JumperGame.run$WHILE_END2) // LABEL
@JumperGame.run$WHILE_EXP0 // GOTO
0;JMP
(JumperGame.run$WHILE_END0) // LABEL
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
(Main.main) // Main.C_FUNCTION1
@SP
A=M
M=0
@SP
M=M+1
@RETURN-JumperGame.new2 // C_CALL JumperGame.new 0
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
@JumperGame.new // end of call to JumperGame.new
0; JMP
(RETURN-JumperGame.new2)
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
@RETURN-JumperGame.run5 // C_CALL JumperGame.run 1
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
@JumperGame.run // end of call to JumperGame.run
0; JMP
(RETURN-JumperGame.run5)
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
@RETURN-JumperGame.dispose8 // C_CALL JumperGame.dispose 1
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
@JumperGame.dispose // end of call to JumperGame.dispose
0; JMP
(RETURN-JumperGame.dispose8)
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
