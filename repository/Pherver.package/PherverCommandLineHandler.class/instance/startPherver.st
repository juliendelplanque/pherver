actions
startPherver
	| pherver |
	Pherver style: style.
	pherver := Pherver on: self arguments first asFileReference.
	pherver port: port.
	self pherverLog: 'Starting Pherver'.

	pherver start.
	
	self
		pherverLog: ('Watching {1}.' format: { self arguments first asFileReference pathString });
		pherverLog: ('Listening to http://localhost:{1}/.' format: { pherver port });
		pherverLog: 'Hit Ctrl+C to stop the server.'.