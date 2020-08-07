<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String error = (String)request.getAttribute("message");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
<h1 align="center">error.jsp</h1>

에러발생 : <%= error %>
</body>
</html>