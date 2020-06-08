Class {
	#name : #SLGame,
	#superclass : #Object,
	#instVars : [
		'tileNumber',
		'tiles'
	],
	#category : #SnakesAndLadders
}

{ #category : #accessing }
SLGame >> tileNumber [
	^ tiles
]

{ #category : #accessing }
SLGame >> tileNumber: anObject [
	tiles := anObject
]
