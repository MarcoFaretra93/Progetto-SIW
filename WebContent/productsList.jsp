<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<head>
	<!--  <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">-->
	<title>Product List</title>
</head>
<body>
<f:view>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target=".navbar-collapse">
				</button>
				<a class="navbar-brand" href="index.jsp">bazarOne</a>
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


	<div class="jumbotron">
		<div class="container">

			<h2>Products</h2>
			<table class="table table-striped">
				<tr>
					<th>Name</th>
					<th>Price</th>
				</tr>
				<c:forEach var="product" items="${productController.products}">
					<tr>
						<td>
						<h:form>
						<h:commandLink
								action="#{productController.findProduct}"
								value="#{product.name}">
								<f:param name="id" value="#{product.id}"/>
								${product.name}
							</h:commandLink>
							</h:form>
							</td>
						<td>${product.price} &#8364;</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	</f:view>
</body>
</html>