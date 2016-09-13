<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<script>
var cat = ${catlist};
var sell = ${selllist};
  angular.module('repeatSample1', []).controller('reapeterController1', function($scope)
   {
                 $scope.Catagory1=cat;                
                 $scope.Seller1=sell;
             $scope.sort = function(keyname)
          	 {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          	 }
    });
</script>
<jsp:include page="Admin.jsp"></jsp:include>
<form:form  method="POST" modelAttribute="prdt" enctype="multipart/form-data">


<div align="center">

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Add a Product</legend>
<label>PRODUCT ID</label>
         <form:input type="text" path="pid"/>
      </p>

<!-- Text input-->
<label >PRODUCT NAME</label>
         <form:input type="text" path="pname"/>
      </p>
<!-- Text input-->
<label >PRODUCT DESCRIPTION</label>
         <form:input type="text" path="pdesc"/>
      
</p>
<!-- Select Basic -->

		<div ng-app="repeatSample1" ng-controller="reapeterController1">
		</label>Category Id:</label>
         <form:select path="cid">
         	<option ng-repeat="cata in Catagory1" value="{{cata.cid}}	">{{cata.cname}}</option>
         </form:select>
        <br/>
        <br/>
         <label >Seller Id:</label>
         <form:select path="sid">
         <option ng-repeat="Sell in Seller1" value="{{Sell.sid}}">{{Sell.sname}}</option>
         </form:select>
         <br/><br/>
      
    
  </div>

<!-- Search input-
<div class="form-group">
  <label class="col-md-4 control-label" for="tutorial">USER MANUAL</label>
  <div class="col-md-4">
    <input id="tutorial" name="tutorial" placeholder="TUTORIAL" class="form-control input-md" required="" type="search">
    
  </div>
</div>-->
    
<label>Quantity:</label>
         <form:input type="text" path="pquan"/>
      <br/><br/>
      <label >Price:</label>
         <form:input type="text" path="pcost"/>
      <br/><br/>
      <p>
      <label>Image Upload</label>
      <div align="center">
         <form:input type="file" path="pimage"/>
         </div>
     
      </p>
      <br/><br/>
      <p><input type="submit" value="Add Product"/></p> 
</fieldset>
</form:form>
</div>