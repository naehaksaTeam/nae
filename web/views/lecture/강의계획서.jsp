<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,lecture.model.vo.Lecture" errorPage="../../views/common/error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{

}
td,tr{
border : 1px solid black;

}
table{
text-align : center;
background-color : white;
}
</style>
</head>
<body>
<% if(session.getAttribute("loginMember") == null ){ %>
<h1>비회원 상태입니다.</h1>
<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% }else{ %>
<h1>강의계획서 페이지</h1>
<hr>
<table style="border:2px solid black;">
<tr>
<th>
&nbsp;강의코드&nbsp;
</th>
<th>
&nbsp;강의명&nbsp;
</th>
<th>
&nbsp;강의 카테고리&nbsp;
</th>
<th>
&nbsp;수강 정원&nbsp;
</th>
<th>
&nbsp;강의 내용&nbsp;
</th>
<th>
&nbsp;강의시간&nbsp;
</th>
<th>
&nbsp;강의교수&nbsp;
</th>
<th>
&nbsp;강의실&nbsp;
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
<%= l.getContent() %>
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
</tr>
<% } %>
</table>

<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% } %>
</body>
</html>