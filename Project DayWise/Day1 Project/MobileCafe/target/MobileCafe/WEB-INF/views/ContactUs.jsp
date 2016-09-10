<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="CommonHeader.jsp"></jsp:include>
	<div align="center">
	<h2 class="secondary-title">Our Location</h2>
<div class="contact-info">
<div class="content"><div class="left"><b>Address:</b><br/>
Mobile Cafe<br/>
Admin Office<br/>
<br/>
No.30, Arcot Road, <br/>
Kodambakkam, <br/>
Chennai- 600 024.</div>
<div class="right">
<b>Telephone:</b><br/>
044 - 43 666 666<br/>
<br/>
</div>
</div>
</div>
<h2 class="secondary-title">Contact Form</h2>
<div class="content">
<b>First Name:</b><br/>
<input type="text" name="name" value=""/>
<br/>
<br/>
<b>E-Mail Address:</b><br/>
<input type="text" name="email" value=""/>
<br/>
<br/>
<b>Enquiry:</b><br/>
<textarea name="enquiry" cols="40" rows="10"></textarea>
<br/>
<br/>
<b>Enter the code in the box below:</b><br/>
<input type="text" name="captcha" value=""/>
<br/>
<img src="index.php?route=information/contact/captcha" alt=""/>
</div>
<div class="buttons">
<div class="right"><input type="submit" value="Continue" class="button"/></div>
</div>
</form>
</div>
</div>
</div>
</div>
<br/><br/>
<jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>