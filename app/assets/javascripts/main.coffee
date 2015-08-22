app = angular.module(
  'main',
  [
    'ngRoute',
    'templates',
    'main.controllers',
    'main.services'
  ]
)

angular.module('main.controllers', [])
angular.module('main.services', [])

app.config [
  '$routeProvider',
  ($routeProvider) ->
    $routeProvider.when('/',
      controller: 'BaseCtrl',
      templateUrl: 'base/index.html'
    )
]
