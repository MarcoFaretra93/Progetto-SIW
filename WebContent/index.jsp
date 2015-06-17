<%@ page language="java" contentType="text/html; charset=US-ASCII"
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
<title>bazarOne</title>
</head>
<body
	background="http://st.depositphotos.com/1007970/1242/i/950/depositphotos_12420922-Grand-bazaar-shops-in-Istanbul..jpg">
	<nav class="navbar navbar-inverse navbar-fixed-top">
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
				<li class="active">
				<a href="customer.jsp">Hello ${customerController.customer.userName}</a>
				</li>
				
				<li><a href="login.jsp">Login</a></li>
				
			</ul>
					</div>
		<!--/.nav-collapse -->
	</div>
	</nav>
	

	<f:view>
		<div class="jumbotron" >
			<div class="container" >
				<div></div>
					<h1 class="animated fadeInLeft delay03">Welcome to bazarOne</h1>
					<p>A complete wonderful world where anybody can loose his mind.
						You could find strange creature and exciting products.</p>
					<p>
						<a class="btn btn-lg btn-success" href="newCustomer.jsp"
							role="button">Sign up today</a>
					</p>
				</div>
			</div>

	<div class="container" style="color: white; text-shadow: 4px 4px 10px #000000;">
			<div class="row" >
				<div class="col-md-4" >
					<h3 style=" color: white; font: italic bold 50px Georgia, Serif; text-shadow: -4px 3px 0 #000000, -14px 7px 0 #0a0e27;">Product Catalog</h3>
					<p>Everything you want, you find here. Don't you know what you
						want? With clicking on the button below, you'll know what you want
						and what you need. Quick click !</p>
					<h:form>
						<h:commandButton styleClass="btn btn-lg btn-success"
							action="#{productController.listProductsAdd}"
							value="View more >>" />
					</h:form>
					
				</div>

				<div class="col-md-4" style="color: white;">
					<h:panelGroup rendered="#{not empty customerController.customer}">
						<h3 style=" color: white; font: italic bold 50px Georgia, Serif; text-shadow: -4px 3px 0 #000000, -14px 7px 0 #0a0e27;" >Create your order</h3>
						<p>Do you want to order something right now? Click on the
							button below !</p>
						<h:form>
								<h:commandButton styleClass="btn btn-lg btn-success"
									action="#{orderController.createOrder}" value="View more >>" />
							</h:form>
					</h:panelGroup>
				</div>

				<div class="col-md-4" style="color: white; ">
					<h:panelGroup rendered="#{not empty customerController.customer}">
						<h3 style=" color: white; font: italic bold 50px Georgia, Serif; text-shadow: -4px 3px 0 #000000, -14px 7px 0 #0a0e27;" >My Orders</h3>
						<p>See your orders.</p>
						<h:form>
								<h:commandButton styleClass="btn btn-lg btn-success"
									action="#{customerController.listOrders}" value="View more >>" />
							</h:form>
					</h:panelGroup>
				</div>
				</div>
			<div class="row" >
				<div class="col-md-4" style="color: white;">
					<h:panelGroup rendered="#{customerController.customer.admin}">
						<h3 style=" color: white; font: italic bold 50px Georgia, Serif; text-shadow: -4px 3px 0 #000000, -14px 7px 0 #0a0e27;" >Create a product</h3>
						<p>This section is just for the administrator.</p>
						<a href="newProduct.jsp"
							class="btn btn-lg btn-success">Create a product</a>
					</h:panelGroup>
				</div>

				<div class="col-md-4" style="color: white; ">
					<h:panelGroup rendered="#{customerController.customer.admin}">
						<h3 style=" color: white; font: italic bold 50px Georgia, Serif; text-shadow: -4px 3px 0 #000000, -14px 7px 0 #0a0e27;" >Evade an order</h3>
						<p>This section is just for the administrator.</p>
						<h:form>
								<h:commandLink action="#{orderController.listNotEvadedOrders}"
									styleClass="btn btn-lg btn-success" value="Evade an order" />
							</h:form>
					</h:panelGroup>
				</div>

				<div class="col-md-4" style="color: white; ">
					<h:panelGroup rendered="#{customerController.customer.admin}">
					<h3 style=" color: white; font: italic bold 50px Georgia, Serif; text-shadow: -4px 3px 0 #000000, -14px 7px 0 #0a0e27;" >Find customer</h3>
					<p>This section is just for the administrator.</p>
						<a href="findCustomer.jsp" 
							class="btn btn-lg btn-success"> Find a customer by Order</a>
					</h:panelGroup>
				</div>
				</div>
				</div>
	</f:view>
</body>
</html>

