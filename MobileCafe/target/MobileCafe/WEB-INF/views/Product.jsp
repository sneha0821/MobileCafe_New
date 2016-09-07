<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script>
  var prod = ${list};
  angular.module('addProduct',[]).controller('ProductController', function($scope)
   {
          $scope.Product=prod;
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
    });
</script>
 <jsp:include page="CommonHeader.jsp"></jsp:include>
<div class="container">


<div ng-app="addProduct" ng-controller="ProductController">
<table>
<tr class="success" ng-repeat="Product in Product|filter:test">
     <td><a href="ProductDescription?pid={{product.pid}}">{{Product.pid}}</a></td>
                <td>{{Product.pname}}</td>
                <td>{{Product.pcatgry}}</td>
                <td>{{Product.pcost}}</td>
                <td><img src="/resources/{{Product.pid}}.jpg" height="50px" width="50px"/></td>
</tr>
</table>
</div>

</div>


<jsp:include page="CommonFooter.jsp"></jsp:include>
