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

function AddressController($scope, $http) {
	$scope.zip = "";
	$scope.street = "";
	$scope.number = "";
	$scope.city = "";
	$scope.state = "";
	$scope.country = "";
	
	$scope.getAddress = function() {
		if($scope.zip.length == 8) {
			$http({method: 'GET', url: 'fill/'+$scope.zip}).
			  success(function(data, status, headers, config) {
				  	$scope.street = data.logradouro;
					$scope.number = "";
					$scope.city = data.cidade;
					$scope.state = data.estado;
					$scope.country = "Brasil";
			  }).
			  error(function(data, status, headers, config) {
				  console.log("CEP Retrieval didn't work. Status=" + status);
			  });
		}
	}
}

