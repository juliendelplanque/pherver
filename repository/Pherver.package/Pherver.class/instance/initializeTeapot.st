initialization
initializeTeapot
	teapot := Teapot on
					GET: '/' -> [ self getRoot ];
					output: (TeaOutput mustacheHtml: self mustacheString);
					GET: '/css' -> [ self css ];
					GET: '/js' -> [ self js ];
					yourself