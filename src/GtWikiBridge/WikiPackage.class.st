Class {
	#name : 'WikiPackage',
	#superclass : 'Object',
	#instVars : [
		'packageJSON',
		'packageJSONFile',
		'modules'
	],
	#classInstVars : [
		'packageJSON'
	],
	#category : 'GtWikiBridge-Model',
	#package : 'GtWikiBridge',
	#tag : 'Model'
}

{ #category : 'instance creation' }
WikiPackage class >> fromFile: aFile [ 
	^ self new
		packageJSONFile: aFile;
  	yourself
]

{ #category : 'as yet unclassified' }
WikiPackage >> modules [
  ^ modules ifNil: [ modules := (packageJSONFile	parent	/ 'lib' childrenMatching: '*.js') 
  		collect: [ :each | 
		  | contents ast |
		  contents := each readStream contents.
		  ast := JSParser	parse: contents.
			{
		  	'file' -> each .
		  	'ast' -> ast
			} asDictionary]
		]
]

{ #category : 'accessing' }
WikiPackage >> packageJSON [
	^ packageJSON	ifNil: [ packageJSON := (STONJSON fromString: packageJSONFile contents) ]
]

{ #category : 'as yet unclassified' }
WikiPackage >> packageJSONFile [
	^ packageJSONFile
]

{ #category : 'instance creation' }
WikiPackage >> packageJSONFile: aFile [ 
	packageJSONFile := aFile
]
