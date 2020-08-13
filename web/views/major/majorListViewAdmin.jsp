<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList , major.model.vo.Major"%>

<%
	ArrayList<Major> list = (ArrayList<Major>) request.getAttribute("list");
	int listCount = ((Integer) request.getAttribute("listCount")).intValue();
	int startPage = ((Integer) request.getAttribute("startPage")).intValue();
	int endPage = ((Integer) request.getAttribute("endPage")).intValue();
	int maxPage = ((Integer) request.getAttribute("maxPage")).intValue();
	int currentPage = ((Integer) request.getAttribute("currentPage")).intValue();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>깔깔깔</title>
<script type="text/javascript">
	function majorInsertForm() {
		location.href = "/beet/views/major/majorInsertView.jsp";
	}
</script>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<h2 align="center">
		전공목록
		<%=listCount%>개
	</h2>
	<hr>
	<h1 align="center">전공조회</h1>
	<br>





	<table align="center" width="500" border="1" cellspacing="0"
		cellpadding="1">
		<tr>
			<th>학과코드</th>
			<th>학과명</th>

			<th>정원</th>
			<th>등록금</th>
			<th>구분명</th>
		</tr>
		<%
			for (Major m : list) {
		%>
		<tr>
			<td><%=m.getMajorno()%></td>
			<td><a href="/beet/mdetail?majorno=<%=m.getMajorno()%>"><%=m.getMajorname()%></a></td>
			
		<%-- 	<td><%=m.getMajorname()%></td> --%>


			<td><%=m.getCapacity()%></td>
			<td><%=m.getTuition()%></td>
			<td><%=m.getCategoryname()%></td>

			<%
				}
			%>
		</tr>
	</table>
	<div style="text-align: center;">
		<%
			if (currentPage == 1) {
		%>
		맨처음 &nbsp;
		<%
			} else {
		%>
		<a href="/beet/mlist.ad?page=1">맨처음</a>
		<%
			}
		%>


		<!--  이전 그룹으로 이동 처리  -->
		<!--  35-10 = 25 -->
		<%
			if ((currentPage) > startPage && (currentPage) > 1) {
		%>
		<a href="/beet/mlist.ad?page=<%=currentPage - 1%>">☜</a>
		<%
			} else {
		%>
		☜ &nbsp;
		<%
			}
		%>


		<!--  현재 페이지가 속한 페이지그룹의 숫자 출력 처리 -->
		<%
			for (int p = startPage; p <= endPage; p++) {
		%>
		<%
			if (p == currentPage) {
		%>
		<font color="blue" size="3"><b><%=p%></b></font>
		<%
			} else {
		%>
		<a href="/beet/mlist.ad?page=<%=p%>"><%=p%></a>
		<%
			}
		%>
		<%
			}
		%>


		<!--  다음 그룹으로 이동 처리  -->
		<%
			if (currentPage < endPage && (currentPage) < maxPage) {
		%>
		<a href="/beet/mlist.ad?page=<%=currentPage + 1%>">☞</a>
		<%
			} else {
		%>
		☞ &nbsp;
		<%
			}
		%>


		<%
			if (currentPage >= maxPage) {
		%>
		마지막 &nbsp;
		<%
			} else {
		%>
		<a href="/beet/mlist.ad?page=<%=maxPage%>">마지막</a>
		<%
			}
		%>




	</div>
	<!--  만일 관리자라면 글쓰기가 보여야함 ! 지금은 누구나다보임 -->
	<div style align="right" text-align:center>
	
	<% if(((Member)session.getAttribute("loginMember")).getId().substring(0,1).equals("A")){ %>
		<button onclick="majorInsertForm();">글쓰기</button>
	<% }else{ %>
		
	<% } %>
		<button onclick="javascript:history.go(-1);">뒤로</button>
	</div>
	<hr>
	<%@include file="/views/common/footer.jsp"%>

	</form>
</body>
</html>