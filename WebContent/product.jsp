<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dettagli prodotto</title>
</head>
<body>
	<h1>${productController.product.name}</h1>
	<h2>Dettagli:</h2>
	<div>Codice: ${productController.product.code}</div>
	<div>Descrizione: ${productController.product.description}</div>
	<div>Prezzo: ${productController.product.price}</div>
	
</body>
</html>