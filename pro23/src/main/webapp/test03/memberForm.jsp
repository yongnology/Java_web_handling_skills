<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입창</title>
<style>
h2 {
	text-align: center;
}
tr, td, {
	text-align: center;
}
</style>
</head>
<body>
<h2>회원가입창</h2>
<form method="post" action="${contextPath }/mem4.do?action=insertMember2">
	<table align="center">
		<tr>
			<td width="200">아이디</td>
			<td width="400"><input type="text" name="id"></td>
		</tr>
		<tr>
			<td width="200">비밀번호</td>
			<td width="400"><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td width="200">이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td width="200">이메일</td>
			<td width="400"><input type="text" name="email"></td>
		</tr>
		<tr>
			<td>&nbsp</td>
		</tr>
		<tr>
			<td align="center" colspan="2"><input type="submit" value="가입하기">
				<input type="reset" value="다시입력"></td>
		</tr>
	</table>
</form>
</body>
</html>
