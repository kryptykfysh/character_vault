app = angular.module(
  'base_app',
  [
    'ngRoute',
    'templates'
  ]
)

app.config [
  '$routeProvider',
  ($routeProvider) ->
    $routeProvider.when('/',
      controller: 'BaseController',
      templateUrl: 'base/index.html'
    ).when('/:something_else',
      controller: 'SomethingElseController',
      templateUrl: 'something_else.html'
    )
]

app.controller(
  'BaseController',
  ['$scope', '$http', '$routeParams'],
  ($scope, $http, $routeParams) ->
    $scope.thing = 'Thing!'
).controller(
  'SomethingElseController',
  ['$scope', '$http', '$routeParams'],
  ($scope, $http, $routeParams) ->
    $scope.other_thing = 'Other Thing!'
)
