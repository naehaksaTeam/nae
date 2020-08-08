<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="absence.model.vo.Absence"%>
<%
	Absence ab = (Absence)request.getAttribute("absence");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
<h1 align="center">absenceSelectPage</h1>
<button onclick="javascript:location.href='/beet/selectab'"></button>
<h1><%=ab.getStudentid() %> 님의 신청내역 조회</h1>
<table>

</table>
</body>
</html>