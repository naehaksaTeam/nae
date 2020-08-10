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
<header>
<%@ include file="../common/header.jsp"%>
</header>
<%@ include file="/views/common/sessionChk.jsp" %>
<br>
<h1>CATEGORY TEST PAGE</h1>
<div align="center">
<button onclick="javascript:location.href='/beet/deleteca?catename=테스트계열'">계열 삭제</button>

<form action="/beet/insertca" method="post">
<input type="text" name="catename" required>
<input type="submit" value="계열 추가">
</form>

<button onclick="javascript:location.href='/beet/selectca'">계열 조회</button>
<br>
<% if(list != null){ %>
	<form action="/beet/updateca" method="post">
	<table style="border: solid 1px; background-color: teal;">
	<tr><th>계열명</th></tr>
	<% for(Category category : list){ %>
		<tr><td><input type="checkbox" name="catename" value="<%= category.getCategoryname() %>"><%= category.getCategoryname() %></td></tr>
	<% } %>
	</table>
	<br>
	<input type="text" name="newname">수정할 계열이름
	<input type="submit" value="계열 수정">
	</form>
<% } %>

<br>
<% if(message != null){ %>
	<hr>
	<%= message %>
	<hr>
<% } %>
</div>
</body>
</html>