"
A SLSnakeTileTest is a test class for testing the behavior of SLSnakeTile
"
Class {
	#name : #SLSnakeTileTest,
	#superclass : #TestCase,
	#category : #'SnakesAndLadders-Tests'
}

{ #category : #test }
SLSnakeTileTest >> testPrintOn [

	|tile|
	
	tile := SLSnakeTile new position: 6 ; to: (SLTile new position: 2).
	
	self assert: tile printString equals: '[2<-6]'.

	
]
