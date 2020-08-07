<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,lecture.model.vo.TimeTable" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>시간표조회</h1>
<hr>

<% TimeTable list9 = (TimeTable)session.getAttribute("list9"); %>
<% if(list9 == null){ %>
	확인
<% } %>
</body>
</html>