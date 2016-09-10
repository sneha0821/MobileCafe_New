<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<body style="background-color:#D3D3D3;">
<jsp:include page="CommonHeader.jsp"></jsp:include>
<div align="center">
<img  src="resources/eleventh.jpg" width="500" height="200"/>
</div>
<img src="resources/contact1.jpg" align="right" />
<div class="container" >
<div class="col-md-5"  >
    <div class="form-area" >  
        <form role="form">
        <br style="clear:both">
                    <h3 style="margin-bottom: 25px; text-align: center;">Contact Form</h3>
    				<div class="form-group">
						<input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="mobile" name="mobile" placeholder="Mobile Number" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" required>
					</div>
                    <div class="form-group">
                    <textarea class="form-control" type="textarea" id="message" placeholder="Message" maxlength="140" rows="7"></textarea>
                        <span class="help-block"><p id="characterLeft" class="help-block ">You have reached the limit</p></span>                    
          
                   </div>
         <div align="left">   
         
        <button style="background-color:#000000"  type="button" id="submit" name="submit" class="btn btn-primary center-block">Submit Form</button>
        </div>
        
        </form>
    </div>
</div>
</div>
<br/>
<jsp:include page="CommonFooter.jsp"></jsp:include>
