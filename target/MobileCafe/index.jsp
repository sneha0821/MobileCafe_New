<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mobile Cafe</title>
</head>
<body style="background-color:#D3D3D3;">
<jsp:include page="WEB-INF/views/CommonHeader.jsp"/>

<div class="container"  >
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" align="center">
      <div class="item active">
        <img src="resources/first.jpg"  >
      </div>

      <div class="item">
        <img src="resources/second.jpg"  >
      </div>
    
      <div class="item">
        <img src="resources/third.jpg"  >
      </div>

      <div class="item">
        <img src="resources/fourth.jpg" >
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left xcarousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div class="container">
<h5 align="left">TOP TRENDING</h5>
  
 
  <div class="row">
    <div class="col-sm-4">
      <a href="resources/Apple.PNG" class="thumbnail">
        <p>Apple Iphone 5S 16GB</p>
        <img src="resources/fifth.jpg" alt="Pulpit Rock" style="width:230px;height:215px">
      </a>
    </div>
    <div class="col-sm-4">
      <a href="resources/samsung.PNG" class="thumbnail">
        <p>Samsung Galaxy J 2 (BLACK)</p>
        <img src="resources/sixth.jpg" alt="Moustiers Sainte Marie" style="width:230px;height:215px">
      </a>
    </div>
    <div class="col-sm-4">
      <a href="resources/samsung2.PNG" class="thumbnail">
        <p>Samsung Galaxy S7 Edge (32 GB)</p>
        <img src="resources/seventh.jpg" alt="Cinque Terre" style="width:230px;height:215px">
      </a>
    </div>
  </div>
</div>

<div class="container">
<h5 align="left">COMING SOON!!!</h5>
  
 
  <div class="row">
    <div class="col-sm-4">
      <a href="pulpitrock.jpg" class="thumbnail">
        <p>Samsung Galaxy Note 7</p>
        <img src="resources/EIGTH.jpg" alt="Pulpit Rock" style="width:230px;height:215px">
      </a>
    </div>
    <div class="col-sm-4">
      <a href="moustiers-sainte-marie.jpg" class="thumbnail">
        <p>Nokia C1</p>
        <img src="resources/NINTH.jpg" alt="Moustiers Sainte Marie" style="width:230px;height:215px">
      </a>
    </div>
    <div class="col-sm-4">
      <a href="cinqueterre.jpg" class="thumbnail">
        <p>Lenovo K80</p>
        <img src="resources/TENTH.jpg" alt="Cinque Terre" style="width:230px;height:215px">
      </a>
    </div>
  </div>
</div>



<br/><br/>
<jsp:include page="WEB-INF/views/CommonFooter.jsp"></jsp:include>




</body>
</html>