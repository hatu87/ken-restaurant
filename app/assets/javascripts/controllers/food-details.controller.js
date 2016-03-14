(function() {
  'use strict';
  app.controller('FoodDetailsController', ['$scope', 'FoodService', function($scope, FoodService) {
    $scope.rate = 4;
    $scope.loadComments = function(foodId) {
      $scope.foodId = foodId;
      FoodService.getFoodComments(foodId).success(function(data) {
        console.log(data);
        $scope.comments = data;
        $scope.averageRating = calculateAverageRating();
      }).error(function(error) {
        console.log(error);
      });
    };
    var calculateAverageRating = function() {
      var result = 0;
      for (var i in $scope.comments) {
        // debugger;
        result += $scope.comments[i].rating || 0;
      }
      result = parseInt(result / $scope.comments.length);
      // debugger;
      console.log(result);
      return result;
    }
    $scope.postComment = function() {
        console.log($scope.customer_name + ' - ' + $scope.text);
        FoodService.postFoodComment($scope.foodId, $scope.newComment.customer_name, $scope.newComment.text, $scope.newComment.rating).success(function(data) {
          console.log(data);
          $scope.comments.push(data);
          $scope.averageRating = calculateAverageRating();
          $scope.newComment = {}
        }).error(function(error) {
          console.log(error);
        });
      }
      // $scope.getFoodsBySection = function(sectionId) {
      //   $scope.selectedSectionId = sectionId;
      //   console.log('getting foods by section ' + sectionId);
      //   FoodService.getFoodsBySection(sectionId).success(function(data) {
      //     console.log(data);
      //     $scope.foods = data;
      //   }).error(function(error) {
      //     console.log(error);
      //   });
      // };
      // $scope.selectedFood = {};
      // $scope.selectFood = function(selectedIndex) {
      //   console.log('rendering selected food ' + selectedIndex);
      //   // debugger;
      //   $scope.selectedFood = $scope.foods[selectedIndex];
      // };
      // $scope.rating = 4;
      // $scope.maxRating = 5;
      // $scope.range = function(number){
      //   return new Array(number);
      // }
      // $scope.sortFoods = function(sortMode) {
      //   $scope.selectedSortMode = sortMode;
      //   FoodService.searchFoods($scope.selectedSectionId, sortMode).success(function(data) {
      //     console.log(data);
      //     $scope.foods = data;
      //   }).error(function(error) {
      //     console.log(error);
      //   });
      // }
  }]);
})();