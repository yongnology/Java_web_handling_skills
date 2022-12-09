<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m" class="sec01.ex02.MemberBean"/>
<jsp:setProperty name="m" property="*" />

<jsp:useBean id="addr" class="sec01.ex02.Address" />
<jsp:setProperty name="addr" property="city" value="서울"/>
<jsp:setProperty name="addr" property="zipcode" value="07654"/>
<%
	m.setAddr(addr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border=1  align="center" >
    <tr align=center bgcolor="#99ccff">
		<td width="10%"><b>아이디</b></td>
		<td width="10%"><b>비밀번호</b></td>
		<td width="10%" ><b>이름</b></td>
		<td width="10%"><b>이메일</b></td>
		<td width="5%"><b>도시</b></td>
		<td width="10%"><b>우편번호</b></td>
	</tr>
	<tr align="center">
		<td>${m.id }</td>
		<td>${m.pwd }</td>
		<td>${m.name }</td>
		<td>${m.email }</td>
		<!-- getter를 두번 호출해서 주소 출력 -->
		<td><%=m.getAddr().getCity() %></td>
		<td><%=m.getAddr().getZipcode() %></td>
	</tr>
	<tr align="center">
		<td>${m.id }</td>
		<td>${m.pwd }</td>
		<td>${m.name }</td>
		<td>${m.email }</td>
		<td>${m.addr.city }</td>
		<td>${m.addr.zipcode }</td>
	</tr>

</table>
</body>
</html>
