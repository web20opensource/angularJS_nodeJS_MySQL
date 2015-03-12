function Controller($scope,$http){
	$scope.sede = "CUETZALAN";
	$scope.postData = function(data2){
		//console.log(data);
	/*	for(i in data)
			console.log(i + '->' + data[i]);
		return;
	*/	
			console.log(data2.area);
			$http.post('http://127.0.0.1:55556/?action=postData', data2)
		             .success(function (data) {
		                 console.log(data);
		             }).error(function (data,status, headers,config){
		             	console.log(status)	;
		             	console.log(data)	;
		             	console.log(headers)	;
		             });
	}
/*
	saveArea = function(){
		$scope.data2.area = $scope.data2.data2.SARADAP_PROGRAM_1;
		console.log($scope.data2.area);
	}

	$scope.check = function(){
		console.log($scope.data2.area);

		$scope.watch('data2.SARADAP_PROGRAM_1',saveArea);
	}	
*/
}

