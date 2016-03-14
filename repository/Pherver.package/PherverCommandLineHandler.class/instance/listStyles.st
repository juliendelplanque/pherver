actions
listStyles
	self stdout
		<< 'Available styles:';
		lf.
	PherverStyle subclasses do: [ :styleClass |
		self stdout
			<< Character tab;
			<< styleClass styleName;
			<< ' - ';
			<< styleClass styleDescription;
			lf ].
	Smalltalk snapshot: false andQuit: true.