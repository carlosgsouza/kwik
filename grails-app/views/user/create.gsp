<html>

<head>
	<meta name='layout' content='main'/>
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
	<title>Sign up</title>
</head>

<body>
	<div class="row">
	<div class="span6" ng-app="myApp" ng-controller="SignupController" >
		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>
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
		      <input type='password' name='passwordConfirmation' id='passwordConfirmation' />
		    </div>
		  </div>
		  <div class="control-group">
		    <div class="controls">
		      <button ng-disabled="{{notValid}}" type="submit" class="btn">Sign up</button>
		    </div>
		  </div>
		</g:form>
	</div>
</div>

</body>
</html>
