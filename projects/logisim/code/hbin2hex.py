# By @tungsten
#  user 496882 on 
#  http://nand2tetris-questions-and-answers-forum

# Warning, file specified in 'outputFilePath' will be overwritten

inputFilePath = 'Jumper.hack'
outputFilePath = 'Jumper.hex'

def bin16tohex( x ):

	b = '0b' + x
	h = hex( int( b, 2 ) )
	return h[2:].zfill(4)

def genVMFile( inputFilePath, outputFilePath ):

	# Read
	with open( inputFilePath, 'r' ) as inputFile,\
	     open( outputFilePath, 'w' ) as outputFile:

		outputFile.write( 'v2.0 raw\n' ) # header

		for line in inputFile:

			outputFile.write( bin16tohex( line ) + '\n' )

	print( 'Done' )

genVMFile( inputFilePath, outputFilePath )