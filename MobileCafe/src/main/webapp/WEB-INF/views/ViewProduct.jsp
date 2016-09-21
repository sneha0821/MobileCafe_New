<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<!-- <body background=" resources/admin1.jpg">-->
  <div class="container">
  <form:form action="AddProduct" method="POST" commandName="Product">
<div class="span12" style="text-align: justify; font-size: large; color:silver;">
 <div ng-app="showProduct" ng-controller="ProductController">
 <br/><br/>
Search:<input type=text placeholder="Search" ng-model="searchText"/>
<div id="headin2"><strong> <h3 align="center">Product List </h3></strong></div>
<div align="center">
<table bgcolor="#00FF00" width=\"100%\" border=\"0\" id=\"tab\" >
<tr>         <th bgcolor="white" id=\"td1\">PRODUCT ID</th>
			 <th bgcolor="white" id=\"td2\">PRODUCT NAME</th>
             <th id=\"td3\" bgcolor="white">PRODUT DESC</th>
             <th bgcolor="white" id=\"td4\">CATEGORY ID</th>
             <th bgcolor="white" id=\"td5\">SELLER ID</th>
             <th bgcolor="white" id=\"td6\">PRODUCT IMAGE</th>
             <th bgcolor="white" id=\"td7\">PRODUCT QUANTITY</th>
             <th bgcolor="white" id=\"td8\">PRODUCT PRICE</th>
             <th bgcolor="white" id=\"td9\">EDIT</th>
             <th bgcolor="white" id=\"td10\">DELETE</th>
 </tr>
 <tr class="success" ng-repeat="prod in Product|filter:searchText">

 	<td bgcolor="white">{{prod.pid}}</td>
 	<td bgcolor="white">{{prod.pname}}</td>
 	<td bgcolor="white">{{prod.pdesc}}</td>
 	<td bgcolor="white">{{prod.cid}}</td>
 	<td bgcolor="white">{{prod.sid}}</td>
 	<!-- <td bgcolor="white"><img src="resources/{{prod.pid}}.jpg" height="40" width="40" align="middle"/></td>-->
 <td bgcolor="white"><img src="resources/{{prod.pid}}.jpg" height="30" width="30" align="middle"></img></td>
 	
    <td bgcolor="white">{{prod.pquan}}</td><td bgcolor="white">{{prod.pcost}}</td>
 	<td bgcolor="white"><a href="EditProduct?id={{pid=prod.pid}}">Edit</a></td>
 	<td bgcolor="white"><a href="delProduct?id={{pid=prod.pid}}">Delete</a></td>
 
 </tr>
 </table>
 </div>
 </div>
 </div>
 </form:form>
 
</div>

<jsp:include page="CommonFooter.jsp"></jsp:include>
