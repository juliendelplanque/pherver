activation
activate
	self activateHelp
		ifTrue: [ ^ self ].
	
	(self arguments first = 'styles')
		ifTrue: [ ^ self listStyles ].
	
	self arguments first asFileReference exists
		ifFalse: [ 
			self printHelp.
			^ self exitFailure: 'Argument is not a file path.'  ].

	(self hasOption: 'port') ifTrue: [ port := (self optionAt: 'port') asInteger ].
	(self hasOption: 'style')
		ifTrue: [ 
			PherverStyle subclasses
				detect: [ :styleClass | styleClass styleName = (self optionAt: 'style') ]
				ifFound: [ :styleClass | style := styleClass new ] ].
	
	self startPherver