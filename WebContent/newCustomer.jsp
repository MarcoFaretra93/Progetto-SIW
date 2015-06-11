<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<title>Sign in</title>
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
		<div class="starter-template">

			<h1>Insert your informations:</h1>
			<f:view>
				<h:form>
					<div>
						First name:
						<h:inputText value="#{customerController.firstName}"
							required="true" requiredMessage="name is mandatory!"
							id="firstName" />
						<h:message for="firstName"></h:message>
					</div>
					<div>
						Last name:
						<h:inputText value="#{customerController.lastName}"
							required="true" requiredMessage="code is mandatory!"
							id="lastName" />
						<h:message for="lastName"></h:message>
					</div>
					<div>
						Date of Birth:
						<h:selectOneListbox value="#{customerController.dateOfBirth}">	
       							 <f:selectItem id="item1" itemLabel="1993" itemValue="1" />
       							 <f:selectItem id="item2" itemLabel="1994" itemValue="2" />
        						<f:selectItem id="item3" itemLabel="1995" itemValue="3" />
       							 <f:selectItem id="item4" itemLabel="1996" itemValue="4" />
        							<f:selectItem id="item5" itemLabel="1997" itemValue="5" />
						</h:selectOneListbox>
					</div>
					<div>
						Address:
						<h:inputText value="#{customerController.address}"
							required="false" id="address" />
					</div>
					<div>
						Email:
						<h:inputText value="#{customerController.email}" required="true"
							id="email" />
						<h:message for="email"></h:message>
					</div>

					<div>
						Password:
						<h:inputSecret value="#{customerController.password}"
							required="true" id="password" />
						<h:message for="password"></h:message>
					</div>
					<div>
						<h:commandButton value="Submit"
							action="#{customerController.createCustomer}" />
					</div>
				</h:form>
			</f:view>
		</div>
	</div>

</body>
</html>