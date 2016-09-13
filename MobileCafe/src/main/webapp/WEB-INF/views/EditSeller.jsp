<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<jsp:include page="Admin.jsp"></jsp:include>
<div class="bg-content">
  <div class="container">
      <div class="span12" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">
<h1>Add a Category</h1>
<form:form action="EditSeller" method="POST" commandName="EditSeller1">

  <fieldset>
      <legend style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Category Information</legend>
      <p>
      	<label>Seller Id:</label>
         <form:input type="text" path="sid" readonly="read"/>
      </p>

      <p><label for="genre" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Seller Name::</label>
         <form:input type="text" path="sname"/>
      </p>

      <p><label for="year" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Seller EmailID:</label>
         <form:input type="text" path="semailid"/>
         
               <p><label for="year" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Seller MobileNum:</label>
         <form:input type="text" path="smobno"/>
      </p>

      <p><input type="submit" value="Update Catagory"/></p>
    </fieldset>
  </form:form>  
  </div>
  </div>
  </div>    

<jsp:include page="CommonFooter.jsp"></jsp:include>