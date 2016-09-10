<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<script>
var prod = ${list};
  angular.module('repeatSample', []).controller('CategoryController', function($scope)
   {
                 $scope.Category=prod;
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
    });
</script>
<jsp:include page="Admin.jsp"></jsp:include>
<div class="bg-content">
  <div class="container">
      <div class="span12" style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">
<h1>Add a Category</h1>
<form:form action="EditCategory" method="GET" commandName="EditCategory">

  <fieldset>
      <legend style="text-align: justify; font-size: medium; font-family: Script MT Bold; color:silver;">Category Information</legend>
      <p>
      	<label>Category Id:</label>
         <form:input type="text" path="cid" readonly="read"/>
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