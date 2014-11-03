'use strict';

angular.module('flashforumApp')
  .controller('SignupCtrl', function ($scope, Auth, $location, $window, $http) {

    $scope.user = {};
    $scope.errors = {};

    $scope.user['name'] = function friendlyName(){
      //var Moniker = require('moniker');
      //console.log(Moniker.choose());
      return "wat";//Moniker.choose();
      ;}();

   

    $scope.register = function(form) {
      $scope.submitted = true;

      if(form.$valid) {
        Auth.createUser({
          name: $scope.user.name,
          email: $scope.user.email //,
          //password: $scope.user.password  //Somewhere there is code that depends on this password. a model, or an authenticator- find it and modify away password req
        })
        .then( function() {
          $http.post("/postEmail/", $scope.user);

          $location.path('/');
        })
        .catch( function(err) {
          err = err.data;
          $scope.errors = {};

          // Update validity of form fields that match the mongoose errors
          angular.forEach(err.errors, function(error, field) {
            form[field].$setValidity('mongoose', false);
            $scope.errors[field] = error.message;
          });
        });
      }
    };

    $scope.loginOauth = function(provider) {
      $window.location.href = '/auth/' + provider;
    };
  });
