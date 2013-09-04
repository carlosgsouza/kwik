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

		<g:form class="form-horizontal" action="save">
		  <legend>Manage my Address</legend>
		  <div class="control-group">
		    <label class="control-label" for="zip">ZIP</label>
		    <div class="controls">
		      <input ng-change="getAddress()" ng-model="zip" type='text' name='zip' id='zip' autocomplete="on" required />
		      <span ng-hide="valid" class="help-inline">Invalid zip code</span>
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="street">Street</label>
		    <div class="controls">
		      <input ng-model="street"  disabled="disabled" type='text' name='street' id='street' />
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="number">number</label>
		    <div class="controls">
		      <input ng-model="number"  type='text' name='number' id='number' required />
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="city">city</label>
		    <div class="controls">
		      <input ng-model="city" disabled="disabled" type='text' name='city' id='city' />
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="state">state</label>
		    <div class="controls">
		      <input ng-model="state" disabled="disabled" type='text' name='state' id='state' />
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="country">country</label>
		    <div class="controls">
		      <input ng-model="country" disabled="disabled"  type='text' name='country' id='country' />
		    </div>
		  </div>
		  <div class="control-group">
		    <div class="controls">
		      <button ng-disabled="!(zip.length > 0 && street.length > 0 && number.length > 0 && city.length > 0 && state.length > 0 && country.length > 0)" type="submit" class="btn">Save</button>
		    </div>
		  </div>
		</g:form>
	</div>
</div>

</body>
</html>
