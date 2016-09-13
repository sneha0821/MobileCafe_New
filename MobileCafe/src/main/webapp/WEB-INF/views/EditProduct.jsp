<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="Admin.jsp"></jsp:include>
<div class="bg-content">
  <div class="container">
      <div class="span12" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">
<h1>Edit a Product</h1>
<form:form action="EditProduct" method="POST" commandName="EditProduct1">

  <fieldset>
      <legend style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;"></legend>
      <p>
      	<label>Product Id:</label>
         <form:input type="text" path="pid" readonly="true"/>
      </p>

       <p><label for="year" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Product Quantity</label>
         <form:input type="text" path="pquan"/>
      </p>
       <p><label for="year" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Product Price:</label>
         <form:input type="text" path="pcost"/>
      </p>

      <p><input type="submit" value="Update Product"/></p>
    </fieldset>
  </form:form>  
  </div>
  </div>
  </div>    

<jsp:include page="CommonFooter.jsp"></jsp:include>