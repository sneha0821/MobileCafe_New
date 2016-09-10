<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin_View Mobile Cafe</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">		
<style>
.input[type=text] {
    width: 50px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

/* When the input field gets focus, change its width to 100% */
input[type=text]:focus {
    width: 50%;
}
</style>
</head>

<body background="#FFD700">

  <div class="container">
  <div>
  
</div>
<div class="row" align="right">
    
 <a href="Login">
 <button type="button" style="background-color:#000000; color:#FFFFFF" class="btn btn-default btn-xs" >Login</button></a>
 <a href="Register">
 <button type="button" style="background-color:#000000; color:#FFFFFF" class="btn btn-default btn-xs" >Register</button></a>      
  
<a class="fa fa-facebook-square"style="font-size:25px;color:black"  href="https://www.facebook.com" target="_blank"></a>
<a href="https://twitter.com/" style="font-size:25px;color:black"  class="fa fa-twitter" target="_blank"></a> 
<a href="https://www.google.com/"  style="font-size:25px;color:black" class="fa fa-google-plus-square" target="_blank"></a>
<img align="left" src="resources/mobilecafe.PNG" width="350" height="100"/>
</div>
<div align="right">


</div>
<br/>
</div>	
 
<div class="row" align="left" style="background-color:rgb(128,128,128)">
		
		<div>
		 
		
</div>
  </div>
  

			
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
 
    <ul class="nav navbar-nav">
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="">Add</a></li>
          <li><a href="#">View</a></li>
        </ul>
      </li>
        
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddCategory">Add</a></li>
          <li><a href="ViewCategory">View</a></li>
        </ul>

 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Seller <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddSeller">Add</a></li>
          
          <li><a href="ViewSupplier">View</a></li>
        </ul>
      </li>
      
 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">UserInfo <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">View</a></li>
        </ul>
      </li>
  </div>
</nav>
</div>
</body>
</html>


