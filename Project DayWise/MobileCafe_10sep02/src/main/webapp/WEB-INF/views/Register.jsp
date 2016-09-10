<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="CommonHeader.jsp"></jsp:include>
<div align="center">
<img  src="resources/eleventh.jpg" width="500" height="200"/>
</div>
<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("password_confirmation").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
<br/>
<div class="container" style="margin-top:80px" margin-bottom="100px">

        <div class="row centered-form">	
        <div class="col-xs-12 col-sm-12 col-md-5 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up <small>It's free!</small></h3>
			 			</div>
			 			<div class="panel-body">
			 			<form:form action="Register" method="GET" commandName="Register">
			    		<form role="form" >
			    		<div class="row">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			          Name:      <form:input type="text" path="name"/>
			    					</div>
			    				</div>
			    				</div>
			    			
			    				<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    				UserName:		<form:input type="text" path="uname"/>
			    					</div>
			    				</div>
			    				</div>
			    			
								<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					Mobile Num:	<form:input type="text" path="mobno" pattern="[0-9]"   />
			    					</div>
			    				</div>
			    				
			    				</div>
			    				
			    				</div>
			    				</div>
			    			
			    			<div class="form-group">
			    				Email Id:<form:input type="email" path="email" />
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						Password:<form:input pattern=".{5,10}" path="pwd"  min="5" max="10" />
			    					</div>
			    				</div>
			    				
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    					Confirm Password:<form:input height="40"  width="60" pattern=".{5,10}" path="cpwd" title="5 to 10 characters"  />
			    					</div>
			    				</div>
			    			
			    		
			    			<input onclick="return Validate()" style="background-color:#000000" type="submit" value="Register" class="btn btn-info btn-block"/>
			    			</form>
			    			</form:form>
			    			
			    			
			    		
			    	
			    	
			    	</div>
			    	</div>
			    	</div>
	    		</div>
	    		
    		</div>
    		
    
    		<br/>
        	<jsp:include page="CommonFooter.jsp"></jsp:include>