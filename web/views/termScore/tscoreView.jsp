<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="termScore.model.vo.TermScore, student.model.vo.Member " %>
<%@ include file="/views/common/sessionChk.jsp" %>
<% TermScore tscore = new TermScore(); 	
	Member member = (Member)session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:inherit;text-align:left;vertical-align:top}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
</style>
<form action="/beet/TermScoreSelectServlet" method="post">
<input type="hidden" name="id" value="<%= member.getId() %>">
</form>
<table class="tg">
<thead>
  <tr>
    <th>학번</th>
    <th>이름</th>
    <th>신청학점</th>
    <th>취득학점</th>
    <th>졸업이수학점</th>
    <th>평점평균</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td><%= tscore.getSid() %></td>
    <td><%= tscore.getSname() %></td>
    <td><%= tscore.getTermaplpoint() %></td>
    <td><%= tscore.getTermgetpoint() %></td>
    <td><%= tscore.getGrdpoint() %></td>
    <td><%= tscore.getTgpa() %></td>
  </tr>
</tbody>
</table>

<table class="tg">
<thead>
  <tr>
    <th> 학번</th>
    <th>이름</th>
    <th>신청학점</th>
    <th>취득학점</th>
    <th>평점평균</th>
    <th>백분위점수</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>


</body>
</html>