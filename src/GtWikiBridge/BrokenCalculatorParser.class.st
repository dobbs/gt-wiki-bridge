Class {
	#name : 'BrokenCalculatorParser',
	#superclass : 'SmaCCParser',
	#category : 'GtWikiBridge',
	#package : 'GtWikiBridge'
}

{ #category : 'generated-accessing' }
BrokenCalculatorParser class >> cacheId [
	^'2026-07-18T18:19:45.94075-06:00'
]

{ #category : 'generated' }
BrokenCalculatorParser class >> definitionComment [
"Start 
	:
	;

<number>        :       [0-9]+ (\. [0-9]*) ? ;
<whitespace>    :       \s+;"
]

{ #category : 'generated' }
BrokenCalculatorParser class >> reduceTable [
^#(
	#(3 0 #reduceFor: 1025 false)
	).
]

{ #category : 'generated' }
BrokenCalculatorParser class >> scannerClass [
	^BrokenCalculatorScanner
]

{ #category : 'generated' }
BrokenCalculatorParser class >> startingStateForStart [
	^ 1
]

{ #category : 'generated' }
BrokenCalculatorParser class >> symbolNames [
	^ #('<whitespace>' 'B e g i n' 'Start' 'E O F' 'error')
]

{ #category : 'generated' }
BrokenCalculatorParser class >> transitionTable [
^#(
#[1 0 9 0 3 0 6 0 4] 
#[0 0 0 0 4]
	).
]
