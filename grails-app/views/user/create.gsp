<html>

<head>
	<meta name='layout' content='main'/>
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
	<title>Sign up</title>
</head>

<body>
	<div class="row">
	<div class="span12" ng-app="myApp" ng-controller="SignupController" >
	
		<g:hasErrors bean="${user}">
			<div class='alert alert-error'>
			  <ul>
			   <g:eachError var="err" bean="${user}">
			       <li><g:message error="${err}" /></li>
			   </g:eachError>
			  </ul>
			</div>
		</g:hasErrors>

		<g:form class="form-horizontal" action="save">
		  <div class="control-group">
		    <label class="control-label" for="username">Email</label>
		    <div class="controls">
		      <input ng-model="username" type='text' name='username' id='username' autocomplete="on"/>
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="password">Password</label>
		    <div class="controls">
		      <input ng-model="password" type='password' name='password' id='password' />
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="passwordConfirmation">Password (confirmation)</label>
		    <div class="controls">
		      <input ng-model="passwordConfirmation"  type='password' name='passwordConfirmation' id='passwordConfirmation' />
		    </div>
		  </div>
		  <div class="control-group">
		    <div class="controls">
		      <button ng-disabled="!(username.length > 0 && password.length > 0 && password == passwordConfirmation)" type="submit" class="btn">Sign up</button>
		    </div>
		  </div>
		</g:form>
	</div>
</div>

</body>
</html>
