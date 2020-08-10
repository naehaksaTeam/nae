<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="category.model.vo.Category, java.util.ArrayList"%>
<% 
	String catename = request.getParameter("catename");
	Category ca = new Category("테스트계열");
	String message = (String)request.getAttribute("message");
	ArrayList<Category> list = (ArrayList<Category>)request.getAttribute("list");
	
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

<button onclick="javascript:location.href='/beet/selectca'">계열 조회</button>
<br>
<% if(list != null){ %>
	<form method="post" name="cateform">
	<table style="border: solid 1px; background-color: teal;">
	<tr><th>계열명</th></tr>
	<% for(Category category : list){ %>
		<tr><td><input type="radio" name="catename" value="<%= category.getCategoryname() %>"><%= category.getCategoryname() %></td></tr>
	<% } %>
	</table>
	<input type="submit" value="계열삭제" onclick="javascript: cateform.action='/beet/deleteca'">
	<br>
	수정할 이름<input type="text" name="newname">
	<input type="submit" value="계열수정" onclick="javascript: cateform.action='/beet/updateca'">
	</form>
<% } %>
<br>
<form action="/beet/insertca" method="post">
추가할 이름<input type="text" name="catename">
<input type="submit" value="계열추가">
</form>
<% if(message != null){ %>
	<hr>
	<%= message %>
	<hr>
<% } %>
</div>
</body>
</html>