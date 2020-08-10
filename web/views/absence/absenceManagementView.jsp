<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="absence.model.vo.Absence, java.util.ArrayList"%>
<%
	ArrayList<Absence> list = (ArrayList<Absence>)request.getAttribute("list");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: inherit;
	text-align: left;
	vertical-align: top
}
.tg td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}
.tg th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}
input.insert {
	width: 40px;
	height: 20px;
	margin: 0px
}
</style>
<header>
<%@ include file="../common/header.jsp"%>
</header>
<%@ include file="/views/common/sessionChk.jsp" %>
<br><br><br><br><br>
<div align="center">
<button onclick="javascript:location.href='/beet/selectaball'">전 체 조 회</button>
<br>
<button onclick="javascript:location.href='/beet/selectaba?value=a'">휴 학 조 회</button>
<button onclick="javascript:location.href='/beet/selectaba?value=b'">복 학 조 회</button>
<br>


<% if(list != null){ %>
<form method="post" name="managerform">
<table id="select" class="tg">
<tr><th style="font-weight: bold;">신청번호</th><th style="font-weight: bold;">학번</th><th style="font-weight: bold;">신청일</th><th style="font-weight: bold;">취소가능날짜</th><th style="font-weight: bold;">승인여부</th></tr>
<% for(Absence ab : list){ %>
<tr><td><input type="radio" name="requestid" value=<%=ab.getRequestid()%> readonly><%=ab.getRequestid()%></td>
	<td><%=ab.getStudentid() %></td>
	<td><%=ab.getRequestdate() %></td>
	<td><%=ab.getLimitcanceldate() %></td>
	<td><%=ab.getApproval()%></td>
<% } %>
</tr>
</table>
<input type="submit" value="승인하기" onclick="javascript: managerform.action='/beet/updateab'">
<input type="submit" value="신청삭제(복구불가)" onclick="javascript: managerform.action='/beet/deleteabad'">
</form>
<% } %>



<%-- <div>
<form action="/beet/updateab">
<table id="selecta">
<tr><th>휴 학 신 청 내 역</th><th colspan="4"><button onclick="javascript:location.href='/beet/selectaba?value=a'">조 회</button></th></tr>
<tr><th>신청번호</th><th>학번</th><th>신청일</th><th>취소가능날짜</th><th>승인여부</th></tr>

<% for(Absence ab : list){ %>
<tr><td><input type="radio" name="requestid" readonly value="<%=ab.getRequestid()%>"><%=ab.getRequestid()%></td>
	<td><input type="text" name="id" readonly value="<%= ab.getStudentid()%>"><%=ab.getStudentid() %></td>
	<td><%=ab.getRequestdate() %></td>
	<td><%=ab.getLimitcanceldate() %></td>
	<td><input type="text" name="approval" readonly value="<%= ab.getApproval()%>"><%=ab.getApproval()%></td>
</tr>
<tr><td><input type="submit" value="승인하기"></td></tr>
<% } %>

<form action="/beet/updateab">
<table id="selectb">
<tr><th>복 학 신 청 내 역</th><th colspan="4"><button onclick="javascript:location.href='/beet/selectaba?value=b'">조 회</button></th></tr>
<tr><th>신청번호</th><th>학번</th><th>신청일</th><th>취소가능날짜</th><th>승인여부</th></tr>
<% for(Absence ab : list){ %>
<tr><td><input type="radio" name="requestid" value=<%=ab.getRequestid()%>><%=ab.getRequestid()%></td>
	<td><%=ab.getStudentid() %></td>
	<td><%=ab.getRequestdate() %></td>
	<td><%=ab.getLimitcanceldate() %></td>
	<td><input type="text" name="approval" value="<%= ab.getApproval()%>"><%=ab.getApproval()%></td>
</tr>
<tr><td><input type="submit" value="승인하기"></td></tr>
<% } %>
<% } %>
</table>
</form>
<br><br><br><br><br>
<form action="/beet/deleteab" method="post">
<table id="selectb">
<tr><th colspan="5">휴 학, 복 학 신 청 내 역</th></tr>
<tr><th>신청번호</th><th>학번</th><th>신청일</th><th>취소가능날짜</th><th>승인여부</th></tr>
<% if(list != null){ %>

</table>
</form>

<form action="/beet/deleteab">
<table id="selectb">
<tr><th>휴 학,  복 학 신 청 내 역</th><th colspan="4"><button onclick="javascript:location.href='/beet/selectaball'">조 회</button></th></tr>
<tr><th>신청번호</th><th>학번</th><th>신청일</th><th>취소가능날짜</th><th>승인여부</th></tr>

<% for(Absence ab : list){ %>
<tr><td><input type="radio" name="requestid" value=<%=ab.getRequestid()%>><%=ab.getRequestid()%></td>
	<td><%=ab.getStudentid() %></td>
	<td><%=ab.getRequestdate() %></td>
	<td><input type="text" name="canceldate" value="<%= ab.getLimitcanceldate()%>"><%=ab.getLimitcanceldate() %></td>
	<td><%=ab.getApproval()%></td>
</tr>
<tr><td><input type="submit" value="삭제하기"></td></tr>

<% } %>

<% } %>
</table>
</form> --%>

</div>
</body>
</html>