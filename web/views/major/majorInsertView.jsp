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
	<!-- from에서 입력값들과 파일을 같이 전송하려면 반드시 enctype="multipart/form-data" 속성을 추가해야함 -->
	<form action="/beet/minsert.ad" method="post">
		
		<table align="center" width="500" border="1" cellspacing="0"
			cellpadding="5">
			<tr>
				<th>학과코드</th>
				<td><input type="text" name="no" size="50"></td>
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
				 <td><input type="text" name="category">ㄱ</td> 
				
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="등록하기">
					&nbsp; <input type="reset" value="작성취소"> &nbsp; <input
					type="button" value="목록"
					onclick="javascript:history.go(-1); return false;"></th>
			</tr>
		</table>
	</form>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>