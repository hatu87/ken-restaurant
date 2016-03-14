(function() {
  'use strict';
  angular.module('ken-restaurant', ['truncate']).directive('myRating', function() {
    var directive = {
      restrict: 'E',
      templateUrl: '/assets/directives/rating/rating.directive.html',
      scope: {
        'rating': '=',
        'maxRating': '='
      },
      controller: 'RatingController',
      controllerAs: 'vm',
      bindToController: true
    };
    return directive;
  }).controller('RatingController', ['$scope', function($scope) {
    var self = this;
    self.range = function(number){
      // debugger;
      return new Array(number || 0);
    };
  }]);
})();