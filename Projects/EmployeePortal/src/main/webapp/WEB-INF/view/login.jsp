<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/jquery.min.js"></script>
<script type="${pageContext.request.contextPath}/text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/css/login.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/login.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="">WelCome To Employee Portal</a>
	    </div>
	  </div>
	</nav>


	<div class="container">
		<form:form action="login" modelAttribute="TRAINING_EMPLOYEE" method="POST">
			<div class="col-md-6 col-md-offset-3 loginBox">
				<div class="row text-center header">
						<h3>Login Here </h3>
				</div>
					
					<c:if test="${successFlag eq '0'}">
						<div class="input-group alert alert-danger text-center alert-dismissible col-md-10 col-md-offset-1 gap error">
						   Incorrect Username/Password.
						</div>
					</c:if>
					<c:if test="${loginFlag eq '1'}">
						<div class="input-group alert alert-success text-center alert-dismissible col-md-10 col-md-offset-1 gap error">
						   Successfully logged out.
						</div>
					</c:if>
					<div class="input-group col-md-10 col-md-offset-1 gap">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<form:input path="EMPLOYEE_ID" type="text" class="form-control" placeholder="Username" id="EMPLOYEE_ID"/>
					</div>
					<div class="input-group col-md-10 col-md-offset-1 gap">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<form:input  path="PASSWORD" type="password" class="form-control" placeholder="Password" id="PASSWORD"/>
					</div>
					<div class="col-md-12 col-centered gap alignBtn">
						<input type="submit" name="login" id="loginHidden" hidden="true"/>
						<button type="button" id="loginId" class="btn btn-success">Login</button>
						<form:button type="reset" class="btn btn-danger">Reset</form:button>
					</div>
					<div class="col-md-12">
						<div class="col-md-4 pull-right"><a href="forgotPassword" class="link-primary">Forgot Password</a></div>
					</div>
					<div class="col-md-12">
						<div class="col-md-4 pull-right"><a href="changepasswordPage" class="link-primary">Change Password</a></div>
					</div>
			</div>
		</form:form>
	</div>
	
	<div class="footer">
	  <p>System Consultant Information India Private Ltd. All Rights Reserved($)</p>
	</div>
</body>
</html>
