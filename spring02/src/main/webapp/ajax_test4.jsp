<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$('#result').empty()
			$.ajax({
				url : "jsonReponse3",
				data : {
					id : "cookie"
				},
				dataType : "json",
				success : function(x) {
					id = x.id
					pw = x.pw
					name = x.name
					tel = x.tel
					table = "<table><tr><td>id</td><td>pw</td><td>name</td><td>tel</td></tr>" +
								"<tr><td>" + id + "</td><td>" + pw + "</td><td>" + name + "</td><td>" + tel + "</td></tr></table>"
					$('#result').append(table)
				}//success
			})//ajax
		})//b1
		$("#b21").click(function() {
			$('#result').empty()
			$.ajax({
				url : "jsonResponse4",
				dataType : "json",
				success : function(x) {
					//alert(x.length)
					if (x.length>0) {
						$(x).each(function(i, person) {
							var id = person.id;
							var pw = person.pw;
							var name = person.name;
							var tel = person.tel;
							var result = id + " " + pw + " " + name + " " + tel + "<br>"
							$('#result').append(result);
						})
					}
				}//success
			})//ajax
		})//b21
		$("#b22").click(function() {
			$('#result').empty()
			$.ajax({
				url : "jsonResponse4",
				dataType : "json",
				success : function(x) {
					header = "<table style='border: 1px solid black;'><tr><td style='border: 1px solid black;'>id</td><td style='border: 1px solid black;'>pw</td><td style='border: 1px solid black;'>name</td><td style='border: 1px solid black;'>tel</td></tr></table>"
					$('#result').append(header);
					$(x).each(function(i, person) {
						var id = person.id;
						var pw = person.pw;
						var name = person.name;
						var tel = person.tel;
						var table = "<table style='border: 1px solid black;'><tr><td style='border: 1px solid black;'>" + id + "</td><td style='border: 1px solid black;'>" + pw + "</td><td style='border: 1px solid black;'>" + name + "</td><td style='border: 1px solid black;'>" + tel + "</td></tr></table>"
						$('#result').append(table);
					})
				}//success
			})//ajax
		})//b22
		$("#b3").click(function() {
			$('#result').empty()
			$.ajax({
				url : "jsonResponse4",
				dataType : "json",
				success : function(x) {
					alert(x.length)
					id = x[0].id
					pw = x[0].pw
					name = x[0].name
					tel = x[0].tel
					table = "<table><tr><td>id</td><td>pw</td><td>name</td><td>tel</td></tr>" +
					"<tr><td>" + id + "</td><td>" + pw + "</td><td>" + name + "</td><td>" + tel + "</td></tr></table>"
					$('#result').append(table)
				}//success
			})//ajax
		})//b3
	})//$
</script>
</head>
<body>
	<button id="b1">심화1</button>
	<button id="b21">심화2-1</button>
	<button id="b22">심화2-2</button>
	<button id="b3">심화3</button>
	<button id="b4">심화4</button>
	<hr>
	<div id="result"></div>
</body>
</html>