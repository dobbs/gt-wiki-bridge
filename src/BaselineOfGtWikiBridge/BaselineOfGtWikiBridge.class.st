Class {
	#name : 'BaselineOfGtWikiBridge',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfGtWikiBridge',
	#package : 'BaselineOfGtWikiBridge'
}

{ #category : 'loading' }
BaselineOfGtWikiBridge class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'gt-wiki-bridge' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : 'baseline' }
BaselineOfGtWikiBridge >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GtWikiBridge'
		]
]
