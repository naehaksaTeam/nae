<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,lecture.model.vo.TimeTable" %>
<% TimeTable list9 = (TimeTable)session.getAttribute("list9"); %>
<% TimeTable list10 = (TimeTable)session.getAttribute("list10"); %>
<% TimeTable list11 = (TimeTable)session.getAttribute("list11"); %>
<% TimeTable list12 = (TimeTable)session.getAttribute("list12"); %>
<% TimeTable list13 = (TimeTable)session.getAttribute("list13"); %>
<% TimeTable list14 = (TimeTable)session.getAttribute("list14"); %>
<% TimeTable list15 = (TimeTable)session.getAttribute("list15"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>시간표조회</h1>
<hr>


<table>
<tr>
<% if(list9 != null){ %>
	
<% } %>
</tr>
<tr>
<% if(list10 != null){ %>
	
<% } %>
</tr>
<tr>
<% if(list11 != null){ %>
	
<% } %>
</tr>
<tr>
<% if(list9 != null){ %>
	
<% } %>
</tr>
<tr>
<% if(list9 != null){ %>
	
<% } %>
</tr>
<tr>
<% if(list9 != null){ %>
	
<% } %>
</tr>
<tr>
<% if(list9 != null){ %>
	
<% } %>
</tr>
</table>
</body>
</html>