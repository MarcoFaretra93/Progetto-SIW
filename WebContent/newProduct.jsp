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
<title>New Product</title>
<body>
	<h1>Insert new product:</h1>
	<f:view>
		<h:form>
			<div>
				Name:
				<h:inputText value="#{productController.name}" required="true"
					requiredMessage="name is mandatory!" id="name" />
			</div>
			<div>
				Code:
				<h:inputText value="#{productController.code}" required="true"
					requiredMessage="code is mandatory!" id="code" />
			</div>
			<div>
				Price:
				<h:inputText value="#{productController.price}" required="true"
					requiredMessage="price is mandatory!"
					converterMessage="price must be a number!" id="price" />
			</div>
			<div>
				Description:
				<h:inputText value="#{productController.description}"
					required="false" id="description" />
			</div>

			<div>
				<h:commandButton value="Submit"
					action="#{productController.createProduct}" />
			</div>
		</h:form>
	</f:view>
</body>
</html>