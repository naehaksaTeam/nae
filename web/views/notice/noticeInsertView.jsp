<%@page import="oracle.net.aso.n"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="notice.model.vo.Notice"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<h1 align="center">새 공지글 등록 페이지</h1>
	<!-- from에서 입력값들과 파일을 같이 전송하려면 반드시 enctype="multipart/form-data" 속성을 추가해야함 -->
	<form action="/beet/ninsert.ad" method="post"
		enctype="multipart/form-data">
		<table align="center" width="500" border="1" cellspacing="0"
			cellpadding="5">
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" size="50"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" value="<%-- <%=  %> --%>"></td>
			</tr>
			<tr>
				<th>파일 선택 :</th>
				<td><input type="file" name="ofile" multiple="multiple">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="5" cols="50" name="content"></textarea></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="등록하기">
					&nbsp; <input type="reset" value="작성취소"> &nbsp; <input
					type="button" value="목록"
					onclick="javascript:history.go(-1); return false;"></th>
			</tr>
		</table>
	</form>
</body>
</html>