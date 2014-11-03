'use strict';

angular.module('flashforumApp')
  .controller('ThreadCtrl', function ($scope, $http, socket,Auth,$state,$stateParams) {

    $http.get('api/threads/'+$stateParams.name).success(function(threads){
      $scope.threads = threads;
      socket.syncUpdates('thread', $scope.threads);
    });

    $scope.$watch("threads",function(threads){
      console.log("thread update...");
      return;
      if (!threads) return;
      var thread = threads[0];
      var timeNow = new Date().getTime();
      if (!$scope.thread || thread.ts > $scope.thread.ts) {
        $scope.thread = thread;
      }
    },true);

    $http.get('/api/posts/thread/'+$stateParams.name).success(function(posts) {
      console.log("Got posts...",posts);      $scope.posts = posts;
      socket.syncUpdates('post', $scope.posts);
    });

    $scope.$watch('thread',function(thread,oldThread){
      if (thread === oldThread) return;
      thread.ts = new Date().getTime();
      $http.patch('api/threads/'+thread._id,thread);
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
