// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.
	
	@color
	M=0
	@black
	M=-1
	@white
	M=0
	@8192
	D=A
	@scr
	M=D

(LOOP)
	@black
	D=M
	@color
	M=D
	@KBD
	D=M
	@FILL
	D;JGT
	
	@white
	D=M
	@color
	M=D
//	@FILL
//	0;JMP	

(FILL) // fill screen
	@i
	M=0
(FILLDO)
	@scr //display size
	D=M
	@i
	D=D-M
	@LOOP
	D;JLE
	
	// draw horizontal word
	@i
	D=M
	@SCREEN
	D=D+A
	@loc
	M=D
	@color
	D=M
	@loc
	A=M
	M=D
	
	@i
	D=M+1
	M=D

	@FILLDO
	0;JMP