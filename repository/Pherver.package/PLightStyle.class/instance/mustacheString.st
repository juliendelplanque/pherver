accessing
mustacheString
	^ '<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- load MUI -->
    <link href="/css" rel="stylesheet" type="text/css" />
    <script src="/js"></script>
	<title>Pherver</title>
</head>
<body>
<div>
<h1>Pherver, at your phervice</h1>
</div>
<div>
<ul>
{{#links}}
	<div>
		<li><a href="{{link}}">{{name}}</a></li>
	</div>
{{/links}}
</ul>
</div>

<div>
Powered by <a href="http://pharo.org/">Pharo</a>, <a href="http://smalltalkhub.com/#!/~zeroflag/Teapot">Teapot</a> and <a href="https://mustache.github.io/">Mustache</a>.
</div>
</body>
</html>'