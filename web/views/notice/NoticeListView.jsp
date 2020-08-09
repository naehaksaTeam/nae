<!--  일반회원용 공지사항첫페이지  
 번호 , 제목, 작성자, 첨부파일 , 날짜 , 게시글
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList , notice.model.vo.Notice"%>

<%
ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
int listCount = ((Integer)request.getAttribute("listCount")).intValue();
int startPage = ((Integer)request.getAttribute("startPage")).intValue();
int endPage = ((Integer)request.getAttribute("endPage")).intValue();
int maxPage = ((Integer)request.getAttribute("maxPage")).intValue();
int currentPage = ((Integer)request.getAttribute("currentPage")).intValue();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
<script type="text/javascript">
function showWriteForm(){
	location.href = "/beet/views/notice/noticeWriteForm.jsp";
}

</script>
</head>
<body>
<h2 align="center">게시글 목록 : 총 <%= listCount %>개</h2>
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
<td>
  <% if(n.getNoticeTitle().length() >5){ %>
	  <a href="/beet/ndetail?noticeno=<%= n.getNoticeNo() %>"><%= n.getNoticeTitle().substring(0,10) %></a>  
	<% }else{%>
	  <a href="/beet/ndetail?noticeno=<%= n.getNoticeNo() %>"><%= n.getNoticeTitle() %></a> 
	<% }%> 

</td>


<td><%= n.getNoticeWriter() %></td>
<td><%= n.getNoticeDate() %></td>
<td>
<% if(n.getNoticeContent().length() >20){ %>
	  <a href="/beet/ndetail?noticeno=<%= n.getNoticeNo() %>"><%= n.getNoticeContent().substring(0,20) %></a>  
	<% }else{%>
	  <a href="/beet/ndetail?noticeno=<%= n.getNoticeNo() %>"><%= n.getNoticeContent() %></a> 
	<% }%> 

</td>
<td>
	<% if(n.getOriginalFile() !=null){ %>
		<%= n.getOriginalFile() %>
	<%}else{ //첨부파일 없을때  %>
		&nbsp;
	<% } %>
</td>

<td><%= n.getNoticeReadCount() %></td> 


<% } %>
</tr>
</table>
<div style="text-align:center;">
<% if(currentPage == 1){ %>
	맨처음 &nbsp;
<%  }else{ %>
	<a href="/beet/nlist?page=1">맨처음</a>
<%  } %>


<!--  이전 그룹으로 이동 처리  -->
<!--  35-10 = 25 -->
<% if((currentPage) >startPage && (currentPage ) >1){ %>
<a href="/beet/nlist?page=<%= currentPage-1 %>">☜</a>
<%  }else{ %>
	☜ &nbsp;
<%    } %>


<!--  현재 페이지가 속한 페이지그룹의 숫자 출력 처리 -->
<% for(int p= startPage; p <= endPage; p++){ %>
	<% if(p == currentPage){  %>
	<font color="blue" size="3"><b><%= p %></b></font>
	<% }else{ %>
	<a href="/beet/nlist?page=<%= p%>"><%= p %></a>
	<% } %>
<%   } %>


<!--  다음 그룹으로 이동 처리  -->
<% if(currentPage < endPage && (currentPage ) < maxPage){ %>
	<a href="/beet/nlist?page=<%= currentPage+1 %>">☞</a>
<% }else{ %>
	☞ &nbsp;
<%   } %>


<% if(currentPage >= maxPage){ %>
	마지막 &nbsp;
<%   }else{ %>
	<a href="/beet/nlist?page=<%= maxPage %>">마지막</a>
<%   } %>
</div>
<div style=align:center, text-align:center>
	<button onclick="showWriteForm();">글쓰기</button>
	</div>
<hr>
<%@include file="/views/common/footer.jsp" %>
</body>
</html>