helpers
fatherDirectoryFrom: aDirectoryReference
	^ { 'name' -> '..'.
		 'link' -> ((aDirectoryReference / '..') relativeTo: self directoryToPherve) phervePrint } asDictionary