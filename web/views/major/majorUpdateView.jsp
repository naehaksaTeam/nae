<!--  관리자용 수정페이지  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="major.model.vo.Major"%>
<%
	Major major = (Major) request.getAttribute("major");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
</head>
<body>
	<%@include file="../common/header.jsp"%>

	<hr>
	<h1 align="center">수정페이지</h1>
	<br>
	
	<form action="/beet/majorupdate.ad1" method="post">
		
		<input type="hidden" name="majorno" value="<%=major.getMajorno()%>">
		<table align="center" width="500" border="1" cellspacing="0">
			<tr>
				<th>학과코드</th>
				<td><input type="text" name="majorno" readonly
					value="<%=major.getMajorno()%>"></td>
			</tr>
			<tr>
				<th>학과명</th>
				<td><input type="text" name="majorname" 
					value="<%=major.getMajorname()%>"></td>
			</tr>

			
			<tr>
				<th>정원</th>
				<td><input type="number" name="capacity"
				value="<%=major.getCapacity()%>"></td>
			</tr>
			<tr>
				<th>등록금</th>
				<td><input type="number" name="tuition"
				value="<%=major.getTuition()%>"></td>
			</tr>
			<tr>
				<th>구분명</th>
				<td><input type="text" name="categoryname" readonly
				value="<%=major.getCategoryname()%>"></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="수정하기">
					&nbsp; <input type="reset" value="수정취소"> &nbsp; <input
					type="button" value="이전 페이지로"
					onclick="javascript:history.go(-1); return false;"></th>
			</tr>
		</table>
	</form>
	
</body>
</html>