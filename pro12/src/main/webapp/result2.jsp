<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 출력</title>
</head>
<body>
	<h1>결과 출력</h1>
<%
	request.setCharacterEncoding("utf-8");
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
%>
<%
	if(user_id ==null || user_id.length() == 0) {
%>
	<h1><font color="red">아이디를 입력하세요</font></h1><br>
	<a href="/pro12/login2.html">로그인하기</a>
<%
	} else {
%>
<h1> 환영합니다. <%=user_id %>님!!</h1>
<%
	}
%>
</body>
</html>
