
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="Admin.jsp"></jsp:include>

<div align="Center">
<h3>Add a Category</h3>
<br/><br/>
<form:form action="AddCategory" method="POST" commandName="Category">

  <Label>Category ID:</Label><form:input path="cid" />
 
  <br/>
  
  <Label>Category Name:</Label><form:input path="cname" />
 
  <br/>
 <br/>

  <Label>Category Description:</Label><form:textarea path="cdesc" />

 <br>
<br/>
	<input type="Submit" value="Add"/>
</form:form>
</div>
<jsp:include page="CommonFooter.jsp"></jsp:include>