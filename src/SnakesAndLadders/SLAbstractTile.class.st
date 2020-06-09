Class {
	#name : #SLAbstractTile,
	#superclass : #Object,
	#instVars : [
		'position'
	],
	#category : #SnakesAndLadders
}

{ #category : #accessing }
SLAbstractTile >> position [
	^ position
]

{ #category : #accessing }
SLAbstractTile >> position: anObject [
	position := anObject
]

{ #category : #printing }
SLAbstractTile >> printInsideOn: aStream [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	position printOn: aStream .
]

{ #category : #printing }
SLAbstractTile >> printOn: aStream [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	aStream << '['.
		
	self printInsideOn: aStream .
	
	aStream << ']'.
]
