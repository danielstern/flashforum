'use strict';

angular.module('flashforumApp')
  .controller('ThreadCtrl', function ($scope, $http, socket,Auth,$state,$stateParams) {

    $http.get('api/threads/'+$stateParams.name).success(function(threads){
    	$scope.thread = threads[0];
    })

    $http.get('/api/posts/thread/'+$stateParams.name).success(function(posts) {
      console.log("Got posts...",posts);
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

    $scope.deletePost = function(post) {
      $http.delete('/api/posts/' + post._id);
    };

    $scope.$on('$destroy', function () {
      socket.unsyncUpdates('post');
    });

  });
