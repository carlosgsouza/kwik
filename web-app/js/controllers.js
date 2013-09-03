'use strict';

/* Controllers */


function SignupController($scope) {
	$scope.username = "";
  	$scope.password = "";
  	$scope.passwordConfirmation = "";
}

function LoginController($scope) {
	$scope.username = "";
  	$scope.password = "";

	$scope.usernameForgotten = "";
}

function ResetController($scope) {
	$scope.username = "";
}

function AddressController($scope) {
	$scope.zip = "";
	$scope.street = "";
	$scope.number = "";
	$scope.city = "";
	$scope.state = "";
	$scope.country = "";
	
	$scope.getAddress = function() {
		if($scope.zip.length == 5) {
			$scope.street = "cardeal";
		}
	}
}

