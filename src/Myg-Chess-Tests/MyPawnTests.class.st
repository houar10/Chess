Class {
	#name : 'MyPawnTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTests >> testMoves [
	| pawn squares board |
	board := MyChessBoard empty.
	board at: 'e4' put: (pawn := MyPawn white).

	squares := pawn targetSquares.

	self
		assertCollection: squares
		includesAll:
			(#(e5) collect: [ :name |
				board at: name ])
]

{ #category : 'tests' }
MyPawnTests >> testMovesWithOpponent [
	| pawn squares board |
	board := MyChessBoard empty.

	board at: 'e4' put: (pawn := MyPawn white).
	board at: 'd5' put: MyRook black.

	squares := pawn targetSquares.

	self
		assertCollection: squares
		includes: (board at: 'd5')
]

{ #category : 'tests' }
MyPawnTests >> testPawnCannotCaptureForward [
	| pawn board |
	board := MyChessBoard empty.

	board at: 'e4' put: (pawn := MyPawn white).
	board at: 'e5' put: MyRook black.

	self
		deny: (pawn targetSquares includes: (board at: 'e5'))
]
