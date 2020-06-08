"
A SLGameTest is a test class for testing the behavior of SLGame
"
Class {
	#name : #SLGameTest,
	#superclass : #TestCase,
	#category : #'SnakesAndLadders-Tests'
}

{ #category : #test }
SLGameTest >> testPrintOn [

	| game |
	
	game := SLGame new tileNumber: 2.
	
	self 
	
		assert: game printString equals: '[1][2]'. 
]

{ #category : #test }
SLGameTest >> testTileAt [
	
	|game|
	
	game := SLGame new tileNumber: 12.
	
	self assert: (game tileAt: 6) printString equals: '[6]'
]
