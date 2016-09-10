
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="Admin.jsp"></jsp:include>

<form:form action="AddSeller" method="POST" commandName="addseller">

  <Label>Seller ID:</Label><form:input path="sid" />
  <br/>
  <br/>
  <label>Seller Name:</label><form:input path="sname" />
  <br/>
 <br/>
<label>Seller EmailId:</label><form:textarea path="semailid" />
<br/>
<br/>
<label>Seller Contact No:</label><form:textarea path="smobno" />
 <br>
<br/>
	<input type="Submit" value="Add"/>
</form:form>

<jsp:include page="CommonFooter.jsp"></jsp:include>