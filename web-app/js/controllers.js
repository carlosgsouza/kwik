'use strict';

/* Controllers */


function SignupController($scope) {
	$scope.username = "up";
  	$scope.password = "";
  	$scope.passwordConfirmation = "";
  	
  	$scope.notValid = function() {
  		return true;
  	} 
  		
}

