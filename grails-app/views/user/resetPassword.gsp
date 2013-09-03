<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
</head>

<body>
<div class="row" ng-app="myApp" ng-controller="ResetController" >
	<div class="span5">
		<form action='resetPassword' method='POST' id='resetForm' class='form-horizontal' autocomplete='off'>
			<legend>Forgot your password?</legend>
			<div class="control-group">
			    <label class="control-label" for="username">Email</label>
			    <div class="controls">
			      <input ng-model="username" type='text' name='username' id='username' autocomplete="on"/>
			    </div>
			  </div>

			  <div class="control-group">
			    <div class="controls">
			      <button ng-disabled="username.length==0" type="submit" id="submit" class="btn">Forgot my password</button>
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
