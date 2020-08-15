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
<h2 align="center">
<%if(error != null){ %>
	<%= error %>
<% } %>
</h2>
<button onclick="javascript:location.href='/beet/'">메인 페이지</button> &nbsp;&nbsp;
<button onclick="javascript:history.go(-1)">이전 페이지</button>
</center>
</body>
</html>