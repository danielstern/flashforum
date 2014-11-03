'use strict';

angular.module('flashforumApp')
  .controller('ThreadCtrl', function ($scope,$stateParams) {
    $scope.message = 'Hello';
    $scope.thread = {
    	name:$stateParams.name
    }
  });
