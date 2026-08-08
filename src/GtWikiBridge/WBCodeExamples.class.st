Class {
	#name : 'WBCodeExamples',
	#superclass : 'Object',
	#category : 'GtWikiBridge-Example',
	#package : 'GtWikiBridge',
	#tag : 'Example'
}

{ #category : 'accessing' }
WBCodeExamples >> callsOfAsSlug [
	<gtExample>
	^ ((self wikiClient modules collect: [ :m | m at: 'ast' ])
		flatCollect: [ :ast | ast // 'callexpression' ])
		select: [ :it | it expression name value = 'asSlug' ]
]

{ #category : 'accessing' }
WBCodeExamples >> callsOfRequire [
	<gtExample>
	^ ((self wikiClient modules collect: [ :m | m at: 'ast' ])
		flatCollect: [ :ast | ast // 'callexpression' ])
		select: [ :it | it expression name value = 'require' ]
]

{ #category : 'accessing' }
WBCodeExamples >> jQueryPageAssignments [
	<gtExample>
	^ (self wikiClient modules collect: [ :m | m at: 'ast' ])
		flatCollect: [ :ast | (ast // 'assignmentexpression' /@ 'lhs') @ 'name' <- '$page' ]
]

{ #category : 'accessing' }
WBCodeExamples >> modulesThatCallAsSlug [
	<gtExample>
	^ (self wikiClient modules
		select: [ :m | 
			| ast callsOfAsSlug |
			ast := m at: 'ast'.
			callsOfAsSlug := ast // 'callexpression'
					select: [ :it | it expression name value = 'asSlug' ].
			callsOfAsSlug size > 0 ]) collect: [ :m | m at: 'file' ]
]

{ #category : 'accessing' }
WBCodeExamples >> wikiClient [
	<gtExample>
	^ WikiPackage
		fromFile: FileLocator home
				/ 'workspace/gt/gt-wiki-bridge-packages/wiki-client/package.json'
]

{ #category : 'accessing' }
WBCodeExamples >> wikiPackagesFolder [
	<gtExample>
	| folder |
	folder := FileLocator home / 'workspace/gt/gt-wiki-bridge-packages'.
	self assert: (folder / 'wiki-client') exists.
	self assert: (folder / 'wiki-client/lib' allChildrenMatching: '*.js') size equals: 36.
	^ folder
]
