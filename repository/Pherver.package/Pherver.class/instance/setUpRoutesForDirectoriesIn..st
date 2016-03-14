routes-setup
setUpRoutesForDirectoriesIn: aDirectoryFileReference
	aDirectoryFileReference directories do: [ :child |
		teapot GET: (child relativeTo: self directoryToPherve) phervePrint -> [ 
			child isDirectory ifTrue: [ self setUpRoutesForDirectory: child ].
			self getDirectory: child asFileReference ];
		output: (TeaOutput mustacheHtml: self mustacheString) ].