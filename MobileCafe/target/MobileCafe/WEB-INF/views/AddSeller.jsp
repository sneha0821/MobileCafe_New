
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="Admin.jsp"></jsp:include>

<form:form action="AddSeller" method="POST" commandName="AddSeller1">

  <Label>Seller ID:</Label><form:input path="sid" />
  <br/>
  <br/>
  <label>Seller Name:</label><form:input path="sname" />
  <br/>
 <br/>
<label>Seller EmailId:</label><form:input path="semailid" />
<br/>
<br/>
<label>Seller Contact No:</label><form:input path="smobno" />
 <br>
<br/>
	<input type="Submit" value="Add"/>
</form:form>

<jsp:include page="CommonFooter.jsp"></jsp:include>