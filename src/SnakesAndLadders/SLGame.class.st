Class {
	#name : #SLGame,
	#superclass : #Object,
	#instVars : [
		'tileNumber',
		'tiles'
	],
	#category : #SnakesAndLadders
}

{ #category : #adding }
SLGame >> addPlayer: aPlayer [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	aPlayer position: 1.
	
	(tiles at: 1) addPlayer: aPlayer .
]

{ #category : #'as yet unclassified' }
SLGame >> movePlayer: aPlayer distance: aNumber [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	|position targetPosition|
	
	position := aPlayer position .
	
	targetPosition := position + aNumber .
	
	aPlayer position: targetPosition .
	
	(self tileAt: position) removePlayer: aPlayer .
	
	(self tileAt: targetPosition ) addPlayer: aPlayer . 
]

{ #category : #printing }
SLGame >> printOn: aStream [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	tiles do: [ :aTile | aTile printOn: aStream ].
]

{ #category : #accessing }
SLGame >> tileAt: index [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	^ tiles at: index.
]

{ #category : #'as yet unclassified' }
SLGame >> tileFor: aPlayer atDistance: aNumber [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	^ aPlayer position: (aPlayer position + aNumber).
	
	
	
]

{ #category : #accessing }
SLGame >> tileNumber [
	^ tileNumber 
]

{ #category : #accessing }
SLGame >> tileNumber: anObject [
	
	tiles := OrderedCollection new.
	
	1 to: anObject do: [ :each | tiles add: (SLTile new position: each)].
	
	tileNumber := anObject . 
	
]

{ #category : #'as yet unclassified' }
SLGame >> tileOfPlayer: aPlayer [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
		
	^ aPlayer .
			
	
]
