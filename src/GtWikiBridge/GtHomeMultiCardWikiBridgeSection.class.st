Class {
	#name : 'GtHomeMultiCardWikiBridgeSection',
	#superclass : 'GtHomeMultiCardSection',
	#category : 'GtWikiBridge-Section',
	#package : 'GtWikiBridge',
	#tag : 'Section'
}

{ #category : 'example' }
GtHomeMultiCardWikiBridgeSection >> gtWikiBridgeCard [
	<gtSectionCard>
	<gtExample>
	<noTest>
	^ GtHomeCard lepiterBaseWithTableOfContents
		title: 'Wiki Bridge Pages';
		description: 'Explore the Wiki Bridge knowledge base';
		priority: 10;
		pageName: 'Hello World!';
		databaseName: 'dobbs/gt-wiki-bridge/lepiter';
		details: [ :db | 
			| snippets somePages |
			somePages := db pages select: #shouldAppearInIndexOrDailyNotes.
			snippets := somePages flatCollect: #allChildrenDepthFirst.
			somePages size asString , ' pages | '
				, snippets size asString , ' snippets' ]
				yourself
]

{ #category : 'as yet unclassified' }
GtHomeMultiCardWikiBridgeSection >> sectionTitle [
	^ 'Wiki Bridge'
]
