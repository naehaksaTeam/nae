<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.model.vo.Member" %>
<% Member m = (Member)session.getAttribute("loginMember"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(m == null){ %>
<form action="/beet/login.cp">
아이디:<input type="text" name="userid">
비밀번호:<input type="password" name="userpwd">
<br>학생<input type="radio" name="userchk" value="student">
교수<input type="radio" name="userchk" value="professor">
관리자<input type="radio" name="userchk" value="admin">
<br><button type="submit" value="로그인">로그인</button>
</form>
<% }else{ %>
<h1>로그인 정보 : <%= m.getId() %>, 이름 : <%= m.getName() %></h1>
<% } %>
<hr>
</body>
</html>