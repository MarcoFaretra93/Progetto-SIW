<%@ page language="java" contentType="text/html; charset=US-ASCII"
pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Duplicate Error</title>
</head>
<body>
<h1>Cannot enter a product twice.</h1>
<div>
<f:view>
<h:form><h:commandLink action="#{productController.listProducts}"
value="List all Products" /></h:form>
</f:view>
</div>