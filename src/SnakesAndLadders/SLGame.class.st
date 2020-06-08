Class {
	#name : #SLGame,
	#superclass : #Object,
	#instVars : [
		'tileNumber',
		'tiles'
	],
	#category : #SnakesAndLadders
}

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
