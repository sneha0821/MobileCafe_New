<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script>
  var prod = ${list};
  
  angular.module('showProduct',[]).controller('ProductController', function($scope)
   {
          $scope.Product=prod;
       
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
    });
</script>
<jsp:include page="Admin.jsp"></jsp:include>
  <div class="container">
  <form:form commandName="Product">
<div class="span12" style="text-align: justify; font-size: large; color:silver;">
 <div ng-app="showProduct" ng-controller="ProductController">
 <br/><br/>
 <div class="row">
Search:<input type=text placeholder="Search" ng-model="searchText"/>
</div>
<div id="headin2"><strong> <h3>Product List </h3></strong></div>

<table width=\"100%\" border=\"0\" id=\"tab\">
<tr><th id=\"td1\">PRODUCT ID</th><th id=\"td2\">PRODUCT NAME</th>
             <th id=\"td3\">PRODUT DESC</th><th id=\"td4\">CATEGORY ID</th><th id=\"td5\">SELLER ID</th><th id=\"td6\">PRODUCT IMAGE</th><th id=\"td7\">PRODUCT QUANTITY</th><th id=\"td8\">PRODUCT PRICE</th><th id=\"td9\">EDIT</th><th id=\"td10\">DELETE</th>
 </tr>
 <tr class="success" ng-repeat="prod in Product|filter:searchText">

 <td>{{prod.pid}}</td><td>{{prod.pname}}</td><td>{{prod.pdesc}}</td><td>{{prod.cid}}</td><td>{{prod.sid}}</td>
 <td><img src="resources/{{prod.pid}}.jpg" height="40"  width="40" align="middle"/></td><td>{{prod.pquan}}</td><td>{{prod.pcost}}</td>
 <td><a href="EditProduct?id={{pid=prod.pid}}">Edit</a></td>
 <td><a href="delProduct?id={{pid=prod.pid}}">Delete</a></td>
 </table>
 </div>
 </div>
 </form:form>
 

<jsp:include page="CommonFooter.jsp"></jsp:include>
