<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.js"></script>
<script type="text/javascript">
//alert('test')
	new Vue({
		el:'#app', //id name
		data: {
			text: 'Hello Vue.js!' //var name
		}
	});
</script>
it's me..<br>
<div id='app'>
{{ text }}
</div>
</body>
</html>