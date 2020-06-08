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

{ #category : #printing }
SLPlayer >> printOn: aStream [ 
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	aStream << '<'.
	
	name printOn: aStream .
	
	aStream << '>'.
]
