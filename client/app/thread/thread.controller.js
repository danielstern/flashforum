'use strict';

angular.module('flashforumApp')
  .controller('ThreadCtrl', function ($scope, $http, socket,Auth,$state,$stateParams) {
    $scope.message = 'Hello';
    $scope.thread = {
    	name:$stateParams.name
    }

    $http.get('/api/things').success(function(awesomeThings) {
      $scope.awesomeThings = awesomeThings;
      console.log("awesomeThings?",awesomeThings);
      socket.syncUpdates('thing', $scope.awesomeThings);
    });

    $scope.addThing = function() {
      if($scope.newThing === '') {
        return;
      }
      $http.post('/api/things', { name: $scope.newThing, owner:Auth.getCurrentUser() });
      $scope.newThing = '';
    };

    $scope.deleteThing = function(thing) {
      $http.delete('/api/things/' + thing._id);
    };

    $scope.$on('$destroy', function () {
      socket.unsyncUpdates('thing');
    });

  });
