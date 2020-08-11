<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.model.vo.Member" %>
<%
	Member member = (Member)request.getAttribute("member");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
<hr>
<h1 align="center">마이페이지</h1>
<br>
<form method="post" action="/beet/mupdate">
<table id="outer" align="center" width="500" cellspacing="5" cellpadding="0">
<tr>
	<th width="120">이 름</th>
	<td><input type="text" name="username" value="<%= member.getName() %>" readonly></td>
</tr>
<tr>
	<th>아이디</th>
	<td><input type="text" name="userid" value="<%= member.getId() %>" readonly></td>
</tr>
<tr>
	<th>암 호</th>
	<td><input type="password" name="userpwd" id="userpwd" value="<%= member.getPassword() %>"></td>
</tr>
<tr>
	<th>암호확인</th>
	<td><input type="password" id="userpwd2"></td>
</tr>
<tr>
	<th>이름</th>
	<td><input type="name" name="username" value="<%= member.getName() %>"></td>
</tr>

<tr>
	<th>주민등록번호</th>
	<td><input type="name" name="username" value="<%= member.getName() %>" readonly></td>


</tr>

	<th>주소</th>
	<td><input type="address" name="useraddress" value="<%= member.getAddress() %>"></td>
</tr>

</tr>

	<th>전화번호</th>
	<td><input type="tel" name="phone" value="<%= member.getPhone() %>"></td>
</tr>

</tr>
	<th>계열이름</th>
	<td><input type="category" name="usercategory" value="<%= member.getCategoryname() %>"></td>
</tr>

</tr>
	<th>성별</th>
	<td><input type="gender" name="usergender" value="<%= member.getGender() %>"></td>
</tr>


<tr>
	<th>이메일</th>
	<td><input type="email" name="email" value="<%= member.getEmail() %>"></td>
</tr>

<tr>
	<th>나의보물1호</th>
	<td><input type="email" name="email" value="<%= member.getTreasure() %>"></td>
</tr>

<tr>
	<th colspan="2">
		<a href="javascript:history.go(-1);">이전 페이지로 이동</a> &nbsp; 
		<input type="submit" value="수정하기"> &nbsp; 
		<input type="reset" value="수정취소"> &nbsp; 		
		<a href="/beet/index.jsp">시작 페이지로</a>
	</th>	
</tr>
</table>
</form>
<hr>
<!-- 상대경로만 사용 가능함 -->

</body>
</html>