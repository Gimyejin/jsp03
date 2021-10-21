<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		session : 서버에서 관리하는 값
		cookie : 클라이언트가 관리하는 값
	 -->

	<h1>index.jsp</h1>
	<hr>
	<h1>CARE_LAB</h1>
	<h3>어서오세요</h3>

	<%
	boolean bool = false;
	Cookie cookie = new Cookie("testCookie", "myCookie");
	cookie.setMaxAge(5);//쿠키를 n초동안 유지하겠다

	Cookie[] cookieArr = request.getCookies();//사용자가 접속하면 접속한 쿠키값을 모두 얻어오겠다.
	/* for(int i=0;i<cookieArr.length;++i){
		out.print("name : "+cookieArr[i].getName()+ " : ");
		out.print("value : "+cookieArr[i].getValue()+ " <br> ");
	} */
	//foreach문으로 만들어보기
	for (Cookie c : cookieArr) {
		out.print("name : " + c.getName() + " : ");
		out.print("value : " + c.getValue() + " <br> ");
		if (c.getName().equals("testCookie")) {
			//현재 testcookie를 갖고 있다는 거니깐 팝업창을 열지 않겠다는 것
			bool = true;
		}
	}

	response.addCookie(cookie);//사용자에게 쿠키값을 전달해줌
	%>
	<%if(bool == false){ %>
	<script type="text/javascript">
		window.open("popup.jsp", "", "width=300,height=400,top=200,left=500");
	</script>
	<%} %>
</body>
</html>