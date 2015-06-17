<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Evade Order</title>
</head>
<body>
<h1> Not Evaded Orders </h1>
<f:view>
<c:forEach var="order" items="#{orderController.notEvadedOrders}">
	<h:form><h:commandLink action="#{orderController.evadeOrder}"
						value="#{order.id}" >
						<f:param name="id" value="#{order.id}" />
						</h:commandLink></h:form>
						</c:forEach>
</f:view>	

</body>
</html>