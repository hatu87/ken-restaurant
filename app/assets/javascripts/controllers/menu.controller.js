(function() {
  'use strict';
  angular.module('ken-restaurant', ['truncate']).controller('MenuController', ['$scope', 'FoodService', function($scope, FoodService) {
    $scope.name = 'ken';
    $scope.foods = [];
    $scope.selectedSectionId = 0;
    $scope.selectedSortMode = 0;
    $scope.getFoodsBySection = function(sectionId) {
      $scope.selectedSectionId = sectionId;
      console.log('getting foods by section ' + sectionId);
      FoodService.getFoodsBySection(sectionId).success(function(data) {
        console.log(data);
        $scope.foods = data;
      }).error(function(error) {
        console.log(error);
      });
    };
    $scope.selectedFood = {};
    $scope.selectFood = function(selectedIndex) {
      console.log('rendering selected food ' + selectedIndex);
      // debugger;
      $scope.selectedFood = $scope.foods[selectedIndex];
    };
    $scope.rating = 4;
    $scope.maxRating = 5;
    $scope.range = function(number) {
      return new Array(number);
    }
    $scope.sortFoods = function(sortMode) {
      $scope.selectedSortMode = sortMode;
      FoodService.searchFoods($scope.selectedSectionId, sortMode).success(function(data) {
        console.log(data);
        $scope.foods = data;
      }).error(function(error) {
        console.log(error);
      });
    }
  }]);
})();