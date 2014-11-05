'use strict';

angular.module('flashforumApp')
  .controller('SettingsCtrl', function ($scope, User, Auth,SocketBase) {
    $scope.errors = {};

    $scope.user = angular.copy(Auth.getCurrentUser());

    $scope.updateUser = function(user) {
      var _user = new SocketBase('api/users/');
      _user.publish(user);
      console.log("updated");
      alert("Your info has been updated");
    }

    $scope.changePassword = function(form) {
      $scope.submitted = true;
      if(form.$valid) {
        Auth.changePassword( $scope.user.oldPassword, $scope.user.newPassword )
        .then( function() {
          $scope.message = 'Password successfully changed.';
        })
        .catch( function() {
          form.password.$setValidity('mongoose', false);
          $scope.errors.other = 'Incorrect password';
          $scope.message = '';
        });
      }
		};
  });
