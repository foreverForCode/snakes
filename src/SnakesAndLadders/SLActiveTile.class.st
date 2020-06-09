Class {
	#name : #SLActiveTile,
	#superclass : #SLAbstractTile,
	#instVars : [
		'targetTile'
	],
	#category : #SnakesAndLadders
}

{ #category : #accessing }
SLActiveTile >> to: aTile [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	
	targetTile := aTile.
]
