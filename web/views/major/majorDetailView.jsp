<!--  
관리자용 상세보기 : 공지사항에서 제목을 누르면 넘어가는페이지 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="major.model.vo.Major"%>
<%
	Major major = (Major) request.getAttribute("major");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test10</title>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<hr>


	<br>
	<table align="center" width="500" border="1" cellspacing="0">
		<tr>
			<th>학과</th>
			<td><%=major.getMajorno()%></td>
		</tr>
		<tr>
			<th>학과명</th>
			<td><%=major.getMajorname()%></td>
		</tr>
		<tr>
			<th>정원</th>
			<td><%=major.getCapacity()%></td>
		</tr>
		<tr>
			<th>등록금</th>
			<td>
			<%=major.getTuition() %>
			</td>
		</tr>
		<tr>
			<th>구분명</th>
			<td>
			<%=major.getCategoryname() %>
			</td>
		</tr>

		
	</table>

	<div style align="center">
		<button onclick="javascript:history.go(-1);">뒤로</button>
		<!--  관리자일때 아닐때 구분해서 표기해야함 관리자면 보이고 아니면 안보임  -->
		<button
			onclick="javascript:location.href='/beet/majorupdate.ad?majorno=<%=major.getMajorno()%>';">수정</button>
		<button
			onclick="javascript:location.href='/beet/majordelete.ad?majorno=<%=major.getMajorno()%>';">삭제</button>
	</div>
	<%@include file="/views/common/footer.jsp"%>
</body>
</html>