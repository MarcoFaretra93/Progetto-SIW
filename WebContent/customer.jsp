<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css"/>

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>Customer</title>
</head>
<body>

	<f:view>

		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand">bazarOne</a>
				</div>
				<div class="navbar-collapse collapse" aria-expanded="false"
					style="height: 1px;">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a href="login.jsp">Login</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
		<div class="jumbotron">
		<div class="container">
			
				<h2>Hello ${customerController.customer.userName} !</h2>
				<div>First Name: ${customerController.customer.firstName}</div>
				<div>Last Name: ${customerController.customer.lastName}</div>
				<div>Username: ${customerController.customer.userName}</div>
				<div>E-mail: ${customerController.customer.email}</div>
				<div>Date of Birth: ${customerController.customer.dateOfBirth}</div>
				<div>Street: ${customerController.customer.address.street}</div>
				<div>City: ${customerController.customer.address.city}</div>

				<a href="index.jsp" class="btn btn-primary">Return to Home</a>
			</div>
		</div>
	</f:view>

</body>
</html>