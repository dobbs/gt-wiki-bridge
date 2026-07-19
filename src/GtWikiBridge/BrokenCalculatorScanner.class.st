Class {
	#name : 'BrokenCalculatorScanner',
	#superclass : 'SmaCCScanner',
	#category : 'GtWikiBridge',
	#package : 'GtWikiBridge'
}

{ #category : 'generated' }
BrokenCalculatorScanner >> emptySymbolTokenId [
	^ 4
]

{ #category : 'generated' }
BrokenCalculatorScanner >> errorTokenId [
	^ 5
]

{ #category : 'generated' }
BrokenCalculatorScanner >> scanForToken [
	self step.
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(1).
			self step.
			currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
BrokenCalculatorScanner >> tokenActions [
	^ #(#whitespace)
]
