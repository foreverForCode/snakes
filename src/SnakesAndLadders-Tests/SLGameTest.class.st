"
A SLGameTest is a test class for testing the behavior of SLGame
"
Class {
	#name : #SLGameTest,
	#superclass : #TestCase,
	#category : #'SnakesAndLadders-Tests'
}

{ #category : #test }
SLGameTest >> testAddPlayer [

	|game jill|
	
	game := SLGame new tileNumber: 12.
	
	jill := SLPlayer new name: 'jill'.
	
	game addPlayer: jill.
	
	self assert: ((game tileAt: 1) includesPlayer:  jill).
]

{ #category : #test }
SLGameTest >> testPrintOn [

	| game |
	
	game := SLGame new tileNumber: 2.
	
	self 
	
		assert: game printString equals: '[1][2]'. 
]

{ #category : #tests }
SLGameTest >> testPrintingSimpleGame [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	|game jill jack|
	
	game := SLGame new tileNumber: 2.
	
	jack := SLPlayer new name: 'jack'.
	
	jill := SLPlayer new name: 'jill'.
	
	game addPlayer: jill.
	
	game addPlayer: jack.
	
	self assert: ((game tileAt: 1) includesPlayer: jill).
	
	self assert: ((game tileAt: 1) includesPlayer: jack).
]

{ #category : #test }
SLGameTest >> testTileAt [
	
	|game|
	
	game := SLGame new tileNumber: 12.
	
	self assert: (game tileAt: 6) printString equals: '[6]'
]
