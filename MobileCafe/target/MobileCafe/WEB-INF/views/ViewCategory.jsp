<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script>
  var prod = ${list};
  angular.module('showProduct',[]).controller('CategoryController', function($scope)
   {
          $scope.Category=prod
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
    });
</script>
<jsp:include page="Admin.jsp"></jsp:include>
  <div class="container">
<div class="span12" style="text-align: justify; font-size: large; color:silver;">
 <div ng-app="showProduct" ng-controller="CategoryController">
 <br/><br/>
 <div class="row">
Search:<input type=text placeholder="Search" ng-model="searchText"/>
</div>
<div id="headin2"><strong> <h3>Category List </h3></strong></div>

<table width=\"100%\" border=\"0\" id=\"tab\">
<tr><th id=\"td1\">CATEGORY ID</th><th id=\"td2\">CATEGORY NAME</th>
              <th id=\"td3\">DESCRIPTION</th><th id=\"td4\">EDIT</th><th id=\"td5\">DELETE</th>
 </tr>
 <tr class="success" ng-repeat="cat in Category|filter:searchText">
 <td>{{cat.cid}}</td><td>{{cat.cname}}</td><td>{{cat.cdesc}}</td>
 <td><a href="EditCategory?id={{cid=cat.cid}}" name="edit" value="Edit">Edit</a></td>
<td><a href="delCategory?id={{cid=cat.cid}}" value="Delete" name="delete" >Delete</a>]</td></tr>
</table>
</div>
</div>
</div>

<jsp:include page="CommonFooter.jsp"></jsp:include>
