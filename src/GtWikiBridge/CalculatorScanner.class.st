Class {
	#name : 'CalculatorScanner',
	#superclass : 'SmaCCScanner',
	#category : 'GtWikiBridge',
	#package : 'GtWikiBridge'
}

{ #category : 'generated' }
CalculatorScanner >> emptySymbolTokenId [
	^ 8
]

{ #category : 'generated' }
CalculatorScanner >> errorTokenId [
	^ 9
]

{ #category : 'generated' }
CalculatorScanner >> scanForToken [
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(2).
			self step.
			currentCharacter == $.
				ifTrue: [ [ self recordMatch: #(2).
					self step.
					currentCharacter isDigit ] whileTrue.
					^ self reportLastMatch ].
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(3).
			self step.
			currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CalculatorScanner >> tokenActions [
	^ #(nil nil #whitespace)
]
