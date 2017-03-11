// Setup memory mapping
@256
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
// push constant 10
//@10
//D=A
//@SP
//A=M
//M=D
//@SP
//M=M+1
// pop WHERE=LCL SHIFT=0
//@LCL // let's find local address
//D=M
//@0 // local shift
//D=D+A
//@R13
//M=D // Stored LCL address in register
//@SP
//AM=M-1 //SP-- and read address
//D=M // Here's the current stack item
//@R13
//A=M // Where to write data
//M=D // Poped to local + shift

// push WHERE=LCL SHIFT=0
// 1
//@LCL // let's find local address
//D=M
//@0 // local shift
//D=D+A
//@R13
//M=D // Stored LCL address in register
// 2
//@SP
//A=M
//D=M // Here's the current stack item
//@R13
//A=M // Where to write data
//M=D // Poped to local + shift
// 3
//@SP
//M=M+1

// add
@SP
AM=M-1
D=M // topmost value
A=A-1
M=M+D
