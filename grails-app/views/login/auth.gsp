<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
</head>

<body>
<div class="row" ng-app="myApp" ng-controller="LoginController" >
	<div class="span12">
		<form action='${postUrl}' method='POST' id='loginForm' class='form-horizontal' autocomplete='off'>
			<legend>Log in and buy stuff</legend>
			<div class="control-group">
			    <label class="control-label" for="username">Email</label>
			    <div class="controls">
			      <input ng-model="username" type='text' name='j_username' id='username' autocomplete="on"/>
			    </div>
			  </div>

			 <div class="control-group">
			    <label class="control-label" for="password">Password</label>
			    <div class="controls">
			      <input ng-model="password" type='password' name='j_password' id='password' />
			    </div>
			  </div>
			  <div class="control-group">
			    <div class="controls">
			      <button ng-disabled="username.length==0 || password.length==0" type="submit" id="submit" class="btn">Log in</button>
			    </div>
			  </div>
		</form>
	</div>
</div>

<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
