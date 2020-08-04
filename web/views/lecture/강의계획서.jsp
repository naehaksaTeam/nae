<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,lecture.model.vo.Lecture" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
text-align : center;
}
</style>
</head>
<body>

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

</body>
</html>