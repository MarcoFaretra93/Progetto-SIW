<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Order line's list</title>
</head>
<body>
<f:view>
<h1>order lines</h1>
<h:form>
<table>
	<tr>
		<th>Name</th><th>Quantity</th>
	</tr>
	<c:forEach var="line" items="#{orderController.orderLines}">
		<tr><td>
		${line.product.name}
		</td><td>${line.quantity}</td></tr>
	</c:forEach>
</table>
</h:form>
<ul>
<li><h:form><h:commandLink action="#{productController.listProducts}"
						value="Add another order line" /></h:form>
						</li>
	<li><h:form><h:commandLink action="#{orderController.closeOrder}"
						value="Close order" /></h:form>
						</li>
</ul>

</f:view>
</body>
</html>