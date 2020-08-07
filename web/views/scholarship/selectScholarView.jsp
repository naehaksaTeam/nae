<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, scholarship.model.vo.Scholarship, ssbenefitst.model.vo.Ssbenefitst" %>    
<%
	ArrayList<Ssbenefitst> stlist = (ArrayList<Ssbenefitst>)request.getAttribute("list");

	ArrayList<Scholarship> list = (ArrayList<Scholarship>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
학생은 장학금만 조회
<div>
<h1 align="center">내가받은 장학금 조회</h1>
<button onclick="javascript:location.href='/beet/selectbenest'" value="나의 장학금 조회">
<table>
ssbenefitst에서 select(studentid) 수혜학기로 desc해서 보여주기
<tr><th>수혜학기</th><th>장학금명</th></tr>
<% for(Ssbenefitst ssst : stlist){%>
<tr><td><%=ssst.getBenefitterm()%></td><td><%=ssst.getSsname() %></td></tr>
<% } %>
</table>
</div>

<div>
<h1 align="center">장학금 전체 조회</h1>
<button onclick="javascript:location.href='/beet/selectss'" value="장학금 조회">
<table>
<tr><th>장학금명</th><th>수혜조건</th><th>수혜금액</th></tr>
<% for(Scholarship ss : list){ %>
<tr><td><%=ss.getSsname()%></td><td><%=ss.getBenefitcon()%></td><td><%=ss.getValue() %></td></tr>
<% } %>
</table>
</div>
</body>
</html> 