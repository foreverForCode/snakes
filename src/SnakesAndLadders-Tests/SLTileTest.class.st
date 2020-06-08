"
A SLTileTest is a test class for testing the behavior of SLTile
"
Class {
	#name : #SLTileTest,
	#superclass : #TestCase,
	#category : #'SnakesAndLadders-Tests'
}

{ #category : #test }
SLTileTest >> testPrintOn [

	| tile |
	
	tile := SLTile new position: 6.
	
	self assert: tile printString equals: '[6]'.
]
