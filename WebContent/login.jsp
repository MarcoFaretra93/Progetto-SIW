<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<jsp:useBean id="customerController"
	class="controller.CustomerController" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>


	<nav class="navbar navbar-inverse">
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
				<li class="active"><a href="faces/index.jsp">Home</a></li>

			</ul>
			<div class="navbar-right">
				<a href="login.jsp">
					<button type="submit" class="btn btn-success">Login</button>
				</a>
			</div>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>

	<div class="container">
		<h1>Login</h1>



		<f:view>
			<form class="form-signin">
				<h:form>

					<h5 class="form-signin-heading">Please sign in</h5>
					<div>
						Nome:
						<h:inputText value="#{customerController.firstName}"
							required="true" requiredMessage="obbligatorio!" />
					</div>
					<div>
						Cognome:
						<h:inputText value="#{customerController.lastName}"
							required="true" requiredMessage="obbligatorio!" />
					</div>
					<div>
						Password:
						<h:inputSecret value="#{customerController.password}"
							required="true" requiredMessage="obbligatorio!" />
					</div>
					<div>
						<h:commandButton value="Accedi" action=" " />
						<h:outputLink value="faces/index.jsp"> Esci </h:outputLink>
					</div>
				</h:form>
			</form>
		</f:view>
	</div>
</body>
</html>