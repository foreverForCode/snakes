Class {
	#name : #SLSnakeTile,
	#superclass : #SLActiveTile,
	#category : #SnakesAndLadders
}

{ #category : #printing }
SLSnakeTile >> printInsideOn: aStream [ 
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	targetTile position printOn: aStream .
	
	aStream << '<-'.
			
	super printInsideOn: aStream .
]

{ #category : #printing }
SLSnakeTile >> printOn: aStream [ 
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	aStream << '['.
	
	self printInsideOn: aStream .
	
	aStream << ']'.
]
