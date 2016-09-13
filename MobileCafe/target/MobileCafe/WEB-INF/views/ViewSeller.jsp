<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script>
  var sell = ${list};
  angular.module('showSeller',[]).controller('SellerController', function($scope)
   {
          $scope.Seller=sell;
   
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
 <div ng-app="showSeller" ng-controller="SellerController">
 <br/><br/>
 <div class="row">
Search:<input type=text placeholder="Search" ng-model="searchText"/>
</div>
<div id="headin2"><strong> <h3>Seller Details </h3></strong></div>

<table width=\"100%\" border=	\"0\" id=\"tab\">
<tr><th id=\"td1\">SELLER ID</th><th id=\"td2\">SELLER NAME</th>
              <th id=\"td3\">SELLER EMAILID</th><th id=\"td5\">SELLER MOB NUM</th><th id=\"td5\">EDIT</th><th id=\"td5\">DELETE</th>
 </tr>
 <tr class="success" ng-repeat="sel in Seller|filter:searchText">
 <td>{{sel.sid}}</td><td>{{sel.sname}}</td><td>{{sel.semailid}}</td><td>{{sel.smobno}}</td>
 <td><a href="EditSeller?id={{sel.sid}}" name="edit" value="Edit">Edit</a></td>
<td><a href="delSeller?id={{sel.sid}}" value="Delete" name="delete" >Delete</a>]</td></tr>
</table>
</div>
</div>
</div>

<jsp:include page="CommonFooter.jsp"></jsp:include>
