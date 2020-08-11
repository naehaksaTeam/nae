<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.model.vo.Member" isErrorPage="false" %>
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
<br><button type="submit" value="로그인">로그인</button>
</form>
<% }else{ %>
<div>
<%=m.getName() %> 님 로그인 상태입니다
<br>
<button onclick="javascript: location.href='/beet/views/main/main.jsp'">메인페이지</button>
</div>
<% } %>
</body>
</html>
