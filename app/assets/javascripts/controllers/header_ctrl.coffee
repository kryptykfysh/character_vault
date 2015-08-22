angular.module('main.controllers').controller(
  'HeaderController',
  ['$scope',
  ($scope) ->
    $scope.user = null
    $scope.init = (user_object) ->
      $scope.user = user_object
  ]
)
