'use strict';

angular.module('flashforumApp')
  .controller('MainCtrl', function ($scope, $http, socket,Auth) {
    $scope.awesomeThings = [];

    $scope.thread = {
      title: "Which decks do you think will be popular in the PTQ this year?",
      description: "I'm just wondering because my deck cost $400 and I'm concerned my heat may be shut off."
    }

    $http.get('/api/things').success(function(awesomeThings) {
      $scope.awesomeThings = awesomeThings;
      console.log("awesomeThings?",awesomeThings);
      socket.syncUpdates('thing', $scope.awesomeThings);
    });

    console.log("user",Auth.getCurrentUser());

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
