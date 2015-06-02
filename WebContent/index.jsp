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

	<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand">bazarOne</a>
		</div>
		<div class="navbar-collapse collapse" aria-expanded="false"
			style="height: 1px;">
			<ul class="nav navbar-nav">
				<li class="active"><a href="faces/index.jsp">Home</a></li>

			</ul>
			<div class="navbar-right">
				<a href="login.jsp">
					<button type="submit" class="btn btn-success">Login</button>
				</a>
			</div>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>

	<div class="container theme-showcase">
		<div class="jumbotron">
			<div class="container">
				<h1>Welcome to bazarOne</h1>
				<p>A complete wonderful world where anybody can loose his mind.
					You could find strange creature and exciting products.</p>
				<div id="carbonads-container">
					<div class="carbonad">
				</div>

			</div>
		</div>
</div>


		<div class="row">
			<div class="col-md-4">
				<h2>Product Catalog</h2>
				<p>Everything you want, you find here. Don't you know what you want?
				With clicking on the button below, you'll know what you want and what you need.
				Quick click !</p>
				<p>
					<a href="productCatalog.jsp">
						<button type="button" class="btn btn-lg btn-success">
							View more >></button>
					</a>
				</p>
			</div>
		</div>
	</div>

</body>
</html>