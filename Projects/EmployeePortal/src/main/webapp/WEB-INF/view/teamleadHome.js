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
<script type="text/javascript" src="resource/theme/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/css/home.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/teamleadHome.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">Welcome to Employee Portal - Home Page</a>
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
		<input type="text" name="contextPath" value="${pageContext.request.contextPath}" hidden="true" id="contextPath" />
			<div class="col-md-6 col-md-offset-3 loginBox">
				<form:form action="employeeList" modelAttribute="employee" method="POST">
				<div class="row text-center header">
						<h3></h3>
				</div>
				<div class="form-group col-md-10 col-md-offset-1 gap text-center">
					<label for="teamLabel">Team Wise Selection</label>
					<form:select path="EMPLOYEE_TEAM" class="form-control" id="teamSelect">
				    </form:select>
				</div>
				<div class="form-group col-md-10 col-md-offset-1 gap">
					<button type="submit" class="btn btn-primary form-control">Submit</button>
				</div>
				</form:form>
				<form:form action="searchEmployee" modelAttribute="employee" method="POST">
				<div class="form-group col-md-10 col-md-offset-1 gap text-center">
					<label for="teamLabel">Employee ID</label>
					<form:input path="EMPLOYEE_ID" type="text" class="form-control" placeholder="Employee ID" />
				</div>
				<div class="form-group col-md-10 col-md-offset-1 gap">
					<button type="submit" class="btn btn-success form-control">Search</button>
				</div>
				</form:form>
			</div>
	</div>
	<div class="container-fluid">
				<table class="table table-bordered employeeInfo" style="margin-top:10px;">
				<thead>
					<tr>
						<th>Employee ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email ID</th>
						<th>Joined AS</th>
						<th>Joined Date</th>
						<th>DOB</th>
						<th>Employee Teame</th>
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
