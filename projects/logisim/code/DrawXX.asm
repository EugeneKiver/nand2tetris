// Draw an X on the screen.

// The Screen is 256 rows of 32 words per row.
// Bit 0 in a screen word is the LEFT-MOST display pixel.

// Draw line from Top-Left to Bottom-Right.

	@offset		// offset is the starting pixel value
	M=1

(DRAW_X)
	@SCREEN		// ptr = SCREEN  (Word containing Upper-left pixel).
	D=A
	@ptr
	M=D
	
	@offset		// pix = offset  (starting pixel for this X).
	D=M
	@pix
	M=D
	@PIX_LOOP1
	0;JMP
	
(WORD_LOOP1)
	@pix		// pix = 1  (starting pixel for next column).
	M=1
	
(PIX_LOOP1)
	@pix		// *ptr = pix  (Set the pixel).
	D=M
	@ptr
	A=M
	M=M|D
	
	D=A			// ptr = ptr+32  (ptr value already in A).
	@32			// This moves ptr to the same column in the next row.
	D=D+A
	@ptr
	M=D
	
	@24575		// if (ptr > last screen address) break;
	D=D-A
	@BREAK1
	D;JGT
	
	@pix		// Shift pix left 1 bit.  This will shift the displayed pixel right 1 position.
	D=M
	MD=M+D		// Sets BOTH pix and D = pix+pix.
	
	@PIX_LOOP1	// Draw the next pixel if pix still has a bit set.  (Left shifting 0x8000 
	D;JNE		// results in 0.)
	
	@ptr		// The rightmost pixel in this word column has been set, move ptr one screen word 
	M=M+1		// to the right.
	@WORD_LOOP1
	0;JMP
	
(BREAK1)

// Draw line from Lower-Left to Upper-Right.

	@24544		// ptr = SCREEN+8192-32  (Word containing Lower-Left pixel).
	D=A
	@ptr
	M=D
	
	@offset		// pix = offset  (starting pixel for this X).
	D=M
	@pix
	M=D
	@PIX_LOOP2
	0;JMP
	
(WORD_LOOP2)
	@pix		// pix = 1  (starting pixel for next column).
	M=1
	
(PIX_LOOP2)
	@pix		// *ptr = pix  (Set the pixel).
	D=M
	@ptr
	A=M
	M=M|D		
	
	D=A			// ptr = ptr-32  (ptr value already in A).
	@32			// This moves ptr to the same column in the previous row.
	D=D-A
	@ptr
	M=D
	
	@SCREEN		// if (ptr < first screen address) break;
	D=D-A
	@BREAK2
	D;JLT
	
	@pix		// Shift pix left 1 bit.  This will shift the displayed pixel right 1 position.
	D=M
	MD=M+D		// Sets BOTH pix and D = pix+pix.
	
	@PIX_LOOP2	// Draw the next pixel if pix still has a bit set.  (Left shifting 0x8000 
	D;JNE		// results in 0.)
	
	@ptr		// The rightmost pixel in this word column has been set, move ptr one screen word 
	M=M+1		// to the right.
	@WORD_LOOP2
	0;JMP
	
(BREAK2)
	@offset		// Draw the X again, one pixel to the right.
	D=M
	MD=M+D
	D=M
	MD=M+D
	@DRAW_X
	D;JNE		// Continue until offset overflows.
	
	@HALT
(HALT)
	0;JMP
	
	