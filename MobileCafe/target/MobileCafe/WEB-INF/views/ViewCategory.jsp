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
<!-- <body background=" resources/admin1.jpg">-->
  <div class="container">
<div class="span12" style="text-align: justify; font-size: large; color:silver;">
 <div ng-app="showProduct" ng-controller="CategoryController">
 <br/><br/>
 <div class="row">
Search:<input type=text placeholder="Search" ng-model="searchText"/>
</div>
<div id="headin2"><strong> <h3 align="center">Category List </h3></strong></div>
<div align="center">
<table width=\"100%\" border=\"0\" id=\"tab\">
<tr><th bgcolor="white" id=\"td1\">CATEGORY ID</th><th bgcolor="white" id=\"td2\">CATEGORY NAME</th>
              <th bgcolor="white" id=\"td3\" bgcolor="white">DESCRIPTION</th><th id=\"td4\" bgcolor="white">EDIT</th><th bgcolor="white" id=\"td5\">DELETE</th>
 </tr>
 <tr class="success" ng-repeat="cat in Category|filter:searchText">
 <td bgcolor="white">{{cat.cid}}</td><td bgcolor="white">{{cat.cname}}</td><td bgcolor="white">{{cat.cdesc}}</td>
 <td bgcolor="white"><a href="EditCategory?id={{cid=cat.cid}}" name="edit" value="Edit">Edit</a></td>
<td bgcolor="white"><a href="delCategory?id={{cid=cat.cid}}" value="Delete" name="delete" >Delete</a>]</td></tr>
</table>
</div>
</div>
</div>
</div>

<jsp:include page="CommonFooter.jsp"></jsp:include>
