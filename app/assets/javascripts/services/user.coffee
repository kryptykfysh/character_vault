angular.module('main.services').factory(
  'Users',
  ['$http',
  ($http) ->
    class User
      constructor: (@id, @first_name, @last_name, @email, @picture_url) ->
  ]
)
