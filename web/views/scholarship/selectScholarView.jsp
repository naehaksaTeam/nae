<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, scholarship.model.vo.Scholarship, ssbenefitst.model.vo.Ssbenefitst,
				  student.model.vo.Member" %>    
<%
	ArrayList<Ssbenefitst> stlist = (ArrayList<Ssbenefitst>)request.getAttribute("listssst");
	ArrayList<Scholarship> list = (ArrayList<Scholarship>)request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
<style type="text/css">
.tg {
display:inline-block; 
	border-collapse: collapse;
	border-spacing: 0;
	border-color: inherit;
	text-align: left;
	vertical-align: top;
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
	font-weight: bolder;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}
</style>
</head>
<body>
<header>
<%@ include file="/views/common/header.jsp" %>
</header>
<%@ include file="/views/common/side.jsp" %>

<div align="center" >
<%-- <button onclick="javascript:location.href='/beet/selectbenest?studentid=<%=m.getId()%>'">나의 장학금 조회</button> --%>
<h1 ><%=mm.getName()%>님의 장학금 조회</h1>
<table class="tg">

<% if(stlist.size() != 0){ %>
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
<h1>장학금 전체 조회</h1>
<table class="tg">
<tr><th>장학금명</th><th>수혜조건</th><th>장학금액</th></tr>
<% if(list != null){ %>
	<% for(Scholarship ss : list){ %>
	<tr><th><%=ss.getSsname() %></th><td><%= ss.getBenefitcon() %></td><td><%= ss.getValue() %></td> </tr>
	<% } %>
<% } %>
</table>
<br><br><br>
</div>

<footer>
<%@ include file="/views/common/footer.jsp" %>
</footer>
</body>
</html> 