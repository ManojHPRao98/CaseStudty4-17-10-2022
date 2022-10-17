<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h3 style="color: blue;">
		<form action="bill" method="get">
		Enter Mobile Number: <input type="text" name="mobileNum"/>
		<br> <br>
		Select plan from below
		<table border="2">
		<tr style="background-color:orange; color: blue;">
		<th>PLAN ID</th>
		<th>DAYS</th>
		<th>TALKTIME</th>
		<th>DATA</th>
		<th>PRICE</th>
		<th>SELECT</th>
	</tr>
	<c:forEach items="${offerList}" var="offer">
	<tr style="background-color: yellow; color: blue;">
	<td>${offer.id}</td>
	<td>${offer.days}</td>
	<td>${offer.talkTime}</td>
	<td>${offer.data}</td>
	<td>${offer.price}</td>
	<td> <input type="radio" value="${offer.id}" name="radio"/> </td>
	</tr>
	</c:forEach>
	</table>
	<br>
	<input type="submit" value="submit">
</form>
</h3>
</div>
</body>
</html>