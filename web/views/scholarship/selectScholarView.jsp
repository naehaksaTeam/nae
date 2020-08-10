<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, scholarship.model.vo.Scholarship, ssbenefitst.model.vo.Ssbenefitst,
				  student.model.vo.Member" %>    
<%
	ArrayList<Ssbenefitst> stlist = (ArrayList<Ssbenefitst>)request.getAttribute("list");
	ArrayList<Scholarship> list = (ArrayList<Scholarship>)request.getAttribute("list");
	Member m = (Member)session.getAttribute("loginMember");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
<header>
<%@ include file="/views/common/header.jsp" %>
</header>

학생은 장학금만 조회
<div align="center">
<h1 >내가받은 장학금 조회</h1>
<button onclick="javascript:location.href='/beet/selectbenest?studentid=<%=m.getId()%>'" value="나의 장학금 조회">

<table>
<% if(stlist != null){ %>
<tr><th>수혜학기</th><th>장학금명</th></tr>
<% for(Ssbenefitst ssst : stlist){%>
<tr><td><%=ssst.getBenefitterm()%></td><td><%=ssst.getSsname() %></td></tr>
<% } %>
<% }else{ %>
<tr><td colspan="2">장학금수혜정보가 없습니다.</td></tr>
<% } %>
</table>
</div>

<div align="center">
<h1 >장학금 전체 조회</h1>
<button onclick="javascript:location.href='/beet/selectss'">장학금 조회</button>
<table>
<tr><th colspan="3">장학금 조회</th></tr>
<% if(list != null){ %>
	<% for(Scholarship ss : list){ %>
	<tr><th><%=ss.getSsname() %></th><td><%= ss.getBenefitcon() %></td><td><%= ss.getValue() %></td> </tr>
	<% } %>
<% } %>
</table>
</div>
<footer>
<%@ include file="/views/common/header.jsp" %>
</footer>
</body>
</html> 