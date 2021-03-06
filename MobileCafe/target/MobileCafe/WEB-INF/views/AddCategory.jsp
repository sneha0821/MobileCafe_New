<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

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




    <meta charset="utf-8">
    <meta name="robots" content="noindex">

</head>
        
    <style type="text/css">
   

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
<!-- <body background=" resources/admin1.jpg">-->
		<jsp:include page="Admin.jsp"></jsp:include>
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h3><u></u><font color="white">Add Category</u></font></h3>
	               		
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form:form action="AddCategory" method="POST" commandName="Category">

						
					<!-- <div class="form-group">
							<label>Category ID<label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"></span>
									<form:input type="text"   path="cid"/>
								</div>
							</div>
						</div>-->	
							
							<div class="form-group">
							<label>Category Name<label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i ></i></span>
									<form:input type="text"   path="cname"/>
								</div>
							</div>
						</div>						

						<div class="form-group">
							<label>Category Description<label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i ></i></span>
									<form:input type="text"   path="cdesc"/>
								</div>
							</div>
						</div>			
					

						

						
						
						

						<div class="form-group ">
							<form:button style="background-color:#000000" width="40" height="40" type="submit" class="btn btn-primary btn-lg btn-block login-button">Add</form:button>
						</div>
					
					</form:form>
				</div>
			</div>
		</div>