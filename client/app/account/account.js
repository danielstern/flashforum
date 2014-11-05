'use strict';

angular.module('flashforumApp')
  .config(function ($stateProvider) {
    $stateProvider
      .state('login', {
        url: '/login',
        templateUrl: 'app/account/login/login.html',
        controller: 'LoginCtrl'
      })
      .state('signup', {
        url: '/signup',
        templateUrl: 'app/account/signup/signup.html',
        controller: 'SignupCtrl'
      })
      .state('settings', {
        url: '/settings',
        templateUrl: 'app/account/settings/settings.html',
        controller: 'SettingsCtrl',
        authenticate: true
      })
      .state('password', {
        url: '/send-password',
        // templateUrl: 'app/account/settings/settings.html',
        template: "Your password has been reset and a temporary password has been sent to your email address.",
        controller: function(Auth,$http){
          $http.post("api/users/resetPassword",Auth.getCurrentUser())
        },
        authenticate: true
      })
  });