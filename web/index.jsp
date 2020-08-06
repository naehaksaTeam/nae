<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
<h1>내학사 입장 페이지</h1>
<hr>
<form action="로그인 서블릿 경로">
아이디:<input type=text>
비밀번호:<input type=password>
<br>학생<input type="radio">
교수<input type="radio">
관리자<input type="radio">
<br><button type="submit" value="로그인">로그인</button>
</form>
<hr>
<button onclick="javascript:location.href='views/lecture/menu.jsp'">수강신청 메뉴테스트</button>
<button onclick="javascript:location.href='views/attendance/atndnList.jsp'">출결 목록 테스트</button>
</body>
</html>