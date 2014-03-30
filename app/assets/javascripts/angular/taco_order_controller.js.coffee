AngulaRails.controller "tacoorder", ($scope) ->
	$scope.tacos = []
	$scope.taco = {}
	$scope.fillings = ["beef", "chicken", "fish", "carnitas"]

	$scope.clear = () ->
		$scope.taco = {}

	$scope.addtaco = () ->
		$scope.tacos.push($scope.taco)

		$scope.clear()