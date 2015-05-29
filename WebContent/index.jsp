<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Progetto-siw</title>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
        </div>
      </div>
    </nav>
    <div><h1> </h1></div>
    
  <div class="container theme-showcase" role="main">
	<f:view>
	<div class="bs-docs-header" id="content" tabindex="-1">
      <div class="container">
        <h1>Welcome to bazarOne</h1>
        <p>A complete wonderful world where anybody can lose his mind. You could find strange creature and exciting products.</p>
        <div id="carbonads-container"><div class="carbonad"><div id="azcarbon"></div><script>var z = document.createElement("script"); z.async = true; z.src = "http://engine.carbonads.com/z/32341/azcarbon_2_1_0_HORIZ"; var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(z, s);</script></div></div>

      </div>
		
		<div>

			<h:form>
			<button type="button" class="btn btn-lg btn-default">
				<h:commandLink action="/productCatalog.jsp"
					value="Consulta catalogo prodotti" />
					</button>
				<div>
				<button type="button" class="btn btn-default">
					<h:commandLink action="/login.jsp" value="Login" />
					</button>
				</div>
			</h:form>

		</div>
		</div>
	</f:view>
	</div>
</body>
</html>