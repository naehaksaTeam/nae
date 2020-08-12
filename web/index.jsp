
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.model.vo.Member" isErrorPage="false" %>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<% Member m = (Member)session.getAttribute("loginMember"); %>


<body>

<% if(m != null){ %>	
<meta http-equiv="refresh" content="0;url=/beet/views/main/main.jsp">
<% } %>
<!-- 세션 아래 인클루드코드 복사해서 쓰세요! -->
<%-- <%@ include file="/views/common/sessionChk.jsp" %> --%>
<% if(m == null){ %>
<form action="/beet/login.cp" method="post">
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