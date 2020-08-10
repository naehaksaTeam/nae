<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type ="text/css">
</style>
<meta charset="UTF-8">
<title>dropbar test</title>


</head>
<body>
<form action="/beet/nsearch">
<select name="searchoption">
	
    <option value="writer">작성자</option>
    <option value="date">작성날짜</option>
    <option value="content">글내용</option>
    </select>
    <input type="text" name="search">
    <button type="submit" value="로그인">검색</button>
    </form>



</body>
</html>