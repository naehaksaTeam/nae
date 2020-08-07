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

<% ArrayList<TimeTable> list = (ArrayList<TimeTable>)session.getAttribute("list"); %>
<% if(list == null){ %>

<% } %>
</body>
</html>