
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="Admin.jsp"></jsp:include>

<form:form action="AddCategory" method="POST" commandName="Category">

  Category ID:<form:input path="cid" />
  <br/>
  <br/>
  Category Name:<form:input path="cname" />
  <br/>
 <br/>
  Category Description:<form:textarea path="cdesc" />
 <br>
<br/>
	<input type="Submit" value="Add"/>
</form:form>

<jsp:include page="CommonFooter.jsp"></jsp:include>