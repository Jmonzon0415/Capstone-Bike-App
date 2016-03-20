(function() {
  "use strict";


  angular.module("app").controller("showCtrl", function($scope, $http)
  {


   $scope.setup = function() {
      $http.get('/user_group_rides.json').then(function(response){
        $scope.joinedRides = response.data; 
      });
    };


    

   $scope.sortBy = function(sortAttribute){
      $scope.sortByAttribute = sortAttribute;
      $scope.descending = !$scope.descending;
    
    };     


  window.scope = $scope;


   });
})();