<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
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
<h1 align="center">준비중입니다...</h1>
<hr>
<center>
<%= error %>
<button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
</center>
</body>
</html>