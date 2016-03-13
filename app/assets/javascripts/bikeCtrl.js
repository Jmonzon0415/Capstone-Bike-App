(function() {
  "use strict";

  angular.module("app").controller("bikeCtrl", function($scope, $http)
  {


   $scope.setup = function() {
      $http.get('/group_rides.json').then(function(response){
        $scope.groupRides = response.data; 
      });
    };

    console.log("Bike Ctrl Test");


  window.scope = $scope;

     

  });
})();



