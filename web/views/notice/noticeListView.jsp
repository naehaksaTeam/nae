<!--  일반회원용 공지사항첫페이지  
 번호 , 제목, 작성자, 첨부파일 , 날짜 , 게시글
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList , notice.model.vo.Notice"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
</head>
<body>

<hr>
<h1 align="center">공지사항</h1>
<br>
<table align="center" width="500" border="1" cellspacing="0" cellpadding="1">
<tr>
<th>번호</th>
<th>제목</th>

<th>작성자</th>
<th>작성날짜</th>
<th>글내용</th>
<th>첨부파일</th>
<th>조회수</th>
</tr>
<% for(Notice n : list){ %>
<tr>
<td><%= n.getNoticeNo() %></td>
<td><a href="/beet/ndetail?noticeno=<%= n.getNoticeNo() %>"><%= n.getNoticeTitle() %></td>

<td><%= n.getNoticeWriter() %></td>
<td><%= n.getNoticeDate() %></td>
<td><%= n.getNoticeContent() %></td>
<td>
	<% if(n.getOriginalFile() !=null){ %>
		◎
	<%}else{ //첨부파일 없을때  %>
		&nbsp;
	<% } %>
</td>

<td><%= n.getNoticeReadCount() %></td> 


<% } %>
</tr>
</table>

</body>
</html>