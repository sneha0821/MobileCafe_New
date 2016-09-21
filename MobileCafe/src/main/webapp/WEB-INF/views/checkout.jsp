
<jsp:include page="CommonHeader.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script>
var prod = ${cart};
var prod1=${userdetails};
  angular.module('repeatSample', []).controller('SellerController', function($scope)
   {
                 $scope.Sellers=prod;
                 $scope.User=prod1;
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
    });
</script>
 
<div class="container" style="min-height: 700px;">
<article class="span6">
<div ng-app="repeatSample" ng-controller="SellerController">
<table style="border-color: black; border-style: solid; border-width: 2; color: white;">
	<tr style="text-align: center;">
		<td><h4><font color="#ffffff">Final Order Details</font></h4></td>
	</tr>
	<tr >
		<td>
			<table>
  				<tr ng-repeat="Seller in Sellers">
						<td>
        	            	<img src="resources/{{Seller.pid}}.jpg" alt="error" height="100" width="100"/>            	        	
    					</td>
    					<td>
    						<span><font color="#ffffff">Name: {{Seller.pname}}</font></span>
        	            	<span><font color="#ffffff">Id: {{Seller.pid}}<font color="#ffffff"></span>
						</td>
				</tr>
			</table>
    	</td>
    </tr>
	<tr>
		<td style="text-align: center;">
			<h5><font color="#ffffff">Shipping Address</font></h5>
		</td>
	</tr>
	<tr>
	<td>
			<div>
						<span><font color="#ffffff">Name:{{User.name}}</font></span><br/>
						<span><font color="#ffffff">Address:{{User.Address}}</font></span><br/>
						<span><font color="#ffffff">PhoneNo.:{{User.number}}</font></span><br/>
						<span><font color="#ffffff">EmailId:{{User.email}}</font></span><br/>
			</div>
	</td>
	</tr>
	<tr>
		<td>
				<a class="big_button" id="complete" href="#"><br/><font color="#ffffff">Complete Order</font></a>
				<span class="sub"><br/>By selecting this button you agree to the purchase and subsequent payment for this order.<br/><br/></span> 
		</td>
	</tr>
	<tr>
		<td><a href="payment" style="background-color:#000000" class="btn btn-success btn-block">Proceed To Payment <i class="fa fa-angle-right"></i></a></td>
	</tr>
	<tr>
		<td><a href="cart" style="background-color:#000000" class="btn btn-success btn-block">Back To Cart <i class="fa fa-angle-right"></i></a></td>
	</tr>
</table></div></article></div>

<jsp:include page="CommonFooter.jsp"></jsp:include>