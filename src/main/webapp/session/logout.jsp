<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	logout.jsp
	<% 
		session.invalidate(); //모든 세션 만료
		//session.setMaxInactiveInterval(5);//5초후에 모든 세션 만료
		//session.removeAttribute("loginUser")//특정 세션만 만료
	%>
	<a href="login.jsp">login.jsp로 가기</a>
	<a href="main.jsp">main.jsp로 가기</a>
</body>
</html>