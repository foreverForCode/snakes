Class {
	#name : #SLPlayer,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #SnakesAndLadders
}

{ #category : #accessing }
SLPlayer >> name [
	^ name
]

{ #category : #accessing }
SLPlayer >> name: anObject [
	name := anObject
]
