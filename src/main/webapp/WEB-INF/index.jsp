<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<title>Fruity Loops</title>
	<%-- a simple styles to match the look of sample core assignament  --%>
	<style>
		.text-color {
		color: rgb(239,128,128);
		}
		.container{
		background-color: rgb(255,182,194);
		padding: 20px;
		}
		.box{
		background-color: white;
		}
	</style>
</head>
<body>
	<h1 class="text-color text-center"> Fruit Store</h1>
	<div class="container">
		<div class="box ">
			<table class="table hover-table">
				<thead>
					<tr>
						<th>Name</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
				<%--a loop that will iterate from the array list in the controller using the modetattribute --%>
				<c:forEach var="oneFruit" items="${fruitsFromMyController }">
					<tr>
						<%--using getters from the models file to render the fruit name and price --%>
						<td><c:out value="${oneFruit.getName()}"></c:out></td>
						<td><c:out value="${oneFruit.getPrice()}"></c:out></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	

</body>
</html>