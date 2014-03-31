AngulaRails.controller "tacoorder", ($scope) ->
	$scope.tacos = []
	$scope.taco = {}
	$scope.fillings = ["beef", "chicken", "fish", "carnitas"]
	$scope.extras = [{name: "sour cream"}, {name: "guac"}, {name: "salsa"}]
	$scope.cheeses = ["no cheese", "normal cheese", "mucho queso", "monterrey jack"]

	$scope.clear = () ->
		$scope.taco = {}
		for extra in $scope.extras
			extras.checked = false

	$scope.getextras = () ->
		extras = []
		for extra in $scope.extras
			if extra.checked == true
				extras.push(extra.name)
		extras

	$scope.addtaco = () ->
		$scope.taco.extras = $scope.getextras()
		$scope.tacos.push($scope.taco)

		$scope.clear()