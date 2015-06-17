<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Details</title>
</head>
<body>
<div>Creation Date: ${orderController.order.dateStarting}</div>
<div>Completion Date: ${orderController.order.dateComplete}</div>
<div>Evasion Date: ${orderController.order.dateEvasion}</div>

<f:view>
<h:form>
<table>
	<tr>
		<th>Name</th><th>Quantity</th>
	</tr>
	<c:forEach var="line" items="#{orderController.orderLines}">
		<tr><td>
		${line.product.name}
		</td><td>${line.quantity}</td></tr>
	</c:forEach>
</table>
</h:form>
</f:view>

</body>
</html>