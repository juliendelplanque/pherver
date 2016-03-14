GET
getDirectory: aDirectoryFileReference withFather: aBoolean
	| links |
	links := (aDirectoryFileReference children sorted: [ :a :b | a basename < b basename ])
					collect: [ :child |
							{
								'name' -> child basename.
								'link' -> (child relativeTo: self directoryToPherve) phervePrint
							} asDictionary ].
	aBoolean ifTrue: [
		links := { self fatherDirectoryFrom: aDirectoryFileReference } , links ].
	^ { 'links' -> links } asDictionary