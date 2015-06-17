<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer</title>
</head>
<body>
<f:view>
<div>First Name: ${orderController.selectedCustomer.firstName}</div>
<div>Last Name: ${orderController.selectedCustomer.lastName}</div>
<div>Username: ${orderController.selectedCustomer.userName}</div>
<div>E-mail: ${orderController.selectedCustomer.email}</div>
<div>Date of Birth: ${orderController.selectedCustomer.dateOfBirth}</div>
<div>Street: ${orderController.selectedCustomer.address.street}</div>
<div>City: ${orderController.selectedCustomer.address.city}</div>
<a href='<c:url value="/faces/index.jsp" />'>Return to Index</a>
</f:view>
</body>
</html>