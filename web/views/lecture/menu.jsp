<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청 메뉴 테스트 페이지</title>
</head>
<body>
<% if(session.getAttribute("loginMember") == null ){ %>
<h1>비회원 상태입니다.</h1>
<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% }else{ %>
<h1>수강신청 메뉴 테스트 페이지</h1>
<hr>
<%@ include file="/views/common/sessionChk.jsp" %>
<button onclick="javascript:location.href='/beet/showplan.ss'" >강의 계획서</button>
<button onclick="javascript:location.href='/beet/lapply?who=<%= m.getId() %>'" >수강신청</button>
<button onclick="javascript:location.href='/beet/showTimeTable?who=<%= m.getId() %>'" >시간표 조회</button>
<button onclick="javascript:location.href='/beet/showplan'" >휴보강신청(미구현)</button>
<button onclick="javascript:location.href='/beet/toapl'" >수강과목추가 [관리자]</button>
<button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<hr>
<img src="/beet/resources/images/BigBeet.jpg">
<% } %>
</body>
</html>