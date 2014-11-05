'use strict';

angular.module('flashforumApp')
  .controller('ThreadCtrl', function ($scope, $http, socket,Auth,$state,$stateParams) {

    $http.get('/api/posts/thread/'+$stateParams.name).success(function(posts) {
      $scope.posts = posts;
      socket.syncUpdates('post', $scope.posts);
    });

    $http.get('api/threads/shortname/'+$stateParams.name).success(function(threads){
      $scope.threads = threads;
      console.log("Threads?",threads,$stateParams);

      socket.syncUpdates('thread', $scope.threads);
    });

    $scope.$watch("threads",function(threads){
      console.log("Threads update...");
      if (!threads) return;
      $scope.thread = $scope.threads[0];
    },true);


    $scope.updateThread = function() {
      // console.log("Updating thread...",$scope.thread);
      $http.patch('api/threads/'+$scope.thread._id,$scope.thread);
    }

    $scope.$watch("thread",function(thread){
      if (!thread) return;
      // thread.ts = new Date().getTime();
      $scope.updateThread();   
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
