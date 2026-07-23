Extension { #name : 'GtHomeMultiCardGetStartedSection' }

{ #category : '*GtWikiBridge' }
GtHomeMultiCardGetStartedSection >> gtWikiBridgeCard [
	<gtSectionCard>
	<gtExample>
	<noTest>
	^ GtHomeCard lepiterBaseWithTableOfContents
		title: 'Wiki Bridge';
		priority: 5;
		pageName: 'Wiki Bridge';
		databaseName: 'dobbs/gt-wiki-bridge/lepiter';
		readMoreToolbar;
		details: [ :db | 
			| snippets somePages |
			somePages := db pages select: #shouldAppearInIndexOrDailyNotes.
			snippets := somePages flatCollect: #allChildrenDepthFirst.
			somePages size asString , ' pages | '
				, snippets size asString , ' snippets' ]
				yourself
]
