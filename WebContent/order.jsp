<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Order</title>
</head>
<body>
	<f:view>
		<h1>Order</h1>
		<ul>
			<li>Date: ${orderController.order.dateStarting}</li>
			<li>Customer: ${orderController.order.customer}</li>
		</ul>
		<h3>Insert products to order</h3>
		<ul>
			<li><h:form>
					<h:commandLink action="#{productController.listProducts}"
						value="List all Products" />
				</h:form></li>
		</ul>

	</f:view>

</body>
</html>


