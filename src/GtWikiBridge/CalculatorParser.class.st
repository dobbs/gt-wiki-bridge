Class {
	#name : 'CalculatorParser',
	#superclass : 'SmaCCParser',
	#category : 'GtWikiBridge',
	#package : 'GtWikiBridge'
}

{ #category : 'generated-accessing' }
CalculatorParser class >> cacheId [
	^'2026-07-19T08:16:48.951203-06:00'
]

{ #category : 'generated' }
CalculatorParser class >> definitionComment [
"Start 
	: Expression
	;

<number>        :       [0-9]+ (\. [0-9]*) ? ;
<whitespace>    :       \s+;
Expression 
	: Expression ""+"" Number
	| Number
	;
Number 
	: <number>
	;"
]

{ #category : 'generated' }
CalculatorParser class >> reduceTable [
^#(
	#(7 1 #reduceFor: 155649 false) 
	#(5 1 #reduceFor: 1025 false) 
	#(6 1 #reduceFor: 104450 false) 
	#(6 3 #reduceFor: 104449 false)
	).
]

{ #category : 'generated' }
CalculatorParser class >> scannerClass [
	^CalculatorScanner
]

{ #category : 'generated' }
CalculatorParser class >> startingStateForStart [
	^ 1
]

{ #category : 'generated' }
CalculatorParser class >> symbolNames [
	^ #('"+"' '<number>' '<whitespace>' 'B e g i n' 'Start' 'Expression' 'Number' 'E O F' 'error')
]

{ #category : 'generated' }
CalculatorParser class >> transitionTable [
^#(
#[1 0 9 0 2 0 13 0 5 0 17 0 6 0 21 0 7] 
#[0 0 6 0 1 0 8] 
#[0 0 0 0 8] 
#[1 0 25 0 1 0 10 0 8] 
#[0 0 14 0 1 0 8] 
#[1 0 9 0 2 0 29 0 7] 
#[0 0 18 0 1 0 8]
	).
]
