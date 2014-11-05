'use strict';

angular.module('flashforumApp')
  .controller('MainCtrl', function ($scope, $http, socket,Auth,$state) {
    $scope.awesomeThings = [];

    $http.get('/api/threads').success(function(threads) {
      $scope.threads = threads;
      socket.syncUpdates('thread', $scope.threads);
    });

    

    $scope.addThread = function(){
      if(!$scope.thread.name) {
        return;
      }
      $scope.thread.shortname = $scope.thread.name.toLowerCase().replace(/[\s_]/g,'-').replace(/[\?\!\(\)\@\$]/g,'');
      $http.post('/api/threads', { name: $scope.thread.name, shortname: $scope.thread.shortname,owner:Auth.getCurrentUser() });
      $state.go('thread',{name:$scope.thread.shortname});
    }

    $scope.deleteThread = function(thread) {
      $http.delete('/api/threads/' + thread._id);
    };

    $scope.$on('$destroy', function () {
      socket.unsyncUpdates('thread');
    });


  });
