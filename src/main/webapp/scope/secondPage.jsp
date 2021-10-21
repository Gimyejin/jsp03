<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>second page</h1>
		name: ${name }<br>
		<hr>
		page: <%= pageContext.getAttribute("name") %><br>
		request: <%= request.getAttribute("name") %><br>
		session: <%= session.getAttribute("name") %><br>
		application: <%= application.getAttribute("name") %><br>
		<a href="thirdPage.jsp">thirdPage.jsp</a><br>
		session: ${se }<br>
</body>
</html>