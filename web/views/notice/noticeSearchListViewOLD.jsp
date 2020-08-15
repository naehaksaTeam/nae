<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList , notice.model.vo.Notice"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>깔깔깔</title>
<script type="text/javascript">
	function noticeInsertForm() {
		location.href = "/beet/views/notice/noticeInsertView.jsp";
	}
</script>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<h2 align="center"></h2>
	<hr>
	<h1 align="center">공지사항</h1>
	<br>
	

	<div align="center">
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>

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
				%> 
				<%=n.getNoticeTitle().substring(0, 10)%> <%
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
				%> <a href="/beet/ndetail?noticeno=<%=n.getNoticeNo()%>"><%=n.getNoticeContent().substring(0, 15)%></a>
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
 %> x <%
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
	<div  align="center" >
		<button onclick="noticeInsertForm();">글쓰기</button>
		<button onclick="javascript:history.go(-1);">뒤로</button>
	</div>
	<hr>
	<br>
	<div align="center">
	<form action="/beet/nsearch">
		<select name="searchoption">
			<option value="no">글번호</option>
			<option value="writer">작성자</option>

			<option value="content">글내용</option>
		</select> <input type="text" name="search">
		<button type="submit" value="로그인">검색</button>

	</form>
</div>
	
</body>
</html>