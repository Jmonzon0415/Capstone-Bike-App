(function() {
  "use strict";

  angular.module("app").controller("createCtrl", function($scope, $http)
  {

    var profileId = $scope.profileId; 

   $scope.setup = function() {
      $http.get("/profiles/"+ window.profileId +"/created_rides.json").then(function(response){
        $scope.groupRides = response.data; 
      });
    };



    $scope.sortBy = function(sortAttribute){
      $scope.sortByAttribute = sortAttribute;
      $scope.descending = !$scope.descending;
    
    };      


  window.scope = $scope;

     

  });
})();