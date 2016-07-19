(function(){
  "use strict";
 $scope.setOrderBy = function(attribute{
      if (attribute != $scope.orderAttribute){
        $scope.descending = false;
      } else {
         $scope.descending = $scope.descending;
      }

     $scope.orderAttribute = attribute;

    });


 

  