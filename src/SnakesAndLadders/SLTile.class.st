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
	
	|player|
	
	player := SLPlayer new name: aPlayer .
	
	players add: player .
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
			
	players := OrderedCollection  new.
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
	
	players do:  [ :aPlayer | aPlayer printOn: aStream  ].
	
	aStream << ']'.
]
