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
<div class="mui-container">
<h1>Pherver, at your phervice</h1>
</div>
<div class="mui-container">
{{#links}}
	<div>
		<a href="{{link}}">{{name}}</a>
	</div>
	<div class="mui-divider"></div>
{{/links}}
</div>

<div class="mui-container">
Powered by <a href="http://pharo.org/">Pharo</a>, <a href="http://smalltalkhub.com/#!/~zeroflag/Teapot">Teapot</a> and <a href="https://mustache.github.io/">Mustache</a> - Designed using <a hraf="https://www.muicss.com">MUI css</a>.
</div>
</body>
</html>'