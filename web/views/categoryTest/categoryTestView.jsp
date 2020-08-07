<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="category.model.vo.Category"%>
<% 
	String catename = request.getParameter("catename");
	Category ca = new Category("테스트계열");
	String message = (String)request.getAttribute("message");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
<br>
<h1>CATEGORY TEST PAGE</h1>
<div align="center">
<button onclick="javascript:location.href='/beet/deleteca?catename=테스트계열'">계열 삭제</button>

<form action="/beet/insertca" method="post">
<input type="text" name="catename" required>
<input type="submit" value="계열 추가">
</form>

<button onclick="javascript:location.href='/beet/selectca'">계열 조회</button>
<button onclick="javascript:location.href='/beet/updateca'">계열 수정</button>
<br>
<% if(message != null){ %>
	<%= message %>
<% } %>
</div>
</body>
</html>