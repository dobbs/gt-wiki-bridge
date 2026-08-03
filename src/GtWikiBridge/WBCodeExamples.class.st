Class {
	#name : 'WBCodeExamples',
	#superclass : 'Object',
	#category : 'GtWikiBridge-Example',
	#package : 'GtWikiBridge',
	#tag : 'Example'
}

{ #category : 'accessing' }
WBCodeExamples >> wikiPackagesFolder [
	<gtExample>
	| folder |
	folder := FileLocator home / 'workspace/gt/gt-wiki-bridge-packages'.
	self assert: (folder / 'wiki-client') exists.
	self assert: (folder / 'wiki-client/lib' allChildrenMatching: '*.js') size equals: 36.
	^ folder
]
