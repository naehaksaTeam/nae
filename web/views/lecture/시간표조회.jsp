<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.HashMap,lecture.model.vo.TimeTable,student.model.vo.Member" errorPage="../../views/common/error.jsp" %>
<% HashMap list = (HashMap)request.getAttribute("list"); %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

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

<table style="border:2px solid black;text-align:center;" >
<tr>
<th style="border:1px solid black;" ></th>
<th style="border:1px solid black;" >월</th>
<th style="border:1px solid black;" >화</th>
<th style="border:1px solid black;" >수</th>
<th style="border:1px solid black;" >목</th>
<th style="border:1px solid black;" >금</th>
</tr>
<tr>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >09 : 00 ~ <br>09 : 50</td>
<% if(((TimeTable)(list.get("list9"))) != null){ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list9"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list9"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list9"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list9"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list9"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list9"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list9"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list9"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list9"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list9"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td>
<% } %>
</tr>
<tr>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >10 : 00 ~ <br>10 : 50</td>
<% if(((TimeTable)(list.get("list10"))) != null){ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list10"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list10"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list10"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list10"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list10"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list10"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list10"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list10"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list10"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list10"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td>
<% } %>
</tr>
<tr>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >11 : 00 ~ <br>11 : 50</td>
<% if(((TimeTable)(list.get("list11"))) != null){ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list11"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list11"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list11"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list11"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list11"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list11"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list11"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list11"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list11"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list11"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td>
<% } %>
</tr>
<tr>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >12 : 00 ~ <br>12 : 50</td>
<% if(((TimeTable)(list.get("list12"))) != null){ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list12"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list12"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list12"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list12"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list12"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list12"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list12"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list12"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list12"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list12"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td>
<% } %>
</tr>
<tr>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >13 : 00 ~ <br>13 : 50</td>
<% if(((TimeTable)(list.get("list13"))) != null){ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list13"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list13"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list13"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list13"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list13"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list13"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list13"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list13"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list13"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list13"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td>
<% } %>
</tr>
<tr>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >14 : 00 ~ <br>14 : 50</td>
<% if(((TimeTable)(list.get("list14"))) != null){ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list14"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list14"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list14"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list14"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list14"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td>
<% } %>
</tr>
<tr>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >15 : 00 ~ <br>15 : 50</td>
<% if(((TimeTable)(list.get("list14"))) != null){ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list14"))).getDay().equals("월")){ %>
<%= ((TimeTable)(list.get("list14"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list15"))).getDay().equals("화")){ %>
<%= ((TimeTable)(list.get("list15"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list15"))).getDay().equals("수")){ %>
<%= ((TimeTable)(list.get("list15"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list15"))).getDay().equals("목")){ %>
<%= ((TimeTable)(list.get("list15"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" >
<% if(((TimeTable)(list.get("list15"))).getDay().equals("금")){ %>
<%= ((TimeTable)(list.get("list15"))).getName() %>
<% }else{ %>
	&nbsp;
<% } %>
</td>
<% }else{ %>
<td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td><td style="border:1px solid black;text-align:center;width:100px;height:100px;" ></td>
<% } %>
</tr>
</table>


<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% } %>
</body>
</html>