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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/css/registration.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/registration.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">Welcome to Employee Portal - Registration Page</a>
	    </div>
	   <div class="navbar-header pull-right">
	    	<span class="navbar-brand"><i class="glyphicon glyphicon-user"></i> Welcome <bold style="color: red;"><c:out value="${sessionScope.sessionEmployee.FIRST_NAME}"/>&nbsp; <c:out value="${sessionScope.sessionEmployee.LAST_NAME}"/></bold></span>
        </div>
	  </div>
	</nav>
	
	<div class ="container-fluid">
		<a class="btn btn-primary pull-right" target="/logout" href="logout">Logout</a>
		&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-warning pull-right" target="managerPage" href="managerPage" style="margin-right:5px;">Back</a>
	</div>
	<c:if test="${insert gt 0}">
		<div class="input-group alert alert-success text-center alert-dismissible col-md-10 col-md-offset-1 gap error">
		   Insertion Successfull
		</div>
	</c:if>
	<c:if test="${insert eq 0}">
		<div class="input-group alert alert-danger text-center alert-dismissible col-md-10 col-md-offset-1 gap error">
		   Employee with this ID already exists
		</div>
	</c:if>
	<div class="container">
		<input type="text" name="contextPath" value="${pageContext.request.contextPath}" hidden="true" id="contextPath" />
		<form:form action="addEmployee" modelAttribute="TRAINING_EMPLOYEE" method="POST" class="registrationForm">
			<div class="row col-md-offset-2">
				<div class="form-group col-md-5 gap">
					<label for="teamLabel">Employee ID</label>
					<form:input path="EMPLOYEE_ID" type="text" name="EMPLOYEE_ID" class="form-control" placeholder="Employee ID" id="EMPLOYEE_ID"/>
				</div>
				 <div class="form-group col-md-5 gap">
					<label for="teamLabel">Password</label>
					<form:input path="PASSWORD"  type="password" name="PASSWORD" class="form-control" placeholder="Password" id="PASSWORD"/>
				</div>
				<div class="form-group col-md-5 gap">
					<label for="teamLabel">First Name</label>
					<form:input path="FIRST_NAME" type="text" name="FIRST_NAME" class="form-control" placeholder="First Name" id="FIRST_NAME"/>
				</div>
				<div class="form-group col-md-5 gap">
					<label for="teamLabel">Last Name</label>
					<form:input path="LAST_NAME" type="text" name="LAST_NAME" class="form-control" placeholder="Last Name" id="LAST_NAME"/>
				</div>
				<div class="form-group col-md-5 gap">
					<label for="teamLabel">Email</label>
					<form:input path="EMAIL_ID" type="text" name="EMAIL_ID" class="form-control" placeholder="Email" id="EMAIL_ID"/>
				</div>
				<div class="form-group col-md-5 gap">
					<label for="teamLabel">Joined As</label>
					<form:input path="JOINED_AS" type="text"  name="JOINED_AS" class="form-control" placeholder="Joined As" id="JOINED_AS"/>
				</div>
			</div>
			<div class="row col-md-offset-2">
				<div class="form-group col-md-5 gap">
					<label for="teamLabel">Joined Date</label>
					<form:input path="JOINED_DATE" type="date" name="JOINED_DATE" class="form-control" placeholder="Joined Date" id="JOINED_DATE"/>
				</div>
				<div class="form-group col-md-5 gap">
					<label for="teamLabel">Date Of Birth</label>
					<form:input path="DOB" type="date" name="DOB" class="form-control" placeholder="Date Of Birth" id="DOB"/>
				</div>
				<div class="form-group col-md-5 gap">
					<label for="teamLabel">Employee Team</label>
					<form:select path="EMPLOYEE_TEAM" value="EMPLOYEE_TEAM" name="EMPLOYEE_TEAM" class="form-control" id="teamSelect">
				    </form:select>
				</div>
				<div class="form-group col-md-5 gap" style="display: none;">
					<label for="teamLabel">Employee Team</label>
					<form:input path="EMPLOYEE_TEAM" type="text" name="EMPLOYEE_TEAM" class="form-control" id="employeeTeamBox" placeholder="Employee Team" />
				</div>
				<div class="form-group col-md-5 gap">
					<label for="teamLabel">Designation</label>
					<form:input path="DESIGNATION" type="text" name="DESIGNATION" class="form-control" placeholder="Designationh"  id = "DESIGNATION"/>
				</div>
			</div>
			<div class="row gap text-center">
				<button id="submit" type="submit" class="btn btn-success">Submit</button>
			</div>
		</form:form>
	</div>
	<div class="footer">
	  <p>System Consultant Information India Private Ltd. All Rights Reserved($)</p>
	</div>
</body>
</html>
