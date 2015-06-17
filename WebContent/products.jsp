<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>Product List</title>
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
						<li class="active"><a href="customer.xhtml">Hello
								${customerController.customer.userName}</a></li>

						<li><a href="login.jsp">Login</a></li>

					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

<h1>Products</h1>
<h:form>
<h:panelGrid>
	<tr>
		<th>Name</th><th>Price</th> <%-- <td>Quantity</td> --%>
	</tr>
	<c:forEach var="product" items="#{productController.products}">
		<tr><td>
		<h:commandLink action="#{productController.findProductDetails}" value="#{product.name}"> ${product.name}
			<f:param name="id" value="#{product.id}" />
		</h:commandLink>
		</td>
		<td>${product.price}</td>
		<td>
		<h:form>
		</h:form>
		</td>
		<td>  <h:commandButton value="Submit"  action="#{productController.findProductToInsert}">
		<f:param name="id" value="#{product.id}" />
		</h:commandButton>
		</td>
		</tr>
	</c:forEach>
</h:panelGrid>
</h:form>

</f:view>
</body>
</html>