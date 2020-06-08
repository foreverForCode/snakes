"
A SLTileTest is a test class for testing the behavior of SLTile
"
Class {
	#name : #SLTileTest,
	#superclass : #TestCase,
	#category : #'SnakesAndLadders-Tests'
}

{ #category : #test }
SLTileTest >> testAddPlayer [

	|tile player|
	
	tile := SLTile new.
	
	tile addPlayer: 'jill'.
	
	player := SLPlayer new name: 'jill'.
	
	Transcript show: tile; show: player.
	
	self assert: (tile includesPlayer: player ).
	
	
]

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
	
	tile addPlayer: 'jill'.
	
	self assert: tile printString equals: '[6<#jill>]'.
]
