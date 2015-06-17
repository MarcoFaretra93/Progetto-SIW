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
<title>Product</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target=".navbar-collapse"></button>
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

	<f:view>
		<div class="jumbotron">
			<div class="container">
				<h1>${productController.product.name}</h1>
				<h2>Details</h2>
				<div>Code: ${productController.product.code}</div>
				<div>Price: ${productController.product.price}</div>
				<div>Description: ${productController.product.description}</div>
				<div>Quantity: ${productController.product.quantity}</div>

				<h:form>
					<h:commandLink action="#{productController.listProductsAdd}"
						value="Back" />
				</h:form>
			</div>
		</div>
	</f:view>

</body>
</html>