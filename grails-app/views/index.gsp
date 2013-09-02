<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>KwiK</title>
</head>
<body>
	<div class="hero-unit">
		<h1>KwiK</h1>
		<p>Welcome to KwiK</p>
		<p>
			<sec:ifNotLoggedIn>
				<a href="<g:createLink controller="user" action="create" />" class="btn btn-primary btn-large">Sign up</a>
				<a href="<g:createLink controller="login" action="auth" />" class="btn btn-primary btn-large">Log in</a>
			</sec:ifNotLoggedIn>
			<sec:ifLoggedIn>
				<a href="<g:createLink controller="logout" />" class="btn btn-primary btn-large">Log out</a>
			</sec:ifLoggedIn>
			
		</p>
	</div>
</body>
</html>