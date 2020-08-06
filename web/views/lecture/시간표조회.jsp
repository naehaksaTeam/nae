<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" impotr="java.util.ArrayList,lecture.model.vo." %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>시간표조회</h1>
<hr>

<% ArrayList<lecture> list = session.getAttribute("timetable"); %>
<% if(list == null){ %>


<% } %>
</body>
</html>