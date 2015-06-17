<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
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
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>New Product</title>
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
						<li class="active"><a href="customer.jsp">Hello
								${customerController.customer.userName}</a></li>

						<li><a href="login.jsp">Login</a></li>

					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>


		<h:form>
		<div class="jumbotron">
		<div class="container">
			<div class="form-group">
			<h2>Insert new product's details</h2>
				<div>
					Name:
					<h:inputText value="#{productController.name}" required="true"
						requiredMessage="Name is mandatory" id="name" />
					<h:message for="name" />
				</div>
				<div>
					Code:
					<h:inputText value="#{productController.code}" required="true"
						requiredMessage="Code is mandatory" id="code" />
					<h:message for="code" />
				</div>
				<div>
					Price:
					<h:inputText value="#{productController.price}" required="true"
						requiredMessage="Price is mandatory"
						converterMessage="Price must be a number" id="price" />
					<h:message for="price" />
				</div>
				<div>
					Quantity:
					<h:inputText value="#{productController.quantity}" required="true"
						requiredMessage="quantity is mandatory"
						converterMessage="quantity must be a number" id="quantity" />
					<h:message for="quantity" />
				</div>
				<div>
					Description:
					<h:inputTextarea value="#{productController.description}"
						required="false" cols="20" rows="5" />

				</div>
				<div>
					<h:commandButton value="Submit"
						action="#{productController.createProduct}" 
						styleClass="btn btn-lg btn-success"/>
				</div>
				<h:commandLink action="#{productController.listProducts}"
					value="List all Products" />
			</div>
			</div>
			</div>
		</h:form>
	</f:view>
</body>
</html>