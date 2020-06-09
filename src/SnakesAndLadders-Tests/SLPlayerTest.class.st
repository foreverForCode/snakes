"
A SLPlayerTest is a test class for testing the behavior of SLPlayer
"
Class {
	#name : #SLPlayerTest,
	#superclass : #TestCase,
	#category : #'SnakesAndLadders-Tests'
}

{ #category : #test }
SLPlayerTest >> testPosition [

	|game jill|
	
	game := SLGame new tileNumber: 12.
	
	jill := SLPlayer new name: 'jill'.
	
	game addPlayer: jill.
	
	self assert: jill position equals: 1.
]

{ #category : #test }
SLPlayerTest >> testPrintOn [

	|player|
	
	player := SLPlayer new name: 'jill'.
	
	self assert: player printString equals: '<''jill''>'.
]
