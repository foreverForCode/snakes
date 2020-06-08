Class {
	#name : #SLTile,
	#superclass : #Object,
	#instVars : [
		'position',
		'players'
	],
	#category : #SnakesAndLadders
}

{ #category : #adding }
SLTile >> addPlayer: aPlayer [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	players add: aPlayer .
]

{ #category : #initialization }
SLTile >> initialize [ 
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	players := Set new.
]

{ #category : #accessing }
SLTile >> players [
	^ players
]

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
