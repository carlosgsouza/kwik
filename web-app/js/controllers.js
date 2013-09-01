'use strict';

/* Controllers */


function SignupController($scope) {
	$scope.username = "up";
  	$scope.password = "";
  	$scope.passwordConfirmation = "";
  	
  	$scope.notValid = true;//$scope.username.length > 0; // && $scope.password.length > 0 && $scope.passowrd == $scope.passwordConfirmation;
}

