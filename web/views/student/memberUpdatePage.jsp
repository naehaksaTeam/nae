<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.model.vo.Member" %>
<%
	Member member = (Member)session.getAttribute("loginMember");
	
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
	<th>아이디</th>
	<td><input type="text" name="userid" value="<%= member.getId() %>" readonly></td>
</tr>

<tr>
	<th width="120">이 름</th>
	<td><input type="text" name="username" value="<%= member.getName() %>" readonly></td>
</tr>

<tr>
	<th>주민등록번호</th>
	<td><input type="name" name="username" value="<%= member.getSsn() %>" readonly></td>
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
	<th>주소</th>
	<td><input type="address" name="useraddress" value="<%= member.getAddress() %>"></td>
</tr>

<tr>
	<th>전화번호</th>
	<td><input type="tel" name="phone" value="<%= member.getPhone() %>"></td>
</tr>

<tr>
	<th>성별</th>
	<td><input type="gender" name="usergender" value="<%= member.getGender() %>"></td>
</tr>

<tr>
	<th>이메일</th>
	<td><input type="email" name="email" value="<%= member.getEmail() %>"></td>
</tr>

<tr>
	<th>나의보물1호</th>
	<td><input type="treasure" name="treasure" value="<%= member.getTreasure() %>"></td>
</tr>

<tr>
	<th>입사일</th>
	<td><input type="adminhiredate" name="adminhiredate" value="<%= member.getAdminhiredate() %>"></td>
</tr>


<tr>
	<th>입학일</th>
	<td><input type="entrancedate" name="entrancedate" value="<%= member.getEntrancedate() %>"></td>
</tr>

<tr>
	<th>휴학여부</th>
	<td><input type="absencewhether" name="absencewhether" value="<%= member.getAbsencewhether() %>"></td>
</tr>

<tr>
	<th>휴학횟수</th>
	<td><input type="absencecount" name="absencecount" value="<%= member.getAbsencecount() %>"></td>
</tr>

<tr>
	<th>장학금이름</th>
	<td><input type="ssname" name="ssname" value="<%= member.getSsname() %>"></td>
</tr>

<tr>
	<th>계열이름</th>
	<td><input type="category" name="usercategory" value="<%= member.getCategoryname() %>"></td>
</tr>

<tr>
	<th>학과번호</th>
	<td><input type="major" name="major" value="<%= member.getMajorno() %>"></td>
</tr>

<tr>
	<th colspan="2">
		<a href="javascript:history.go(-1);">이전 페이지로 이동</a> &nbsp; 
		<input type="submit" value="수정하기"> &nbsp; 
		<input type="reset" value="수정취소"> &nbsp; 	
		<input type="submit" value="회원탈퇴">	
		<a href="index.jsp">시작 페이지로</a>
	</th>	
</tr>
</table>
</form>
&nbsp; 

<hr>
<!-- 상대경로만 사용 가능함 -->

</body>
</html>