'use strict';

describe('Controller: ThreadCtrl', function () {

  // load the controller's module
  beforeEach(module('flashforumApp'));

  var ThreadCtrl, scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    ThreadCtrl = $controller('ThreadCtrl', {
      $scope: scope
    });
  }));

  it('should ...', function () {
    expect(1).toEqual(1);
  });
});
