Class {
	#name : #SLTile,
	#superclass : #Object,
	#instVars : [
		'position'
	],
	#category : #SnakesAndLadders
}

{ #category : #accessing }
SLTile >> position [
	^ position
]

{ #category : #accessing }
SLTile >> position: anObject [
	position := anObject
]

{ #category : #printing }
SLTile >> printOn: aStream [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	aStream << '['.
		
	position printOn: aStream .
	
	aStream << ']'.
]
