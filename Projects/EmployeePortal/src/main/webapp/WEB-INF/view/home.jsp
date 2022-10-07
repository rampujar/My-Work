<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/jquery.min.js"></script>
<script type="${pageContext.request.contextPath}/text/javascript" src="${pageContext.request.contextPath}/resources/themes/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/themes/css/home.css" />
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">Welcome to Employee Portal - Home Page</a>
	    </div>
	    <div class="navbar-header pull-right">
	    	<span class="navbar-brand"><i class="glyphicon glyphicon-user"></i> Welcome Ram</span>
        </div>
	  </div>
	</nav>
	<div class ="container-fluid">
		<button type="button" class="pull-right btn btn-primary">Logout</button>
	</div>
	<div class="container">
		<form>
			<div class="col-md-6 col-md-offset-3 loginBox">
				<div class="row text-center header">
						<h3></h3>
				</div>
				<div class="form-group col-md-10 col-md-offset-1 gap">
					<label for="teamLabel">Email address</label>
					<select class="form-control" id="teamSelect">
				      <option>1</option>
				      <option>2</option>
				      <option>3</option>
				      <option>4</option>
				      <option>5</option>
				    </select>
				</div>
				<div class="form-group col-md-10 col-md-offset-1 gap">
					<button type="button" class="btn btn-primary form-control">Submit</button>
				</div>
				<div class="form-group col-md-10 col-md-offset-1 gap">
					<input type="text" class="form-control" placeholder="Employee ID">
				</div>
				<div class="form-group col-md-10 col-md-offset-1 gap">
					<button type="button" class="btn btn-success form-control">Search</button>
				</div>
				<div class="form-group col-md-10 col-md-offset-1 gap">
					<button type="button" class="btn btn-warning form-control">Add New Employee</button>
				</div>
			</div>
		</form>
	</div>
	
	<div class="footer">
	  <p>System Consultant Information India Private Ltd. All Rights Reserved($)</p>
	</div>
</body>
</html>
