<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/themes/css/bootstrap.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/themes/js/jquery.min.js"></script>
</head>
<script type="${pageContext.request.contextPath}/text/javascript"
	src="${pageContext.request.contextPath}/resources/themes/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/themes/css/employeeinformation.css" />
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">Employee Information</a>
	    </div>
	    <div class="navbar-header pull-right">
	    	<span class="navbar-brand"><i class="glyphicon glyphicon-user"></i> Welcome <bold style="color: red;"><c:out value="${sessionScope.sessionEmployee.FIRST_NAME}"/>&nbsp; <c:out value="${sessionScope.sessionEmployee.LAST_NAME}"/></bold></span>
        </div>
	  </div>
	</nav>
	<div class ="container-fluid">
		<a class="btn btn-primary pull-right" target="/logout" href="logout">Logout</a>
	</div>
	<div class="container">
		<table class="table table-striped table-bordered employeeInfo">
		    <tbody>
		      <tr>
		        <td>EMPLOYEE ID</td>
		        <td><c:out value="${sessionScope.sessionEmployee.EMPLOYEE_ID}"/></td>
		      </tr>
		      <tr>
		        <td>FIRST NAME</td>
		        <td><c:out value="${sessionScope.sessionEmployee.FIRST_NAME}"/></td>
		      </tr>
		      <tr>
		        <td>LAST NAME</td>
		        <td><c:out value="${sessionScope.sessionEmployee.LAST_NAME}"/></td>
		      </tr>
		      <tr>
		        <td>EMAIL</td>
		        <td><c:out value="${sessionScope.sessionEmployee.EMAIL_ID}"/></td>
		      </tr>
		      <tr>
		        <td>JOINED AS</td>
		        <td><c:out value="${sessionScope.sessionEmployee.JOINED_AS}"/></td>
		      </tr>
		      <tr>
		        <td>JOINED DATE</td>
		        <td><c:out value="${sessionScope.sessionEmployee.JOINED_DATE}"/></td>
		      </tr>
		      <tr>
		        <td>DOB</td>
		        <td><c:out value="${sessionScope.sessionEmployee.DOB}"/></td>
		      </tr>
		      <tr>
		        <td>EMPLOYEE TEAM</td>
		        <td><c:out value="${sessionScope.sessionEmployee.EMPLOYEE_TEAM}"/></td>
		      </tr>
		      <tr>
		        <td>DESIGNATION</td>
		        <td><c:out value="${sessionScope.sessionEmployee.DESIGNATION}"/></td>
		      </tr>
		    </tbody>
		  </table>
	</div>
	
	<div class="footer">
	  <p>System Consultant Information India Private Ltd. All Rights Reserved($)</p>
	</div>
</body>
</html>
