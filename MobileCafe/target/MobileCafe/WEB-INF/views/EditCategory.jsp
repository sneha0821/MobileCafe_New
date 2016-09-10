<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="Admin.jsp"></jsp:include>
<div class="bg-content">
  <div class="container">
      <div class="span12" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">
<h1>Add a Category</h1>
<form:form action="EditCategory" method="POST" commandName="EditCategory1">

  <fieldset>
      <legend style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Category Information</legend>
      <p>
      	<label>Category Id:</label>
         <form:input type="text" path="cid" readonly="true"/>
      </p>

      <p><label for="genre" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Category Name::</label>
         <form:input type="text" path="cname"/>
      </p>

      <p><label for="year" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Discription:</label>
         <form:input type="text" path="cdesc"/>
      </p>

      <p><input type="submit" value="Update Catagory"/></p>
    </fieldset>
  </form:form>  
  </div>
  </div>
  </div>    

<jsp:include page="CommonFooter.jsp"></jsp:include>