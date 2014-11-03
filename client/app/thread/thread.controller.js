'use strict';

angular.module('flashforumApp')
  .controller('ThreadCtrl', function ($scope, $http, socket,Auth,$state,$stateParams) {

    $http.get('api/threads/'+$stateParams.name).success(function(threads){
    	// $scope.thread = threads[0];
      $scope.threads = threads;
      socket.syncUpdates('thread', $scope.threads);
    });

    $scope.$watch("threads",function(threads){
      if (!threads) return;
      // console.log("")
      $scope.thread = threads[0];
    },true);

    $http.get('/api/posts/thread/'+$stateParams.name).success(function(posts) {
      console.log("Got posts...",posts);
      $scope.posts = posts;
      socket.syncUpdates('post', $scope.posts);
    });

    $scope.$watch('thread',function(thread){
      console.log("Thread update...",thread);
      if (!thread) return;
      $http.patch('api/threads/'+$scope.thread._id,thread);
      // $http.post('api/threads/',{name:'lol'});
    },true);

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
