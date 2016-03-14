routes-setup
setUpRoutesForFilesIn: aFileReference
	aFileReference files do: [ :child |
		teapot
			GET: (child relativeTo: self directoryToPherve) phervePrint -> [ child asFileReference readStream binary ];
			output: #stream ].