<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="Admin.jsp"></jsp:include>
<div class="bg-content">
  <div class="container">
      

<form:form action="EditCategory" method="POST" commandName="EditCategory1">
<div background="black" align="Center">
<h3>Edit a Category</h3>
<br/>
<br/>
      <p>
      	<label>Category Id:</label>
         <form:input type="text" path="cid" readonly="true"/>
      </p>

      <p><label>Category Name::</label>
         <form:input type="text" path="cname"/>
      </p>

      <p><label > Category Description:</label>
         <form:input type="text" path="cdesc"/>
      </p>

      <p><input type="submit" value="Update Catagory"/></p>
    </fieldset>
  </form:form>  
  </div>
  </div>
  </div>    
</div>
</div>  
<jsp:include page="CommonFooter.jsp"></jsp:include>