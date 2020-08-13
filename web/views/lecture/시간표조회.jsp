<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.HashMap,lecture.model.vo.TimeTable,student.model.vo.Member" errorPage="../../views/common/error.jsp" %>
<% HashMap list = (HashMap)request.getAttribute("list"); %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
border:2px solid black;
text-align:center;
}
td{
border:1px solid black;
width:100px;
height:100px;
}
th{
border:1px solid black;
}

</style>
</head>
<body>
<% if(session.getAttribute("loginMember") == null ){ %>
<h1>비회원 상태입니다.</h1>
<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% }else{ %>

<h1><%= ((Member)session.getAttribute("loginMember")).getName() %>의 시간표조회</h1>
<hr>

<table>
<tr>
<th></th>
<th>월</th>
<th>화</th>
<th>수</th>
<th>목</th>
<th>금</th>
</tr>
<tr>
<td>09 : 00 ~ <br>09 : 50</td>
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
<td>10 : 00 ~ <br>10 : 50</td>
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
<td>11 : 00 ~ <br>11 : 50</td>
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
<td>12 : 00 ~ <br>12 : 50</td>
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
<td>13 : 00 ~ <br>13 : 50</td>
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
<td>14 : 00 ~ <br>14 : 50</td>
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
<td>15 : 00 ~ <br>15 : 50</td>
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


<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% } %>
</body>
</html>