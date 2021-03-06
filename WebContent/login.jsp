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
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII"/>
<title>Login</title>
</head>
<body style="background-color: light-grey;">
	<f:view>
	<div class="container">
		<h:form>
		<div class="col-md-6 col-md-offset-3">
		
			<div class="form-group has-error form-group-sm">
			
				<h2 class="form-signin-heading">Please sign in</h2>

					<label for="inputUsername" >Username: </label>
				
					<h:inputText styleClass="form-control" value="#{customerController.userName}" required="true"
						requiredMessage="ID is mandatory" id="id" />
					<h:message for="id" />
					<label for="inputPassword" >Password:</label>
					
					<h:inputSecret styleClass="form-control" value="#{customerController.password}"
						required="true" requiredMessage="Password is mandatory"
						id="password" />
					<h:message for="password" />
				 <label class="control-label" for="inputError1">${customerController.loginErr}</label>
					<h:commandButton styleClass="btn btn-lg btn-primary btn-block"
						value="Submit" action="#{customerController.validate}" />

			</div>
			</div>
		</h:form>
		</div>
	</f:view>
</body>
</html>