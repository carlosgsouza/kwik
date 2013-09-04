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
	$scope.valid = false;
	
	$scope.zip = "";
	$scope.street = "";
	$scope.number = "";
	$scope.city = "";
	$scope.state = "";
	$scope.country = "";
	
	$scope.getAddress = function() {
		$scope.valid = false;
		
		if($scope.zip.length == 8) {
			$http({method: 'GET', url: 'fill/'+$scope.zip}).
			  success(function(data, status, headers, config) {
				  	$scope.valid = true;
				  
				  	$scope.street = data.street;
					$scope.number = "";
					$scope.city = data.city;
					$scope.state = data.state;
					$scope.country = data.country;
			  }).
			  error(function(data, status, headers, config) {
				  $scope.valid = false;
				  console.log("CEP Retrieval didn't work. Status=" + status);
			  });
		} 
	}
}

