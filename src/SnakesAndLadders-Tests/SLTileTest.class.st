"
A SLTileTest is a test class for testing the behavior of SLTile
"
Class {
	#name : #SLTileTest,
	#superclass : #TestCase,
	#category : #'SnakesAndLadders-Tests'
}

{ #category : #test }
SLTileTest >> testPosition [

	|tile|
	
	tile := SLTile new position: 12.
	
	self assert: tile position equals: 12.
]

{ #category : #test }
SLTileTest >> testPrintOn [

	| tile |
	
	tile := SLTile new position: 6.
	
	self assert: tile printString equals: '[6]'.
]
