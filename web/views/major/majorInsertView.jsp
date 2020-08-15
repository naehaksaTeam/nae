<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="major.model.vo.Major"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>껄껄</title>
</head>
<body>
<%@ include file="../common/header.jsp"%>
	<h1 align="center"> 등록 페이지</h1>
	
	
	<form action="/beet/minsert.ad" method="post">
		<div align="center">
		<table>
			<tr>
				<th>학과코드</th>
				<td><input type="text" name="no" ></td>
			</tr>
			<tr>
				<th>학과명</th>
				<td><input type="text" name="name"> </td>
			</tr>
			<tr>
				<th>정원</th>
				<td><input type="text" name="capacity" ></td>
			</tr>
			<tr>
				<th>등록금</th>
				<td><input type="text"  name="tuition"></td>
			</tr>
			<tr>
				<th>구분명</th>
				 <td><input type="text" name="category"></td> 
				
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="등록하기">
					&nbsp; <input type="reset" value="작성취소"> &nbsp; <input
					type="button" value="목록"
					onclick="javascript:history.go(-1); return false;"></th>
			</tr>
		</table>
		</div>
	</form>
	
	
</body>
</html>