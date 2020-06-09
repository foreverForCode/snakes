Class {
	#name : #SLLadderTile,
	#superclass : #SLActiveTile,
	#category : #SnakesAndLadders
}

{ #category : #printing }
SLLadderTile >> printInsideOn: aStream [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	super printInsideOn: aStream .
	
	aStream << '->'.
	
	targetTile position printOn: aStream .
]

{ #category : #printing }
SLLadderTile >> printOn: aStream [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	aStream << '['.
		
	self printInsideOn: aStream .
	
	aStream << ']'.
]
