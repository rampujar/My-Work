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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/css/employeeList.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/employeeList.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">Welcome to Employee Portal - Employee List</a>
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
	<div class="container-fluid">
				<input type="text" name="contextPath" value="${pageContext.request.contextPath}" hidden="true" id="contextPath" />
				<table id="employees" class="table table-bordered employeeInfo" style="margin-top:10px;">
				<thead>
					<tr>
						<th>Employee ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email ID</th>
						<th>Joined AS</th>
						<th>Joined Date</th>
						<th>DOB</th>
						<th>Employee Team</th>
						<th>Designation</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
			    <tbody>
			      <c:forEach items="${employeeList}" var="item">
				      <tr>
				        <td><c:out value="${item.EMPLOYEE_ID}"/></td>
				        <td><c:out value="${item.FIRST_NAME}"/></td>
				        <td><c:out value="${item.LAST_NAME}"/></td>
				        <td><c:out value="${item.EMAIL_ID}"/></td>
				        <td><c:out value="${item.JOINED_AS}"/></td>
				        <td><c:out value="${item.JOINED_DATE}"/></td>
				        <td><c:out value="${item.DOB}"/></td>
				        <td><c:out value="${item.EMPLOYEE_TEAM}"/></td>
				        <td><c:out value="${item.DESIGNATION}"/></td>
				        <c:if test="${sessionScope.sessionEmployee.DESIGNATION eq 'Manager'}">
			        		<td><a class="btn btn-primary" href="gotToUpdate?employeeID=<c:out value="${item.EMPLOYEE_ID}"/>">Update</a></td>
			        		<td><button class="btn btn-danger deleteEmployee">Delete</button></td>
				      	</c:if>
				      </tr>
			      </c:forEach>
			    </tbody>
		  </table>
	</div>
	<div class="footer">
	  <p>System Consultant Information India Private Ltd. All Rights Reserved($)</p>
	</div>
</body>
</html>
