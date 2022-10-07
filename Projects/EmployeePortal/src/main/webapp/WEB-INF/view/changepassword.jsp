<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/css/changepassword.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/changepassword.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">Employee Portal</a>
	    </div>
	  </div>
	</nav>
	<div class ="container-fluid">
		<a class="btn btn-success pull-right" target="back" href="logout">Back</a>
	</div>


	<div class="container">
		<form:form modelAttribute="TRAINING_EMPLOYEE" action="changepassword" method="POST">
			<div class="col-md-6 col-md-offset-3 loginBox">
				<c:if test="${successFlag eq '0'}">
					<div class="input-group alert alert-danger alert-dismissible col-md-10 col-md-offset-1 gap error">
				   		Incorrect User ID.
					</div>
				</c:if>
				<c:if test="${successFlag eq '1'}">
					<div class="input-group alert alert-success alert-dismissible col-md-10 col-md-offset-1 gap error">
					   Password Changed Successfully.
					</div>
				</c:if>
				<div class="row text-center header">
						<h3>Change Password</h3>
				</div>
					<div class="input-group col-md-10 col-md-offset-1 gap">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<form:input id="userID"  type="text" class="form-control" placeholder="User ID" path="EMPLOYEE_ID"/>
					</div>
					<div class="input-group col-md-10 col-md-offset-1 gap">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<form:input id="oldPassword" type="password" class="form-control" placeholder="Old Password" path="PASSWORD"/>
					</div>
					<div class="input-group col-md-10 col-md-offset-1 gap">
						<span class="input-group-addon showPassword"><i class="glyphicon glyphicon-eye-close" id="showwNewPasswd"></i></span>
						<form:input id="newPassword"  type="password" class="form-control" placeholder="New Password" path="NEW_PASSWORD"/>
					</div>
					<div class="input-group col-md-10 col-md-offset-1 gap">
						<span class="input-group-addon showPassword"><i class="glyphicon glyphicon-eye-close" id="showwConfirmPasswd"></i></span>
						<form:input id="confirmPassword"  type="password" class="form-control" placeholder="Confirm Password" path="CONFIRM_PASSWORD"/>
					</div>
					<div class="col-md-12 col-centered gap alignBtn">
						<input type="submit" name="changePwd" id="hiddenChangePwd" hidden="true"/>
						<button type="button" class="btn btn-success" id="changePassword">Change Password</button>
						<button type="button" class="btn btn-danger">Reset</button>
					</div>
			</div>
		</form:form>
	</div>
	
	<div class="footer">
	  <p>System Consultant Information India Private Ltd. All Rights Reserved($)</p>
	</div>
</body>
</html>
