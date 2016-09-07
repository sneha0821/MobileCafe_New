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
<div class="container">
        <div class="row centered-form">	
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up <small>It's free!</small></h3>
			 			</div>
			 			<div class="panel-body">
			 			<form:form action="#" method="GET" commandName="Register">
			    		<form role="form" >
			    		<div class="row">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="name" id="name" class="form-control input-sm" required placeholder=" Name">
			    					</div>
			    				</div>
			    				</div>
			    			
			    				<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="user_name" id="user_name"  class="form-control input-sm" required placeholder="User Name">
			    					</div>
			    				</div>
			    				</div>
			    			
								<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text"  pattern="[0-9]" name="mobile_no" id="mobile_no"  required class="form-control input-sm" placeholder="Mobile No">
			    					</div>
			    				</div>
			    				
			    				</div>
			    				
			    				</div>
			    				</div>
			    			
			    			<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control input-sm" required placeholder="Email Address">
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input pattern=".{5,10}" required title="5 to 10 characters" type="password" name="password" id="password" min="5" max="10" class="form-control input-sm" required placeholder="Password">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input pattern=".{5,10}" required title="5 to 10 characters" type="password" name="password_confirmation" id="password_confirmation" required class="form-control input-sm" placeholder="Confirm Password">
			    					</div>
			    				</div>
			    			</div>
			    		
			    			<input onclick="return Validate()" style="background-color:#000000" type="submit" value="Register" class="btn btn-info btn-block">
			    			 </form>
			    				</form:form>
			    		
			    	
			    	</div>
	    		</div>
    		</div>
    		</div>
    
    		<br/>
        	<jsp:include page="CommonFooter.jsp"></jsp:include>