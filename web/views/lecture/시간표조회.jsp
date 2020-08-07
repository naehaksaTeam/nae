<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.HashMap,lecture.model.vo.TimeTable" %>
<% HashMap list = (HashMap)request.getAttribute("list"); %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
border:2px solid black;
}
td{
border:1px solid black;
}
</style>
</head>
<body>
<h1>시간표조회</h1>
<hr>

<table>
<tr>
<td>09 : 00 ~ 09 : 50</td>
<% if(((TimeTable)(list.get("list9"))) != null){ %>
<td>
<% if(((TimeTable)(list.get("list9"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list9"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list9"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list9"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list9"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list9"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list9"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list9"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list9"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list9"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td></td><td></td><td></td><td></td><td></td>
<% } %>
</tr>
<tr>
<td>10 : 00 ~ 10 : 50</td>
<% if(((TimeTable)(list.get("list10"))) != null){ %>
<td>
<% if(((TimeTable)(list.get("list10"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list10"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list10"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list10"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list10"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list10"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list10"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list10"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list10"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list10"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td></td><td></td><td></td><td></td><td></td>
<% } %>
</tr>
<tr>
<td>11 : 00 ~ 11 : 50</td>
<% if(((TimeTable)(list.get("list11"))) != null){ %>
<td>
<% if(((TimeTable)(list.get("list11"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list11"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list11"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list11"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list11"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list11"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list11"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list11"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list11"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list11"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td></td><td></td><td></td><td></td><td></td>
<% } %>
</tr>
<tr>
<td>12 : 00 ~ 12 : 50</td>
<% if(((TimeTable)(list.get("list12"))) != null){ %>
<td>
<% if(((TimeTable)(list.get("list12"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list12"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list12"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list12"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list12"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list12"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list12"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list12"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list12"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list12"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td></td><td></td><td></td><td></td><td></td>
<% } %>
</tr>
<tr>
<td>13 : 00 ~ 13 : 50</td>
<% if(((TimeTable)(list.get("list13"))) != null){ %>
<td>
<% if(((TimeTable)(list.get("list13"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list13"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list13"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list13"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list13"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list13"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list13"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list13"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list13"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list13"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td></td><td></td><td></td><td></td><td></td>
<% } %>
</tr>
<tr>
<td>14 : 00 ~ 14 : 50</td>
<% if(((TimeTable)(list.get("list14"))) != null){ %>
<td>
<% if(((TimeTable)(list.get("list14"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list14"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list14"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list14"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list14"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td></td><td></td><td></td><td></td><td></td>
<% } %>
</tr>
<tr>
<td>15 : 00 ~ 15 : 50</td>
<% if(((TimeTable)(list.get("list14"))) != null){ %>
<td>
<% if(((TimeTable)(list.get("list14"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list15"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list15"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list15"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list15"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list15"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list15"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td>
<% if(((TimeTable)(list.get("list15"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list15"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td></td><td></td><td></td><td></td><td></td>
<% } %>
</tr>
</table>
</body>
</html>