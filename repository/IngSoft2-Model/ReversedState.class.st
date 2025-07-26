Class {
	#name : 'ReversedState',
	#superclass : 'CellState',
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'as yet unclassified' }
ReversedState >> applyEffectTo: aShip in: aCell from: aGame [

	aCell applyReversedEffectTo: aShip from: aGame.
]

{ #category : 'as yet unclassified' }
ReversedState >> reversedVersion [ 
	
	^ NormalState new.
]
