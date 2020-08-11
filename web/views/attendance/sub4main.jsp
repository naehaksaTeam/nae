<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
.btn-group button {
    background-color: #4CAF50;
    border: 1px solid green;
    color: white;
    padding: 10px 24px;
    cursor: pointer;
    float: left;
}

.btn-group:after {
    content: "";
    clear: both;
    display: table;
}

.btn-group button:not(:last-child) {
    border-right: none;
}

.btn-group button:hover {
    background-color: #3e8e41;
}
</style>

<body>

<h1>출결 성적 등록</h1>

<div class="세션대신 입력폼쓰는중" style="margin-bottom:50px;">
<form action="/beet/mylctr" method="get">
studentid  <input type="text" name="studentid">
<input type="submit" value="입력">
</form>
</div>

<div class="btn-group">
  <button onclick="javascript:location.href='/beet/mylctr'" >강의목록</button>
  <button onclick="javascript:location.href='/beet/atnlist'" >출결현황</button>
  <button onclick="javascript:location.href='/beet/atnedit'" >출결입력</button>
  <button onclick="javascript:location.href='/beet/atnlist'" >성적조회</button>
  <button onclick="javascript:location.href='/beet/atnlist'" >성적입력</button>
  <button>성적조회</button>
</div>

</body>
</html>