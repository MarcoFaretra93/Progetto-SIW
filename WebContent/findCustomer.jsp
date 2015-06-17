<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII" />
<title>Find Customer</title>
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
			<div class="col-md-6 col-md-offset-3">
					<h2>Insert ID</h2>
					<h:form>
							<h:outputLabel value="idOrder:"></h:outputLabel>
							<h:inputText styleClass="form-control"
								value="#{orderController.id}" required="true"
								requiredMessage="OrderID is mandatory" id="idOrder" />
							<h:message for="idOrder" />
							${orderController.wrongId}
							<h:commandButton value="Submit"
								action="#{orderController.findCustomerByOrder}" />

					</h:form>
			</div>
		</div>
	</div>
	</f:view>
</body>
</html>