<!--  일반회원용 공지사항첫페이지  
 번호 , 제목, 작성자, 첨부파일 , 날짜 , 게시글
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList , notice.model.vo.Notice"%>

<%
	ArrayList<Notice> list = (ArrayList<Notice>) request.getAttribute("list");
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
<title>test1</title>
<script type="text/javascript">
	function noticeInsertForm() {
		location.href = "/beet/views/notice/noticeInsertView.jsp";
	}
</script>
</head>
<style></style>
<body>
	<%@ include file="../common/header.jsp"%>
	
	<hr>
	<h1 align="center">학교소식</h1>
	<h2 align="center">
		전체 : 
		<%=listCount%>개
	</h2>
	<br>
	

<div align="center">
	<table>
		<tr>
			<th>번호</th>
			
			<th>글제목</th>

			<th>작성자</th>
			<th>작성날짜</th>
			<th>글내용</th>
			<th>첨부파일</th>
			<th>조회수</th>

		</tr>
		<%
			for (Notice n : list) {
		%>
		<tr>
			<td><%=n.getNoticeNo()%></td>
			
			<td>
				<%
					if (n.getNoticeTitle().length() > 10) {
				%> <%=n.getNoticeTitle().substring(0, 10)%>
				<%
					} else {
				%> <%=n.getNoticeTitle()%> <%
 	}
 %>

			</td>


			<td><%=n.getNoticeWriter()%></td>
			<td><%=n.getNoticeDate()%></td>
			<td>
				<%
					if (n.getNoticeContent().length() > 15) {
				%> <a
				href="/beet/ndetail?noticeno=<%=n.getNoticeNo()%>"><%=n.getNoticeContent().substring(0, 15)%></a>
				<%
					} else {
				%> <a href="/beet/ndetail?noticeno=<%=n.getNoticeNo()%>"><%=n.getNoticeContent()%></a>
				<%
					}
				%>

			</td>
			<td>
				<%
					if (n.getOriginalFile() != null) {
				%> <%=n.getOriginalFile()%> <%
 	} else { //첨부파일 없을때
 %>
				x <%
 	}
 %>
			</td>

			<td><%=n.getNoticeReadCount()%></td>


			<%
				}
			%>
		</tr>
	</table>
	<br>
	</div>
	<div style="text-align: center;">
		<%
			if (currentPage == 1) {
		%>
		맨처음 &nbsp;
		<%
			} else {
		%>
		<a href="/beet/nlist?page=1">맨처음</a>
		<%
			}
		%>


		<!--  이전 그룹으로 이동 처리  -->
		<!--  35-10 = 25 -->
		<%
			if ((currentPage) > startPage && (currentPage) > 1) {
		%>
		<a href="/beet/nlist?page=<%=currentPage - 1%>">☜</a>
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
		<a href="/beet/nlist?page=<%=p%>"><%=p%></a>
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
		<a href="/beet/nlist?page=<%=currentPage + 1%>">☞</a>
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
		<a href="/beet/nlist?page=<%=maxPage%>">마지막</a>
		<%
			}
		%>
	</div>
	<br>
	<!--  만일 관리자라면 글쓰기가 보여야함 ! 지금은 누구나다보임 -->
	<div align="center">
		<% if(((Member)session.getAttribute("loginMember")).getId().substring(0,1).equals("A")){ %>
		<button onclick="noticeInsertForm();">글쓰기</button>
	<% }else{ %>
		
	<% } %>
		
		<button onclick="javascript:location.href='views/main/main.jsp'">뒤로</button>
	</div>
	<hr>
	<br>
	<div align="center">
	<form action="/beet/nsearch">
		<select name="searchoption">

			<option value="writer">작성자</option>
			<option value="date">작성날짜</option>
			<option value="content">글내용</option>
		</select> <input type="text" name="search">
		<button type="submit" value="로그인">검색</button>

	</form>
</div>
	
</body>
</html>