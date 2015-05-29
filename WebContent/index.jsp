<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Progetto-siw</title>
</head>
<body>
	<h1>Welcome to bazarOne!</h1>

	<div>
		<f:view>
			<h:form>
				<h:commandLink action="#{productController.listProducts}"
					value="Consulta catalogo prodotti" />
				<h:commandButton action="#{customerController.login}"  value="Login"/>
			</h:form>
		</f:view>
	</div>
</body>
</html>
