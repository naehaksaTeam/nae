<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="scholarship.model.vo.Scholarship, java.util.ArrayList"%>
<%
	ArrayList<Scholarship> list = (ArrayList<Scholarship>)request.getAttribute("list");
	String message = (String)request.getAttribute("message");
%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
<style type="text/css">
.tg {
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
<%@ include file="../common/header.jsp"%>
</header>
<div align="center">
<h1>장학금 관리 페이지</h1>
<% if(message != null){ %>
	message
<% } %>
<button onclick="javascript:location.href='/beet/selectss'">장학금 조회</button>
<form>
<table class="tg">
<tr><th colspan="3">장학금 조회</th></tr>
<% if(list != null){ %>
	<% for(Scholarship ss : list){ %>
	<tr><th><input type="radio" name="ssname" value="<%=ss.getSsname()%>">장학금명</th><td>수혜조건</td><td>장학금액</td>
	<tr><th><%=ss.getSsname() %></th><td><%= ss.getBenefitcon() %></td><td><%= ss.getValue() %></td> </tr>
	<% } %>
<% } %>
</table>
	<input type="submit" value="삭제하기" onclick="javascript: ssform.action='/beet/deletess'">
	<input type="submit" value="수정하기" onclick="javascript: ssform.action='/beet'">
</form>

<br><br><br><br>

<form method="post" name="ssform">
<table class="tg">
<tr><th colspan="3">수정테이블</th> </tr>
<% if(list != null){ %>
	<% for(Scholarship ss : list){ %>
	<tr>
		<th><input type="radio" name="originname" value="<%=ss.getSsname() %>">
			<input type="text" name="ssname"><%=ss.getSsname() %>
		</th>
		<td><%=ss.getBenefitcon() %></td>
		<td><input type="number" name="value"><%=ss.getValue() %></td>
	</tr>
	<% } %>
	<tr><td colspan="3"><input type="submit" value="장학금 수정"></td></tr>
<% } %>
</table>
	<input type="submit" value="삭제하기" onclick="javascript: ssform.action='/beet'">
	<input type="submit" value="삭제하기" onclick="javascript: ssform.action='/beet'">
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