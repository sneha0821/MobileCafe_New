<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="adminheader.jsp"/>
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

<form:form action="AddProduct" method="POST" commandName="Product">


<jsp:include page="Admin.jsp"></jsp:include>
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>PRODUCTS</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_id">PRODUCT ID</label>  
  <div class="col-md-4">
  <form:input path="pid"/>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>  
  <div class="col-md-4">
    <form:input  path="pname"/>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION FR</label>  
  <div class="col-md-4">
  <form:input path="pdescrp"/>
    
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
		<div ng-app="repeatSample1" ng-controller="reapeterController1">
		<p><label for="genre" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Category Id:</label>
         <form:select path="catagoryid">
         	<option ng-repeat="cata in Catagory1" value="{{cata.catagoryid}}">{{cata.catagoryname}}</option>
         </form:select>
        </p>
         <p><label for="genre" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Seller Id:</label>
         <form:select path="sellerid">
         <option ng-repeat="Sell in Seller1" value="{{Sell.sellerid}}">{{Sell.sellername}}</option>
         </form:select>
         </p>
      </div>
    
  </div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_weight">PRODUCT IMAGE</label>  
  <div class="col-md-4">
  <form:input path="pimage"/>
    
  </div>
</div>


<!-- Search input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="stock_critical">PRICE</label>
  <div class="col-md-4">
    <form:input path="pcost"/>
    
  </div>
</div>

<!-- Search input-
<div class="form-group">
  <label class="col-md-4 control-label" for="tutorial">USER MANUAL</label>
  <div class="col-md-4">
    <input id="tutorial" name="tutorial" placeholder="TUTORIAL" class="form-control input-md" required="" type="search">
    
  </div>
</div>-->
    
 <!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">main_image</label>
  <div class="col-md-4">
    <input id="filebutton" name="filebutton" class="input-file" type="file">
  </div>
</div>


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton">Add</label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Add</button>
  </div>
  </div>

</fieldset>
</form:form>

<jsp:include page="CommonFooter.jsp"></jsp:include>