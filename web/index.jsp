<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
 
<h1>내학사 입장 페이지</h1>
<hr>
<form action="/beet/login">
아이디:<input type=text>
비밀번호:<input type="password">
<br>학생<input type="radio" name="userchk">
교수<input type="radio" name="userchk">
관리자<input type="radio" name="userchk">
<br><button type="submit" value="로그인">로그인</button>
</form>
<hr>
<button onclick="javascript:location.href='views/lecture/menu.jsp'">수강신청 메뉴테스트</button>
<button onclick="javascript:location.href='views/attendance/sub4main.jsp'">출결 목록 테스트</button>
<button onclick="javascript:location.href='views/absence/absenceRequestView.jsp'">학생신청페이지</button>
</body>
</html>