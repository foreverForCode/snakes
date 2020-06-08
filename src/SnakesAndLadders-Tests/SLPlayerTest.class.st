"
A SLPlayerTest is a test class for testing the behavior of SLPlayer
"
Class {
	#name : #SLPlayerTest,
	#superclass : #TestCase,
	#category : #'SnakesAndLadders-Tests'
}

{ #category : #test }
SLPlayerTest >> testPrintOn [

	|player|
	
	player := SLPlayer new name: #jill.
	
	self assert: player printString equals: '<#jill>'.
]
