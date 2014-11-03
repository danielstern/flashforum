'use strict';

angular.module('flashforumApp')
  .controller('MainCtrl', function ($scope, $http, socket,Auth,$state) {
    $scope.awesomeThings = [];

    $http.get('/api/threads').success(function(threads) {
      $scope.threads = threads;
      // console.log("threads?",threads);
      socket.syncUpdates('thread', $scope.threads);
    });

    $scope.thread = {
      title: "Which decks do you think will be popular in the PTQ this year?",
      description: "I'm just wondering because my deck cost $400 and I'm concerned my heat may be shut off."
    }



    console.log("user",Auth.getCurrentUser());
    $scope.thread = {

    };
  
    $scope.addThread = function(){
      if(!$scope.thread.name) {
        return;
      }
      $http.post('/api/threads', { name: $scope.thread.name, owner:Auth.getCurrentUser() });
      $state.go('thread',{name:$scope.thread.name});

    }

    $scope.deleteThread = function(thread) {
      $http.delete('/api/threads/' + thread._id);
    };

    $scope.$on('$destroy', function () {
      socket.unsyncUpdates('thread');
    });


  });
