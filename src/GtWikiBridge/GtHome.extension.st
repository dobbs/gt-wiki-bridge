Extension { #name : 'GtHome' }

{ #category : '*GtWikiBridge' }
GtHome >> gtWikiBridgeSection [
	<gtHomeSection>
	^ GtHomeStartPageSection new
		title: 'Wiki Bridge';
		description: 'connecting GToolkit and Wiki';
		databaseName: 'dobbs/gt-wiki-bridge/lepiter';
		startPageName: 'Hello World!';
		priority: 8		
]
