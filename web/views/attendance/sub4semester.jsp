<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="termScore.model.vo.TermScore, student.model.vo.Member, lectureScore.model.vo.LectureScore " %>
<%@ include file="/views/common/sessionChk.jsp" %>
<% Member loginmember = (Member)session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>semester 값 받아서 쓰는 조회 모음 </h1>

 <form action="/beet/lsselect" method="post">
 <input type="hidden" name="userid" value="<%=loginmember.getId() %>">
 <input type ="text" name="semester" value="<%=  %>>">
  <input type="submit" value="과목성적조회">
  </form> 
  
</body>
</html>