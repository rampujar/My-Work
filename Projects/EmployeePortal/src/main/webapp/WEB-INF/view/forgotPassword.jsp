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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/css/forgotPassword.css">
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">Employee Portal</a>
	    </div>
	    <div class="navbar-header pull-right">
	      <a class="navbar-brand" href="back">Back</a>
	    </div>
	  </div>
	</nav>

	<div class="container">
		<form:form action="getPassword" modelAttribute="TRAINING_EMPLOYEE" method="POST">
			<div class="col-md-6 col-md-offset-3 loginBox">
				<div class="row text-center header">
						<h3>Forgot Password</h3>
				</div>
					<c:if test="${passwordFlag eq '0'}">
						<div class="input-group alert alert-danger text-center alert-dismissible col-md-10 col-md-offset-1 gap error">
						   The Email ID/ User ID is incorrect
						</div>
					</c:if>
					<c:if test="${passwordFlag eq '1'}">
						<div class="input-group alert alert-success text-center alert-dismissible col-md-10 col-md-offset-1 gap error">
						   Please use this new Password to login
						</div>
					</c:if>
					<div class="input-group col-md-10 col-md-offset-1 gap">
						<form:input type="text" class="form-control" placeholder="User/Employee ID" path="EMPLOYEE_ID" />
					</div>
					<div class="input-group col-md-10 col-md-offset-1 gap">
						<form:input type="text" class="form-control" placeholder="Email ID" path="EMAIL_ID" />
					</div>
					<c:choose>
						<c:when test="${passwordFlag eq '1'}">
							<div class="input-group col-md-10 col-md-offset-1 gap" style="display:none;">
								<form:input type="text" value="${randomPassword}" class="form-control" placeholder="Password" path="PASSWORD" disabled="true" />
							</div>
						</c:when>
						<c:otherwise></c:otherwise>
					</c:choose>
					<div class="col-md-12 col-centered gap alignBtn">
						<button type="submit" class="btn btn-success">Get Password</button>
						<button type="reset" class="btn btn-danger">Reset</button>
					</div>
			</div>
		</form:form>
	</div>
	
	<div class="footer">
	  <p>System Consultant Information India Private Ltd. All Rights Reserved($)</p>
	</div>
</body>
</html>
