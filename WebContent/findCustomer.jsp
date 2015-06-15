<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Find Customer</title>
</head>
<body>
<f:view>
<h:form>
<h2> Insert ID </h2>
<div>IdOrder: <h:inputText value="#{orderController.id}" 
required="true"
requiredMessage="IdOrder is mandatory"
id="id"/> <h:message for="id" />${orderController.wrongId}
</div>
<div>
<h:commandButton value="Submit" action="#{orderController.findCustomerByOrder}"/>
</div>
</h:form>
</f:view>
</body>
</html>