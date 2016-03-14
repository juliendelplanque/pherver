accessing
directoryToPherve: aDirectoryPath
	aDirectoryPath isDirectory ifFalse: [ self error: 'Not a directory.' ].
	directoryToPherve := aDirectoryPath.
	"Reinitialize teapot."
	self stop.
	self initializeTeapot.
	"Set up routes for files/directories."
	self setUpRoutesForDirectory: self directoryToPherve.
