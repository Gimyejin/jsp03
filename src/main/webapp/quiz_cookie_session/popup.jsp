<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function pop_close(){
		location.href='makeCookie.jsp';
	}
</script>
</head>
<body>
	<h2>popup.jsp</h2>
	<hr>
	<h1>공 지 사 항</h1>
	<h3>어쩌고 저쩌고 날씨가 좋습니다.</h3>
	<input type="checkbox" onclick="pop_close()">하루동안 열지 않음
</body>
</html>