<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table>
	<tr>
		<td class="top">no</td>
		<td class="top">title</td>
		<td class="top">content</td>
		<td class="top">writer</td>
	</tr>
	<c:forEach items="${list}" var="bag"> <!-- <>안에  begin="0" end="16" 적어주면 범위 지정가능 -->
		<tr>
			<td class="down">${bag.no}</td>
			<td class="down"><a href="one2.multi?no=${bag.no}">${bag.title}</a></td>
			<td class="down">${bag.content}</td>
			<td class="down">${bag.writer}</td>
		</tr>
	</c:forEach>
</table>
