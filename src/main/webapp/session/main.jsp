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
	<h1>main.jsp</h1>
	로그인 성공한 사용자만 입장 가능합니다.<br>
	<hr>
	<c:choose>
		<c:when test="${loginUser == null}"><!-- 로그인 안햇을때 -->
			<script type="text/javascript">
				alert('로그인을 먼저하시오')
				location.href="login.jsp";
			</script>	
			<%--  script는 브라우저에서 해석하기때문에 redirect가 먼저 해석되버림 
			<c:redirect url="login.jsp"/>		 --%>
		</c:when>
		<c:otherwise>
			<script> alert("${loginUser}"+"님 환영합니다.")	</script><!-- ""없으면 변수로 인식해서 오류남 -->
			${loginUser }님 반갑습니다<br>
			<a href="login.jsp">로그인 페이지 이동</a>
			<a href="logout.jsp">로그아웃 페이지 이동</a><br>
		</c:otherwise>
	</c:choose>
</body>
</html>