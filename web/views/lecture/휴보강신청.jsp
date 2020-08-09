<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,lecture.model.vo.Rest,student.model.vo.Member" errorPage="../../views/common/error.jsp" %>
<% ArrayList<Rest> list = (ArrayList<Rest>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(session.getAttribute("loginMember") == null ){ %>
<h1>비회원 상태입니다.</h1>
<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% }else if(!((Member)session.getAttribute("loginMember")).getId().substring(0,1).equals("P") ||
		!((Member)session.getAttribute("loginMember")).getId().substring(0,1).equals("A") ){ %>
<h1>교수 또는 관리자 전용페이지입니다.</h1>
<hr>
<h2>이유 : 접근권한이 없음</h2>
<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% }else{ %>
<h1>휴보강신청페이지</h1>
<hr>

<table>


</table>

<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% } %>

</body>
</html>