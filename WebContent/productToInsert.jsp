<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Product</title>
</head>
<body>
<f:view>
<h1>${productController.product.name}</h1>
<h2>Details</h2>
<div>Code: ${productController.product.code}</div>
<div>Price: ${productController.product.price}</div>
<div>Description: ${productController.product.description}</div>
<div>Quantity: ${productController.product.quantity}</div>
<h:form>
	<div>Quantity: <h:inputText value="#{orderController.quantity}" 
                     required="true"
                     requiredMessage="quantity is mandatory"
                     converterMessage="quantity must be a number"
                     id="quantity"> <f:validateLongRange minimum="1"/> </h:inputText>
                      <h:message for="quantity" />
	</div>
	<div>
	<h:commandButton value="submit"  action="#{orderController.createOrderLine}" >
	</h:commandButton>
	</div>
	<h3>Return to product selection</h3>
		<ul>
			<li><a href='<c:url value="/faces/order.jsp" />'>Back</a></li>
		</ul>
</h:form>

</f:view>
</body>
</html>