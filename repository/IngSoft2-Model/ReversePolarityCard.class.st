Class {
	#name : 'ReversePolarityCard',
	#superclass : 'Card',
	#instVars : [
		'cell'
	],
	#category : 'IngSoft2-Model',
	#package : 'IngSoft2-Model'
}

{ #category : 'testing' }
ReversePolarityCard >> disableAllianceIn: aGame [
	
	^ self.
]

{ #category : 'testing' }
ReversePolarityCard >> selectedCell: aNumberOfCell of: aGame [

	cell := aGame cellAt: aNumberOfCell.
]

{ #category : 'testing' }
ReversePolarityCard >> transitionState [

	cell transitionToState: (cell currentState) reversedVersion.
]

{ #category : 'testing' }
ReversePolarityCard >> useFrom: aCardOwner to: aCardTarget in: aGame [

	aGame isShipSupposedToPlay: aCardOwner.
	self transitionState.
	aGame eliminate: self from: aCardOwner.
	aGame lastPlayedCardWas: self.
]
