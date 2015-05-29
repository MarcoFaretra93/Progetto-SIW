<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:view>
<h:outputText value="Inserisci il tuo nome e il cognome per accedere" />
      Nome:<h:inputText value="#{customerController.firstName}" />
      Cognome: <h:inputText value="#{customerController.lastName}" />
      Password:<h:inputSecret value="#{customerController.password}"/>
      <h:commandButton value="Accedi" action="#{customerController.login}" />
      <h:commandButton value="Esci" action="index.jsp" />
</f:view>
</body>
</html>