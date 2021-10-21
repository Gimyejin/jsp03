<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz</title>
</head>
<body>
	<h1>기본 창</h1>
	<%//쿠키가 있다면~이지 쿠키를 만드는 페이지는 아님
	boolean chk = true;
	Cookie[] cooks = request.getCookies();
	for (Cookie c : cooks) {
		if (c.getName().equals("myCookie")) {
			chk = false;
		}
	}
	%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:if test="<%=chk %>">
		<script type="text/javascript">
			window.open("popup.jsp", "",
					"width=300,height=300,top=100,left=400")
		</script>
	</c:if>
</body>
</html>