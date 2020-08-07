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

<!-- 세션 아래 인클루드코드 복사해서 쓰세요! -->
<%@ include file="/views/common/sessionChk.jsp" %>


<button onclick="javascript:location.href='views/lecture/menu.jsp'">수강신청 메뉴테스트</button>
<button onclick="javascript:location.href='views/attendance/sub4main.jsp'">출결 목록 테스트</button>
<button onclick="javascript:location.href='views/absence/absenceRequestView.jsp'">학생신청페이지</button>
<button onclick="javascript:location.href='views/notice/NoticeListView.jsp'">공지사항</button>
</body>
</html>