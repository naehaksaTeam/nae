<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="scholarship.model.vo.Scholarship, java.util.ArrayList"%>
<%
	ArrayList<Scholarship> list = (ArrayList<Scholarship>)request.getAttribute("list");
%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
<header>
<%@ include file="../common/header.jsp"%>
</header>
<div align="center">
<h1>장학금 관리 페이지</h1>

<button onclick="javascript:location.href='/beet/selectss'">장학금 조회</button>
<table>
<tr><th colspan="3">장학금 조회</th></tr>
<% if(list != null){ %>
	<% for(Scholarship ss : list){ %>
	<tr><th><%=ss.getSsname() %></th><td><%= ss.getBenefitcon() %></td><td><%= ss.getValue() %></td> </tr>
	<% } %>
<% } %>
</table>


<br><br><br><br>

<form action="/beet/deletess" method="post">
<table>
<tr><th colspan="3">삭제테이블</th></tr>
<% if(list != null){ %>
	<% for(Scholarship ss : list){ %>
	<tr><th><input type="radio" name="ssname" value="<%=ss.getSsname() %>"><%=ss.getSsname() %></th><td><%= ss.getBenefitcon() %></td><td><%= ss.getValue() %></td> </tr>
	<% } %>
	<tr><td colspan="3"><input type="submit" value="장학금 삭제"></td></tr>
<% } %>
</table>
</form>

<br><br><br><br>

<form action="/beet/updatess" method="post">

<table>
<tr><th colspan="3">수정테이블</th> </tr>
<% if(list != null){ %>
	<% for(Scholarship ss : list){ %>
	<tr>
		<th><input type="radio" name="originname" value="<%=ss.getSsname() %>"><input type="text" name="ssname"><%=ss.getSsname() %></th>
		<td><%=ss.getBenefitcon() %></td>
		<td><input type="number" name="value"><%=ss.getValue() %></td>
	</tr>
	<% } %>
	<tr><td colspan="3"><input type="submit" value="장학금 수정"></td></tr>
<% } %>
</table>

</form>

<br><br><br><br>

<!-- <form action="javascript:location.href='/beet/insertss'" method="post">
<table>
<tr><th colspan="2">추가테이블</th></tr>
<tr><th>장학금명</th><td><input type="text" name="ssname"></td></tr>
<tr><th>수혜조건</th><td><input type="text" name="benefitcon"></td></tr>
<tr><th>장학금액</th><td><input type="number" name="value"></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="장학금 추가"></td></tr>
</table>
</form> -->

</div>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</body>
</html>