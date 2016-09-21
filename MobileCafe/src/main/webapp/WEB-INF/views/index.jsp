
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Mobile Cafe</title>
</head>
<jsp:include page="CommonHeader.jsp"/>


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
        <img src="./resources/first.jpg"  class="img-responsive"  >
      </div>

      <div class="item">
        <img src="./resources/second.jpg"  class="img-responsive" >
      </div>
    
      <div class="item">
        <img src="./resources/third.jpg"  class="img-responsive" >
      </div>

      <div class="item">
        <img src="./resources/fourth.jpg"  class="img-responsive">
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
<h4 align="left"><font color="ffffff">TOP TRENDING</font></h4>
  
 
  <div class="row">
    <div class="col-sm-4">
      <a href="ProductDescription?id=101" class="thumbnail">
        <p>Samsung Galaxy J2(2016)</p>
        <img src="./resources/101.jpg" alt="Pulpit Rock" style="width:230px;height:215px">
    
      </a>
    </div>
    <div class="col-sm-4">
      <a href="ProductDescription?id=104" class="thumbnail">
        <p>Microsoft Lumia 640 XL</p>
        <img src="./resources/104.jpg" alt="Moustiers Sainte Marie" style="width:230px;height:215px">
   
      </a>
    </div>
    <div class="col-sm-4">
      <a href="ProductDescription?id=106" class="thumbnail">
        <p>AsusZenFone(Laser 16GB)</p>
        <img src="./resources/106.jpg" alt="Cinque Terre" style="width:230px;height:215px">
          
      </a>
    </div>
  </div>
</div>

<!-- <div class="container">
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

 -->

<br/><br/>
<jsp:include page="CommonFooter.jsp"></jsp:include>




