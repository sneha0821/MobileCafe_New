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
<div id="headin2"><strong> <h3 align="center">Seller Details </h3></strong></div>
<div align="center">
<table width=\"100%\" border=	\"0\" id=\"tab\">
<tr><th  bgcolor="#cccccc" id=\"td1\">SELLER ID</th><th  bgcolor="#cccccc" id=\"td2\">SELLER NAME</th>
              <th  bgcolor="#cccccc" id=\"td3\">SELLER EMAILID</th><th  bgcolor="#cccccc" id=\"td5\">SELLER MOB NUM</th><th  bgcolor="#cccccc" id=\"td5\">EDIT</th><th  bgcolor="#cccccc" id=\"td5\">DELETE</th>
 </tr>
 <tr class="success" ng-repeat="sel in Seller|filter:searchText">
 <td bgcolor="white">{{sel.sid}}</td><td  bgcolor="white">{{sel.sname}}</td><td  bgcolor="white">{{sel.semailid}}</td><td  bgcolor="white">{{sel.smobno}}</td>
 <td  bgcolor="white"><a href="EditSeller?id={{sel.sid}}" name="edit" value="Edit">Edit</a></td>
<td  bgcolor="white"><a href="delSeller?id={{sel.sid}}" value="Delete" name="delete" >Delete</a>]</td></tr>
</table>
</div>
</div>
</div>
</div>
<jsp:include page="CommonFooter.jsp"></jsp:include>
