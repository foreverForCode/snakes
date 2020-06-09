Class {
	#name : #SLTile,
	#superclass : #SLAbstractTile,
	#instVars : [
		'players'
	],
	#category : #SnakesAndLadders
}

{ #category : #adding }
SLTile >> addPlayer: aPlayer [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
		
	players add: aPlayer  .
]

{ #category : #testing }
SLTile >> includesPlayer: aPlayer [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	^ players includes: aPlayer .
]

{ #category : #initialization }
SLTile >> initialize [ 
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	players := OrderedCollection new.
]

{ #category : #accessing }
SLTile >> players [
	^ players
]

{ #category : #printing }
SLTile >> printInsideOn: aStream [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	super printInsideOn: aStream .
	
	players do: [ :aPlayer | aPlayer printOn: aStream ].
]

{ #category : #printing }
SLTile >> printOn: aStream [ 
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	aStream << '['.
		
	self printInsideOn: aStream .
	
	aStream << ']'.
]

{ #category : #removing }
SLTile >> removePlayer: aPlayer [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	(players includes: aPlayer)
	
	ifTrue: [ players  remove: aPlayer ].
]
