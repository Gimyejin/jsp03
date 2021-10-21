<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>first page</h1>
		[설정하는 부분]pageContext에 page value를 name이란 변수 이름으로 하기로 정함<br>
		<b>pageContext</b> 
		<% pageContext.setAttribute("name", "page value");%><br>
		ㄴ 현재 페이지에서만 유지되는값<br>
		<b>request</b> 
		<% request.setAttribute("name", "request value");
		//request.getRequestDispatcher("secondPage.jsp").forward(request, response);
		%><br>
		ㄴ 현재 페이지 또는 다음 페이지까지 유지되는 값<br>
		(단 request는 다음페이지까지 전달하고자 하면 forward를 사용해야한다)<br>
		<b>session</b> 
		<% session.setAttribute("name", "session value");%><br>
		ㄴ 웹 브라우저가 살아있는 동안 유지된다.<br>
		<b>application</b> 
		<% application.setAttribute("name", "application value");%><br>
		ㄴ 서버가 살아있는 동안 유지된다.
		<hr>
		name: ${name }<br>
		<hr>
		page: <%= pageContext.getAttribute("name") %>
				,${pageScope.name }<br><!-- 이건 el문법// 속성 값을 가져올 두가지 방법 -->
		request: <%= request.getAttribute("name") %>
				,${requestScope.name }<br>
		session: <%= session.getAttribute("name") %>
				,${sessionScope.name }<br>
		application: <%= application.getAttribute("name") %>
				,${applicationScope.name }<br>
		<hr>
		<a href="secondPage.jsp">secondPage.jsp</a><br>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="se" value="세션설정값입니다." scope="session"/>	<!-- scope는 지정안하면 현재페이지만 먹음 -->
session: ${se }<br>
</body>
</html>