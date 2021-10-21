<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>login.jsp</h1>
	session: ${loginUser }, ${sessionScope.loginUser }<hr>
	<c:choose>
		<c:when test="${loginUser == null}"><!-- 로그인 안햇을때 -->
			<form action="chkUser.jsp" method="post">
				<input type="text" name="id" placeholder="input id"><br>
				<input type="text" name="pwd" placeholder="input pw"><br>
				<input type="submit" value="로그인"><br>
			</form>
		</c:when>
		<c:otherwise>
			
			${loginUser }님 반갑습니다<br>
			<a href="main.jsp">main.jsp로 가기</a>
			<a href="logout.jsp">logout.jsp로 가기</a>
		</c:otherwise>
	</c:choose>
	
</body>
</html>