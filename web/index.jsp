
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.model.vo.Member" isErrorPage="false" %>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<% Member m = (Member)session.getAttribute("loginMember"); %>

<head>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
img{
    position: absolute;
   height: 100%;
   
   background-color: rgba(0, 0, 0, 0.4);                                                                 
   z-index:-1;
}
.other{
position:relative;
float:right;
margin-right:5px;
}
.otherid{
margin-right:10%;
}
</style>
<body>
<img src="/beet/resources/images/school.jpg">
<br><br><br><br><br><br><br><br><br>
<% if(m != null){ %>	
<meta http-equiv="refresh" content="0;url=/beet/views/main/main.jsp">
<% } %>
<!-- 세션 아래 인클루드코드 복사해서 쓰세요! -->
<%-- <%@ include file="/views/common/sessionChk.jsp" %> --%>
<% if(m == null){ %>

<div class="container">
<form action="/beet/login.cp" method="post">
<div class="form-group">
<h1>ID<span style="color:white;">&nbsp;</span></h1><input type="text" name="userid" class="form-control" id="usr" required>
<h1 style="color:white;">PASSWORD<span style="color:black;">&nbsp;</span></h1><input type="password" name="userpwd" class="form-control" id="pwd" required>
<br><button type="submit" value="로그인" class="btn btn-dark">로그인</button>

</div>
</form>
</div>

<button onclick="javascript: location.href='/beet/views/student/findId.jsp'" class="btn btn-dark other otherid">아이디찾기</button>
<button onclick="javascript: location.href='/beet/views/student/findPassword.jsp'" class="btn btn-dark other">비밀번호찾기</button>
<button onclick="javascript: location.href='/beet/views/student/enrollPage.jsp'" class="btn btn-dark other">회원가입</button>
<% }else{ %>
<div>
<%=m.getName() %> 님 로그인 상태입니다
<br>
<button onclick="javascript: location.href='/beet/views/main/main.jsp'">메인페이지</button>

</div>
<% } %>

</body>
</html>