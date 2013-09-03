<html>

<head>
	<meta name='layout' content='main'/>
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
	<title>Sign up</title>
</head>

<body ng-init="${address}">
	<div class="row">
	<div class="span12" ng-app="myApp" ng-controller="AddressController" >
	
		<g:hasErrors bean="${address}">
			<div class='alert alert-error'>
			  <ul>
			   <g:eachError var="err" bean="${user}">
			       <li><g:message error="${err}" /></li>
			   </g:eachError>
			  </ul>
			</div>
		</g:hasErrors>
	</div>
</div>

</body>
</html>
