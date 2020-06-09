"
A SLLadderTileTest is a test class for testing the behavior of SLLadderTile
"
Class {
	#name : #SLLadderTileTest,
	#superclass : #TestCase,
	#category : #'SnakesAndLadders-Tests'
}

{ #category : #test }
SLLadderTileTest >> testPrintOn [

	|tile|
	
	tile:= SLLadderTile new position: 2; to: (SLTile new position: 6).
	
	self assert: tile printString equals: '[2->6]'.
]
