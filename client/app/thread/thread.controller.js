'use strict';

angular.module('flashforumApp')
  .controller('ThreadCtrl', function ($scope, $http, socket,Auth,$state,$stateParams) {
    $scope.message = 'Hello';
    // $scope.thread = {
    // 	name:$stateParams.name
    // }

    $http.get('api/threads/'+$stateParams.name).success(function(threads){
    	console.log("threads?",threads);
    	$scope.thread = threads[0];
    })

    $http.get('/api/posts/').success(function(posts) {

      $scope.posts = posts;
      socket.syncUpdates('post', $scope.posts);
    });

    $scope.addPost = function() {
      if($scope.newThing === '') {
        return;
      }
      $http.post('/api/posts', { name: $scope.newThing, owner:Auth.getCurrentUser(), thread:$scope.thread });
      $scope.newThing = '';
    };

    $scope.deleteThing = function(thing) {
      $http.delete('/api/posts/' + thing._id);
    };

    $scope.$on('$destroy', function () {
      socket.unsyncUpdates('thing');
    });

  });
