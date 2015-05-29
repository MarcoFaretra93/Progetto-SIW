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
	<f:view>

		<h1>Login</h1>
		<h:outputText value="Inserisci il tuo nome e il cognome per accedere" />
		<div>
			Nome:
			<h:inputText value="#{customerController.firstName}" required="true"
				requiredMessage="obbligatorio!" />
		</div>
		<div>
			Cognome:
			<h:inputText value="#{customerController.lastName}" required="true"
				requiredMessage="obbligatorio!" />
		</div>
		<div>
			Password:
			<h:inputSecret value="#{customerController.password}" required="true"
				requiredMessage="obbligatorio!" />
		</div>
		<div>
			<h:commandButton value="Accedi" action=" " />
			<h:outputLink value="faces/index.jsp"> Esci </h:outputLink>
		</div>
	</f:view>
</body>
</html>