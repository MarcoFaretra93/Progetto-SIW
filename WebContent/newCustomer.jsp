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
<title>New Customer</title>
</head>
<body>

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
					<li class="active"><a href="customer.xhtml">Hello
							${customerController.customer.userName}</a></li>

					<li><a href="login.jsp">Login</a></li>

				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<f:view>
		<div class="jumbotron">
			<div class="container">
				<div class="col-md-6 col-md-offset-3">
					<h3>Sign up!</h3>
					<p>Give us your information, please.</p>
					<h:form>

						<div class="form-group">
							<LABEL>First Name:</LABEL>
							<h:inputText styleClass="form-control"
								value="#{customerController.firstName}" required="true"
								requiredMessage="First name is mandatory" id="fname" />
							<h:message for="fname" />
						</div>
						<div class="form-group">
							<label>Last Name:</label>
							<h:inputText styleClass="form-control"
								value="#{customerController.lastName}" required="true"
								requiredMessage="Last name is mandatory" id="lname" />
							<h:message for="lname" />
						</div>
						<div class="form-group">
							<LABEL>Username:</LABEL>
							<h:inputText styleClass="form-control"
								value="#{customerController.userName}" required="true"
								requiredMessage="Username is mandatory" id="uname" />
							<h:message for="uname" />
						</div>
						<div class="form-group">
							<label>Password:</label>
							<h:inputSecret styleClass="form-control"
								value="#{customerController.password}" required="true"
								requiredMessage="Password is mandatory" id="pwd" />
							<h:message for="pwd" />
						</div>
						<div class="form-group">
							<label>E-mail:</label>
							<h:inputText styleClass="form-control"
								value="#{customerController.email}" required="true"
								requiredMessage="E-mail is mandatory" id="email" />
							<h:message for="email" />
						</div>
						<div class="form-group">
							<label>Date of Birth:</label>
							<h:inputText styleClass="form-control"
								value="#{customerController.dateOfBirth}" required="true"
								requiredMessage="Date of Birth is mandatory" id="dob">
								<f:convertDateTime pattern="dd-MM-yyyy" />
							</h:inputText>
							<h:message for="dob" />
						</div>
						<div class="form-group">
							<label>Street:</label>
							<h:inputText styleClass="form-control"
								value="#{customerController.street}" required="true"
								requiredMessage="Street is mandatory" id="street" />
							<h:message for="street" />
						</div>
						<div class="form-group">
							<label>City:</label>
							<h:inputText styleClass="form-control"
								value="#{customerController.city}" required="true"
								requiredMessage="City is mandatory" id="city" />
							<h:message for="city" />
							<h:commandButton value="Submit"
								action="#{customerController.createCustomer}"
								styleClass="btn btn-default" />
						</div>

					</h:form>
				</div>
			</div>
		</div>
	</f:view>
</body>
</html>