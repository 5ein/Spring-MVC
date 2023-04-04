<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table border="1">
	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>CONTENT</th>
		<th>PRICE</th>
		<th>COMPANY</th>
		<th>IMG</th>
	</tr>
	<c:forEach items="${list9}" var="bag">
		<tr>
			<td>${bag.id}</td>
			<td>${bag.name}</td>
			<td>${bag.content}</td>
			<td>${bag.price}</td>
			<td>${bag.company}</td>
			<td>${bag.img}</td>
		</tr>
	</c:forEach>
</table>
