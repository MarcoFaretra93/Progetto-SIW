<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order closed</title>
</head>
<body>
<h1>Order successfully closed</h1>
<f:view>
	<ul>
		<li><a href='<c:url value="/faces/index.jsp"/>'>Return to Index</a>
		</li>
		<li><h:form><h:commandLink action="#{orderController.createOrder}"
						value="Create another order" /></h:form>
		</li>

</ul>
</f:view>
</body>
</html>