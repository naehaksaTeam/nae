<!--  
관리자용 상세보기 : 공지사항에서 제목을 누르면 넘어가는페이지 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="notice.model.vo.Notice"%>
<%
	Notice notice = (Notice) request.getAttribute("notice");
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
	<h1 align="center">상세보기</h1>

	<br>
	<div align="center">
	<table>
		<tr>
			<th>제 목</th>
			<td><%=notice.getNoticeTitle()%></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=notice.getNoticeWriter()%></td>
		</tr>
		<tr>
			<th>등록날짜</th>
			<td><%=notice.getNoticeDate()%></td>
		</tr>
		<tr>
			<th>첨부파일 : </th>
			<td>
				<%
					if (notice.getOriginalFile() != null) {
				%> <a
				href="/beet/nfiledown?ofile=<%=notice.getOriginalFile()%>&rfile=<%=notice.getRenameFile()%>"><%=notice.getOriginalFile()%></a>
				<%
					} else {
				%> &nbsp; <%
 	}
 %>
			</td>
		</tr>

		<tr>
			<th>내 용</th>
			<td><%=notice.getNoticeContent().replaceAll("\r\n", "<br>")%></td>
		<tr>

	</table>
 </div>
	<div  align="center">
		<button onclick="javascript:history.go(-1);">뒤로</button>
		<!--  관리자일때 아닐때 구분해서 표기해야함 관리자면 보이고 아니면 안보임  -->
		<% if(((Member)session.getAttribute("loginMember")).getId().substring(0,1).equals("A")){ %>
			<button
			onclick="javascript:location.href='/beet/nupdate.ad1?noticeno=<%=notice.getNoticeNo()%>';">수정</button>
		<button
			onclick="javascript:location.href='/beet/ndelete.ad?noticeno=<%=notice.getNoticeNo()%>';">삭제하기</button>
	<% }else{ %>
		
	<% } %>
		
		
	</div>
	
</body>
</html>