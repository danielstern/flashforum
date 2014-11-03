'use strict';

angular.module('flashforumApp')
  .config(function ($stateProvider) {
    $stateProvider
      .state('thread', {
        url: '/:name',
        templateUrl: 'app/thread/thread.html',
        controller: 'ThreadCtrl'
      });
  });