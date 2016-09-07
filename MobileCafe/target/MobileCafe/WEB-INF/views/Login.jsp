<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="CommonHeader.jsp"></jsp:include>
<br/>
<div align="center">
<img  src="resources/eleventh.jpg" width="500" height="200"/>
</div>
<div class="container" style="margin-top:40px">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong> Sign in to continue</strong>
					</div>
					<br/>
					<div align="center">
					<img src="resources/login1.png"/>
					</div>
					<div class="panel-body">
						<form:form action="#" method="POST" commandName="Login">
							<form role="form" >
							<fieldset>
								<div class="row">
									<div class="center-block">
										
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 col-md-10  col-md-offset-1 ">
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span> 
												<input class="form-control" placeholder="Username" name="loginname" type="text" autofocus>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-lock"></i>
												</span>
												<input class="form-control" placeholder="Password" name="password" type="password" value="">
											</div>
										</div>
										<div class="form-group">
											<input style="background-color:#000000" type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in">
										</div>
									</div>
								</div>
							</fieldset>
							</form>
						</form:form>
					</div>
					<div class="panel-footer ">
						Don't have an account! <a href="#" onClick=""> Sign Up Here </a>
					</div>
                </div>
			</div>
		</div>
	</div>
	<jsp:include page="CommonFooter.jsp"></jsp:include>
