angular.module('main.controllers').controller(
  'BaseCtrl',
  ['$scope', '$http', '$routeParams',
  ($scope, $http, $routeParams) ->
    $scope.thing = 'Thing!'
  ]
)
