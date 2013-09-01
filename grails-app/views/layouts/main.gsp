<!DOCTYPE html>
<html lang="en" class="no-js" ng-app="myApp">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

		<script type="text/javascript" src="${resource(dir: 'js/lib', file: 'angular.min.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js/lib', file: 'angular-resource.min.js')}"></script>

		<r:require modules="bootstrap"/>
		<script type="text/javascript" src="${resource(dir: 'js/lib', file: 'angular.min.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js/lib', file: 'angular-resource.min.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js', file: 'app.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js', file: 'controllers.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js', file: 'directives.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js', file: 'filters.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js', file: 'services.js')}"></script>

		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div class="navbar navbar-inverse">
		    <div class="navbar-inner">
		      <div class="container">
		        <a class="brand" href="index.html"><!-- <span class="k">k</span>wi<span class="k">k</span> --></a>
		        <ul class="nav">
		          <li><a href="user/create">Sign up</a></li>
			    </ul>
		      </div>
		    </div>
		  </div>
		  
		<g:layoutBody/>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
