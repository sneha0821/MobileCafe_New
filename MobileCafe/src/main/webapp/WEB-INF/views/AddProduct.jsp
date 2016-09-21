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
<!-- <body background=" resources/admin1.jpg">-->
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>


<script type="text/javascript">
window.alert = function(){};
var defaultCSS = document.getElementById('bootstrap-css');
function changeCSS(css){
    if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
    else $('head > link').filter(':first').replaceWith(defaultCSS); 
}
$( document ).ready(function() {
  var iframe_height = parseInt($('html').height()); 
  window.parent.postMessage( iframe_height, 'http://bootsnipp.com');
});


    function validate()
    {
    	alert("welcome");
    	var pwd=document.getElementById("pwd");
    	var cpwd=document.getElementById("pwd");
    	if(pwd==cpwd)
    		{
    		return true;
    		}
    	else
    		{
    		alert("Password does not match");
    		    		return false;
    		}
    }
    </script>
		


    <meta charset="utf-8">
    <meta name="robots" content="noindex">

        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
   
   <!--body-->
html{
     height: 100%;
 	background-repeat: no-repeat;
 	background-color: #d3d3d3;
 	font-family: 'Oxygen', sans-serif;
}

.main{
 	margin-top: 70px;
}



hr{
	width: 10%;
	color: #fff;
}

.form-group{
	margin-bottom: 15px;
}

label{
	margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
    font-size: 11px;
    padding-top: 3px;
}

.main-login{
 	background-color: #fff;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

}

.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	max-width: 330px;
    padding: 40px 40px;

}

.login-button{
	margin-top: 5px;
}

.login-register{
	font-size: 11px;
	text-align: center;
}

    </style>
 
</head>
<jsp:include page="Admin.jsp"></jsp:include>
		
		<div class="container">
			<div class="row main">
		    <div class="panel-heading">
		   
	               <div class="panel-title text-center">
	               		<h3><u><font color="white">Add Product</font></u></h3>
	               		
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					 <form:form method="POST" modelAttribute="prdt" enctype="multipart/form-data">
						
						<!-- <div class="form-group">
							<label >Product ID</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i aria-hidden="true"></i></span>
									  <form:input type="text" path="pid"  class="form-control" name="name" id="name"  />
								</div>
							</div>
						</div>-->
							
							<div class="form-group">
							<label>Product Name<label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i aria-hidden="true"></i></span>
									<form:input type="text" path="pname" class="form-control" name="uname" id="uname"  />
								</div>
							</div>
						</div>						

						<div class="form-group">
							<label >Product Description</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i aria-hidden="true"></i></span>
									<form:input type="text" path="pdesc" class="form-control" name="email" id="email"  />
								</div>
							</div>
						</div>
						
						<div ng-app="repeatSample1" ng-controller="reapeterController1">
		<label>Category Id:</label>
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
						
                      <%--      	<div class="form-group">
						</label>Category Id:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									<div ng-app="repeatSample1" ng-controller="reapeterController1">
									<form:select path="cid">
         							<option ng-repeat="cata in Catagory1" value="{{cata.cid}}">{{cata.cname}}</option>
         							</form:select>
         							<form:select path="sid">
                                       <option ng-repeat="Sell in Seller1" value="{{Sell.sid}}">{{Sell.sname}}</option>
        							 </form:select>
								</div>
							</div>
						</div>
						

						iv class="form-group">
							<label >Seller Id:</label>  
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									<div ng-app="repeatSample1" ng-controller="reapeterController1">
									 <form:select path="sid">
                                       <option ng-repeat="Sell in Seller1" value="{{Sell.sid}}">{{Sell.sname}}</option>
        							 </form:select>
        							 </div>
								</div>
							</div>
						</div>
 --%>
						<div class="form-group">
							<label >Product Quantity</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									<form:input type="text" path="pquan" class="form-control" name="last_name" id="cpwd" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label >Product Price</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									 <form:input type="text" path="pcost" class="form-control" name="last_name" id="lname" />
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label>Image Upload</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									
     							 <div align="center">
        						  <form:input type="file" path="pimage" class="form-control" name="last_name" id="lname" />
        						 </div>
								</div>
							</div>
						</div>
						

						<div class="form-group ">
							<form:button style="background-color:#000000" type="submit" class="btn btn-primary btn-lg btn-block login-button">Add</form:button>
						</div>
					</div>
				</form:form>
				</div>
			</div>
		</div>
<%-- <div align="center">

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
</div> --%>