<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Catalogo Prodotti</title>
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
	<h1>Catalogo prodotti</h1>
	<p class="lead">
	Here there are products. Enjoy with them!
	</p>

		<c:forEach var="product" items="${productController.products}">
			<tr>
				<td><h:commandLink action="#{productController.findProduct}"
						value="#{product.name}">
						<f:param name="id" value="#{product.id}" />
					</h:commandLink></td>
				<td>${product.price}</td>
			</tr>
		</c:forEach>
		
	</div>
	</div>
</body>
</html>