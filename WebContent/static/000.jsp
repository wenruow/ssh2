<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DisplayTheBooks</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>

<script type="text/javascript">
	var app = angular.module("DisplayApp", []);
	app.controller("DisplayController", function($scope, $http) {
		$scope.detailsBook = function(book) {
			//var id = $scope.book.ID;
			var down = "http://it-ebooks-api.info/v1/book/" + book.ID;
			$http.get(down).success(function(response) {
				$scope.details = response;
				console.log(book.ID);
			})
		}
		$scope.searchBooks = function() {
			var title = $scope.searchByTitle;
			var url = "http://it-ebooks-api.info/v1/search/" + title;

			$http.get(url).success(function(response) {
				//console.log(url);
				$scope.books = response.Books;
			})
		}

	})
</script>
</head>
<body ng-app="DisplayApp">
	<div ng-controller="DisplayController" class="container">
		<h1>Display the books in table</h1>
		<div ng-show="details">
			<h2>Details</h2>
			<div class="row">
				<div class="col-sm-3">
					<img ng-src="{{details.Image}}" />
				</div>
				<div class="col-sm-9">
					<h3>{{details.Title}}</h3>
					<h4>
						<span ng-show="details">--</span>{{details.SubTitle}}
					</h4>
					<p>{{details.Description}}</p>
					<h3>
						<a href="{{details.Download}}"><u>Download</u> </a>
					</h3>
				</div>
			</div>
		</div>

		<table class="table table-striped">
			<tr>
				<th>Poster</th>
				<th>Title</th>
				<th>SubTitle</th>
				<th>isbn</th>
				<th>&nbsp;</th>
			</tr>
			<tr ng-repeat="book in books">
				<td><img class="poster" ng-src="{{book.Image}}" width="50" />
				</td>
				<td>{{book.Title}}</td>
				<td>{{book.SubTitle}}</td>
				<td>{{book.isbn}}</td>
				<td>
					<form action="/ssh1/user/details/" method="post">
						<input class="btn btn-default" type="submit" value="{{book.ID}}" path="id" name="ID">
					</form>
				</td>
			</tr>
		</table>
		<div class="input-group">
			<input type="text" ng-model="searchByTitle" class="form-control"
				placeholder="Search for..."> <span class="input-group-btn">
				<button ng-click="searchBooks()" class="btn btn-default"
					type="button">Go!</button>
			</span>
		</div>
		<!-- /input-group -->
	</div>

</body>
</html>