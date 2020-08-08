<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,lecture.model.vo.Lecture" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
td{
border : 1px solid skyblue;
}
</style>
</head>
<body>
<% if(session.getAttribute("loginMember") == null ){ %>
<h1>비회원 상태입니다.</h1>
<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% }else{ %>

<h1>수강신청</h1>
<hr>
<h2>현재 열린 강의 목록</h2>
<table style="border:2px solid black;">
<tr>
<th>
강의코드
</th>
<th>
강의명
</th>
<th>
강의 카테고리
</th>
<th>
수강인원
</th>
<th>
강의 내용
</th>
<th>
강의시간
</th>
<th>
교수아이디
</th>
<th>
강의실
</th>
</tr>
<% ArrayList<Lecture> list = (ArrayList<Lecture>)request.getAttribute("list");  %>
<% for(Lecture l : list){ %>
<tr>
<td>
<%= l.getLcode() %>
</td>
<td>
<%= l.getLname() %>
</td>
<td>
<%= l.getCategory() %>
</td>
<td>
<%= l.getCapacity() %>
</td>
<td>
<%= l.getLtime() %>
</td>
<td>
<%= l.getProfessorid() %>
</td>
<td>
<%= l.getRoom() %>
</td>
<td>
<button onclick="javascript:location.href='/beet/lapply?lname=<%= l.getLname() %>'">신청</button>
</td>
</tr>
<% } %>
</table>

<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% } %>
</body>
</html>