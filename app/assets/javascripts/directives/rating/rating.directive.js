(function() {
  'use strict';
  function MyRating() {
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
  }

  function RatingController() {
    var self = this;
    self.range = function(number) {
      // debugger;
      return new Array(number || 0);
    };
  };
  angular.module('ken-restaurant').directive('myRating', MyRating);
  angular.module('ken-restaurant').controller('RatingController', RatingController);
})();