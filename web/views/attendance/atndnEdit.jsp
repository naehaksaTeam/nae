<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //import하고 객체 불러오기 memberupdate 참고 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h1>출결입력페이지</h1>
<form method="post" action="/beet/atninsert">
<button>출결입력</button>
</form>
<form method="post" action="/beet/atnupdate">
<button>출결수정</button>
</form>
<form method="post" action="/beet/atndelete">
<button>출결삭제</button>
</form>
	<input type="submit" value="수정하기"> &nbsp; 
		<input type="reset" value="수정취소"> &nbsp;
		<a href="javascript:history.go(-1);">이전 페이지</a>
		<a href="/beet/index.jsp">시작 페이지</a>
</body>
</html>